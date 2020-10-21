#include <PR/ultratypes.h>
#include <PR/os.h>
#include <PR/rcp.h>
#include <PR/R4300.h>
#include <macros.h>
#include <ssb_types.h>

#include "sys/main.h"
#include "sys/thread3.h"
#include "sys/system.h"
#include "loadovl/loader.h"

// libultra internal
void __osSetWatchLo(s32);

#define STACK_PROBE_MAGIC 0xFEDCBA98
// size of stack in double words (u64, 8 bytes)
#define THREAD0_STACK_SIZE 57
#define THREAD1_STACK_SIZE 25
#define THREAD3_STACK_SIZE 121
#define THREAD4_STACK_SIZE 185
#define THREAD5_STACK_SIZE 1657
#define THREAD6_STACK_SIZE 249

// Thread Scheduler Priorities
#define THREAD3_PRI 120
#define THREAD4_PRI 110
#define THREAD5_PRI 50
#define THREAD6_PRI 115

// generate an overlay_symbols.h?
extern u32 _loadovlSegRomStart;
extern u32 _loadovlSegRomEnd;
extern void *_loadovlLoadStart;
extern void *_loadovlLoadEnd;
extern void *_loadovlTextStart;
extern void *_loadovlTextEnd;
extern void *_loadovlDataStart;
extern void *_loadovlDataEnd;
extern void *_loadovlSegNoloadStart;
extern void *_loadovlSegNoloadEnd;

// data
static struct Overlay OverlayManager = {
    (u32) &_loadovlSegRomStart,
    (u32) &_loadovlSegRomEnd,
    &_loadovlLoadStart,
    &_loadovlTextStart,
    &_loadovlTextEnd,
    &_loadovlDataStart,
    &_loadovlDataEnd,
    &_loadovlSegNoloadStart,
    &_loadovlSegNoloadEnd
};
u32 sNoThread5 = 0;

// bss
u8 sUnref8003FAD0[56];
u64 gThread0Stack[THREAD0_STACK_SIZE];
OSThread sThread1;
u8 sUnref8003FE80[56];
u64 sThread1Stack[THREAD1_STACK_SIZE];
OSThread sThread3;
u8 sUnref80040130[56];
u64 sThread3Stack[THREAD3_STACK_SIZE];
OSThread sThread4;
u8 sUnref800406E0[56];
u64 sThread4Stack[THREAD4_STACK_SIZE];
OSThread sThread5;
u8 sUkn80040E90[56];
u64 sThread5Stack[THREAD5_STACK_SIZE];
OSThread sThread6;
u8 sUnref8004440[56];
u64 sThread6Stack[THREAD6_STACK_SIZE];
u64 D_80044C40[0x20]; //IP3 font?
s8 gSPImemOkay;
s8 gSPDmemOkay;
OSMesg sBlockMsg[1];
OSMesgQueue gThreadingQueue;
OSMesg sPIcmdBuf[50];
OSMesgQueue sPIcmdQ;
u8 sThreadArgBuf[128];

u64 *get_thread4_stack_start(void) {
    return sThread4Stack + THREAD4_STACK_SIZE;
}

u8 *unref_8000046C(void) {
    return sUkn80040E90;
}

void *unref_80000478(void) {
    return (void *)(0x00003400);
}

void check_sp_imem(void) {
    if (IO_READ(SP_IMEM_START) == 6103) {
        gSPImemOkay = TRUE;
    } else {
        gSPImemOkay = FALSE;
    }
}

void check_sp_dmem(void) {
    if (IO_READ(SP_DMEM_START) == (u32)-1) {
        gSPDmemOkay = TRUE;
    } else {
        gSPDmemOkay = FALSE;
    }
}

void fatal_thread_stack_overflow(s32 tid) {
    fatal_printf("thread stack overflow  id = %d\n", tid);

    while (TRUE) {}
}

void check_stack_probes(void) {
    if (gThread0Stack[0] != STACK_PROBE_MAGIC) {
        fatal_thread_stack_overflow(0);
    }

    if (sThread1Stack[0] != STACK_PROBE_MAGIC) {
        fatal_thread_stack_overflow(1);
    }

    if (sThread3Stack[0] != STACK_PROBE_MAGIC) {
        fatal_thread_stack_overflow(3);
    }

    if (sThread5Stack[0] != STACK_PROBE_MAGIC) {
        fatal_thread_stack_overflow(5);
    }
}

void thread5_main(UNUSED void *arg) {
    osCreateViManager(OS_PRIORITY_VIMGR);
    gPiHandle = osCartRomInit();
    maybe_setup_pi_handle();
    osCreatePiManager(OS_PRIORITY_PIMGR, &sPIcmdQ, sPIcmdBuf, ARRAY_COUNT(sPIcmdBuf));
    ssb_create_dma_mq();
    // load IP3 font?
    ssb_rom_copy_no_writeback(PHYSICAL_TO_ROM(0xB70), D_80044C40, sizeof(D_80044C40));
    check_sp_imem();
    check_sp_dmem();
    osCreateMesgQueue(&gThreadingQueue, sBlockMsg, ARRAY_COUNT(sBlockMsg));

    osCreateThread(&sThread3, 3, &thread3_scheduler, NULL, 
        sThread3Stack + THREAD3_STACK_SIZE, 
        THREAD3_PRI
    );
    // statements required to be on same line to match (macro?)
    sThread3Stack[0] = STACK_PROBE_MAGIC; osStartThread(&sThread3);
    osRecvMesg(&gThreadingQueue, NULL, OS_MESG_BLOCK);

    osCreateThread(&sThread4, 4, thread4, NULL, 
        sThread4Stack + THREAD4_STACK_SIZE, 
        THREAD4_PRI
    );
    // statements required to be on same line to match (macro?)
    sThread4Stack[0] = STACK_PROBE_MAGIC; osStartThread(&sThread4);
    osRecvMesg(&gThreadingQueue, NULL, OS_MESG_BLOCK);

    osCreateThread(&sThread6, 6, thread6, NULL, 
        sThread6Stack + THREAD6_STACK_SIZE, 
        THREAD6_PRI
    );
    // statements required to be on same line to match (macro?)
    sThread6Stack[0] = STACK_PROBE_MAGIC; osStartThread(&sThread6);
    osRecvMesg(&gThreadingQueue, NULL, OS_MESG_BLOCK);

    func_80006B80();
    load_overlay(&OverlayManager);
    load_overlay_set(0);
}

void thread1_idle(void *arg) {
    start_thread8();
    osCreateThread(&sThread5, 5, thread5_main, arg, 
        sThread5Stack + THREAD5_STACK_SIZE, 
        THREAD5_PRI
    );
    sThread5Stack[0] = STACK_PROBE_MAGIC;
    if (!sNoThread5) {
        osStartThread(&sThread5);
    }
    osSetThreadPri(NULL, OS_PRIORITY_IDLE);

    while (TRUE) {}
}

void ssb_main(void) {
    gThread0Stack[0] = STACK_PROBE_MAGIC;
    __osSetWatchLo(0x4900000);
    osInitialize();
    osCreateThread(&sThread1, 1, thread1_idle, &sThreadArgBuf, 
        sThread1Stack + THREAD1_STACK_SIZE, 
        OS_PRIORITY_APPMAX
    );
    // statements required to be on same line to match (macro?)
    sThread1Stack[0] = STACK_PROBE_MAGIC; osStartThread(&sThread1);
}

