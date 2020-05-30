#ifndef TEMP_SYSTEM_H
#define TEMP_SYSTEM_H

/* This is a temporary header catch all for all things in system.s */

#include <PR/ultratypes.h>
#include <PR/os.h>

// loadovl.h? or a generic overlay header?
struct Overlay {
    u32 romStart;
    u32 romEnd; //exclusive [romStart..romEnd)
    void *ramTextStart;
    void *ramTextStart2;
    void *ramDataStart;
    void *ramDataStart2;
    void *ramBssStart;
    void *ramBssStart2;
    void *ramBssEnd;
};

extern void fatal_printf(const char *fmt, ...);
extern void maybe_setup_pi_handle(void);
extern void ssb_create_dma_mq(void);
extern void ssb_rom_copy_no_writeback(u32 devAddr, void *ramAddr, u32 nbytes);
extern void thread3_scheduler(void *arg);
extern void thread4(void *arg);
extern void thread6(void *arg);
extern void func_80006B80(void);
extern void load_overlay(struct Overlay *ovl);
extern void start_thread8(void);
extern OSPiHandle *gPiHandle; // 80045040

#endif /* TEMP_SYSTEM_H */
