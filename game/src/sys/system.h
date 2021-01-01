#ifndef TEMP_SYSTEM_H
#define TEMP_SYSTEM_H

/* This is a temporary header catch all for all things in system.s */

#include <PR/ultratypes.h>
#include <PR/os.h>

// om.c ?
// BumpAllocBuffer?
struct DynamicBuffer {
    /* 0x00 */ u32 id;
    /* 0x04 */ void *poolStart;
    /* 0x08 */ void *poolEnd;
    /* 0x0C */ void *top;
}; // size == 0x10

extern void init_dynamic_buffer(struct DynamicBuffer *buf, s32 id, s32 size, s32 start);
extern void *alloc_from_dynamic_buffer(struct DynamicBuffer *buf, s32 size, s32 alignment);

// others
extern void fatal_printf(const char *fmt, ...);
extern void thread4(void *arg);
extern void func_80006B80(void);
extern void start_thread8(void);

#endif /* TEMP_SYSTEM_H */
