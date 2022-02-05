#ifndef SYS_CRASH_H
#define SYS_CRASH_H

#include <PR/ultratypes.h>

extern void fatal_printf(const char *fmt, ...);
extern void start_thread8(void);
extern void set_debug_fn(void (*)(void));
extern void start_new_debug_thread(void);
extern void func_800218E0(s32, s32, s32, s32, s32);
struct GObjCommon *func_80022368(s32 link, u32 arg1, s32 arg2);
void crash_printf(const char *fmt, ...);
void func_80023778(void (*)(void));

#endif /* SYS_CRASH_H */
