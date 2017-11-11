#ifndef LOG_H
#define LOG_H

#define LOG_LEVEL_ERROR    0
#define LOG_LEVEL_WARNING  1
#define LOG_LEVEL_INFO     2
#define LOG_LEVEL_DEBUG    3


void print_log(int level, const char *function, const char *format, ...);

#ifdef CONFIG_ENABLE_LOGGING
#define _print_log(level, ...) print_log(level, __FUNCTION__, __VA_ARGS__)
#else
#define _print_log(level, ...) do {} while(0)
#endif

#define print_dbg(...) _print_log(LOG_LEVEL_DEBUG, __VA_ARGS__)
#define print_info(...) _print_log(LOG_LEVEL_INFO, __VA_ARGS__)
#define print_warn(...) _print_log(LOG_LEVEL_WARNING, __VA_ARGS__)
#define print_err(...) _print_log(LOG_LEVEL_ERROR, __VA_ARGS__)

#endif /* LOG_H */
