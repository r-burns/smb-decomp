#ifndef TEMP_SYSTEM_H
#define TEMP_SYSTEM_H

/* This is a temporary header catch all for all things in system.s */

#include <PR/ultratypes.h>
#include <PR/os.h>

// others
extern void fatal_printf(const char *fmt, ...);
extern void thread4(void *arg);
extern void func_80006B80(void);
extern void start_thread8(void);

#endif /* TEMP_SYSTEM_H */
