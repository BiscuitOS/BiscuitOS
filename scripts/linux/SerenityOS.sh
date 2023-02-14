#/bin/bash

set -e
# Establish SERENITYOS source code.
#
# (C) 2019.07.20 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=${1%X}
SERENITYOS_NAME=${2%X}
SERENITYOS_VERSION=${3%X}
SERENITYOS_AGC_SITE=${4%X}
SERENITYOS_GITHUB=${5%X}
SERENITYOS_PATCH=${6%X}
SERENITYOS_TARBOR=${SERENITYOS_NAME}.tar.gz
SERENITYOS_SRC=1
PROJ_NAME=${9%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
SERENITYOS_DIR=${OUTPUT}/SerenityOS
SERENITYOS_VERSION=BiscuitOS
CMAKE=cmake-3.16.0
CMAKE_BIN=${OUTPUT}/package/${CMAKE}/${CMAKE}/bin/cmake
TARBALL=gcc-11.1.0.tar.gz

## qemu SerenityOS Meta package RunSerenityOS.sh

mkdir -p ${SERENITYOS_DIR}
# Download source code 
if [ ! -f ${ROOT}/dl/${SERENITYOS_TARBOR} ]; then
  cd ${ROOT}/dl > /dev/null
  git clone ${SERENITYOS_GITHUB} ${SERENITYOS_NAME}
  tar -cf ${SERENITYOS_TARBOR} ${SERENITYOS_NAME}
  cd - > /dev/null
fi

if [ ! -f ${SERENITYOS_DIR}/version ]; then
  # Copy source code
  cp -rfa ${ROOT}/dl/${SERENITYOS_TARBOR} ${SERENITYOS_DIR}
  cd ${SERENITYOS_DIR} > /dev/null
  tar xf ${SERENITYOS_TARBOR}
  mv ${SERENITYOS_NAME}/* ./
  rm -rf ${SERENITYOS_TARBOR}
  rm -rf ${SERENITYOS_NAME}
  echo "BiscuitOS" > ${SERENITYOS_DIR}/version
  if [ -f ${ROOT}/dl/${TARBALL} ]; then
    mkdir -p ${SERENITYOS_DIR}/Toolchain/Tarballs
    cp -rfa ${ROOT}/dl/gcc-11.1.0.tar.gz ${SERENITYOS_DIR}/Toolchain/Tarballs
    cp -rfa ${ROOT}/dl/binutils-2.36.1.tar.gz ${SERENITYOS_DIR}/Toolchain/Tarballs
  fi
fi

# GCC Check
gcc --version | grep 11.1
if [ $? -ne 0 ]; then
  echo "Please update gcc/g++ version"
  echo "Do like this: (Ubuntu)"
  echo "sudo apt-get install -y libgtk-3-dev"
  echo "sudo add-apt-repository ppa:ubuntu-toolchain-r/test"
  echo "sudo apt-get update"
  echo "sudo apt-get install -y gcc-11 g++-11"
  echo "sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 80"
  echo "sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 80"
  echo "sudo update-alternatives --config gcc"
  echo " * 2            /usr/bin/gcc-11    80        manual mode"
  echo "sudo update-alternatives --config g++"
  echo " * 2            /usr/bin/g++-11    80        manual mode"
  echo "gcc --version"
  exit 1
fi
# Build CMAKE
cd ${OUTPUT}/package/${CMAKE} > /dev/null
if [ ! -d ${CMAKE} ]; then
  make download
  make tar
  make configure
  make -j4
elif [ ! -f ${CMAKE_BIN} ]; then
  make -j4
fi

# BuildIt
cd ${SERENITYOS_DIR}/Toolchain > /dev/null
[ ! -d ${SERENITYOS_DIR}/Build ] && ./BuildIt.sh
if [ ! -f ${ROOT}/dl/${TARBALL} ]; then
  cp -rfa ${SERENITYOS_DIR}/Toolchain/Tarballs/gcc-11.1.0.tar.gz ${ROOT}/dl/ 
  cp -rfa ${SERENITYOS_DIR}/Toolchain/Tarballs/binutils-2.36.1.tar.gz ${ROOT}/dl/ 
fi

mkdir -p ${OUTPUT}/NinjaCompare
cd ${OUTPUT}/NinjaCompare > /dev/null
if [ ! -f ${OUTPUT}/NinjaCompare/Kernel/Kernel ]; then
  [ -f ${ROOT}/dl/pci.ids.gz ] && cp -rf ${ROOT}/dl/pci.ids.gz ${OUTPUT}/NinjaCompare
  ${CMAKE_BIN} ${SERENITYOS_DIR} -G Ninja
  ninja install -j8
  [ ! -f ${ROOT}/dl/pci.ids.gz ] && cp -rf ${OUTPUT}/NinjaCompare/pci.ids.gz ${ROOT}/dl/
  # Modify Qemu
  Run_scripts=${SERENITYOS_DIR}/Meta/run.sh
  Run_scripts_default=${SERENITYOS_DIR}/Meta/run-default.sh
  cp -rf ${Run_scripts} ${Run_scripts_default} 
  echo "#!/bin/bash" > ${Run_scripts}
  echo "SERENITY_QEMU_BIN=${OUTPUT}/qemu-system/qemu-system/build/qemu-system-i386" >> ${Run_scripts}
  echo "" >> ${Run_scripts}
  cat ${Run_scripts_default} >> ${Run_scripts}
fi
ninja image

MF=${OUTPUT}/RunSerenityOS-on-BiscuitOS.sh
rm -rf ${MF}
DATE_COMT=`date +"%Y.%m.%d"`
cat << EOF >> ${MF}
#!/bin/bash

# Build system.
#
# (C) ${DATE_COMT} BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=${ROOT}
OUTPUT=${OUTPUT}
NINJA_DIR=${OUTPUT}/NinjaCompare
EOF

echo 'case $1 in' >> ${MF}
echo -e '\t"pack")' >> ${MF}
echo -e '\t\tcd ${NINJA_DIR}' >> ${MF}
echo -e '\t\tninja image' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"build")' >> ${MF}
echo -e '\t\tcd ${NINJA_DIR}' >> ${MF}
echo -e '\t\tninja install' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"run")' >> ${MF}
echo -e '\t\tcd ${NINJA_DIR}' >> ${MF}
echo -e '\t\tninja run' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e 'esac' >> ${MF}

chmod 755 ${MF}

MF=${OUTPUT}/README.md
RUNSCP_NAME=RunSerenityOS-on-BiscuitOS.sh
rm -rf ${MF}
cat << EOF >> ${MF}

#### Build SerenityOS

\`\`\`
cd ${OUTPUT}
./${RUNSCP_NAME} build
\`\`\`

#### Package SerenityOS

\`\`\`
cd ${OUTPUT}
./${RUNSCP_NAME} pack
\`\`\`

#### Run SerenityOS

\`\`\`
cd ${OUTPUT}
./${RUNSCP_NAME} run
\`\`\`
EOF

## Output directory
echo ""
[ "${BS_SILENCE}X" != "trueX" ] && figlet "SerenityOS on BiscuitOS"
echo "***********************************************"
echo "Output:"
echo -e "\033[31m ${OUTPUT} \033[0m"
echo ""
echo "SerenityOS Kernel:"
echo -e "\033[31m ${OUTPUT}/SerenityOS/Kernel \033[0m"
echo ""
echo "README:"
echo -e "\033[31m ${OUTPUT}/README.md \033[0m"
echo ""
echo "Blog:"
echo -e "\033[31m http://www.biscuitos.cn/blog/BiscuitOS_Catalogue/ \033[0m"
echo ""
echo "***********************************************"
