#ifndef TEMP_SYSTEM_H
#define TEMP_SYSTEM_H

/* This is a temporary header catch all for all things in system.s */

#include <PR/ultratypes.h>
#include <PR/os.h>

extern void fatal_printf(const char *fmt, ...);
extern void maybe_setup_pi_handle(void);
extern void thread4(void *arg);
extern void thread6(void *arg);
extern void func_80006B80(void);
extern void start_thread8(void);
extern OSPiHandle *gPiHandle; // 80045040

void func_800044B4(s32);
void func_80004494(s32);

#endif /* TEMP_SYSTEM_H */
