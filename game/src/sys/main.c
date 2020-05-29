#include <PR/ultratypes.h>
#include <PR/os.h>
#include <PR/rcp.h>
#include <PR/R4300.h>

extern OSThread D_80040CE0;
extern u8 D_80040E90[56];

extern s8 D_80044D40;
extern s8 D_80044D41;

extern void fatal_printf(const char *, ...);

OSThread *unref_80000460(void) {
    return &D_80040CE0;
}

u8 *unref_8000046C(void) {
    return D_80040E90;
}

void *unref_80000478(void) {
    return (void *)(0x00003400);
}

void check_sp_imem(void) {
    if (IO_READ(SP_IMEM_START) == 6103) {
        D_80044D40 = TRUE;
    } else {
        D_80044D40 = FALSE;
    }
}

void check_sp_dmem(void) {
    if (IO_READ(SP_DMEM_START) == (u32)-1) {
        D_80044D41 = TRUE;
    } else {
        D_80044D41 = FALSE;
    }
}

void fatal_thread_stack_overflow(s32 tid) {
    fatal_printf("thread stack overflow  id = %d\n", tid);

    while (TRUE) ;
}

