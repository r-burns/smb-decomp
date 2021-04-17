#include "sys/system_00.h"

#include "sys/thread3.h"

#include <PR/mbi.h>
#include <PR/os.h>
#include <PR/ultratypes.h>

// u16 *gZBuffer ?
u32 D_80046670;
u32 D_80046674;
// current screen width?
u32 D_80046678;
// current screen height?
u32 D_8004667C;
u32 D_80046680;
u32 D_80046684;
s32 D_80046688[3];
s16 D_80046694;
s16 D_80046696;
s16 D_80046698;
s16 D_8004669A;

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

/**
 * Convert an RBGA32 color value into a packed set of RBGA5551
 * that can be used with gDPSetFillColor
 *
 * Depends on the state of `D_80046674`
 * @param color RRGGBBAA
 */
u32 rgba32_to_fill_color(u32 color) {
    // GPACK_RGBA5551, but it doesn't seem to match
    // if that macro is used
    u32 packed = ((color >> 16) & 0xF800) | ((color >> 13) & 0x07C0) | ((color >> 10) & 0x003E)
               | ((color >> 7) & 1);

    return D_80046674 == 3 ? color : (packed << 16) | packed;
}

struct SCTaskType5 {
    /* 0x00 */ struct RealSCInfo info;
    /* 0x24 */ s32 unk24;
    /* 0x28 */ s32 unk28;
    /* 0x2C */ s32 unk2C;
}; // size == 0x30

#ifdef NON_MATCHING
void func_80006DC4(s32 arg0, s32 arg1, s32 arg2) {
    struct SCTaskType5 mesg;

    D_80046688[0]   = arg0;
    mesg.info.unk00 = 5;
    mesg.info.unk04 = 100;
    D_80046688[1]   = arg1;
    D_80046688[2]   = arg2;
    mesg.unk24      = arg0;
    mesg.unk28      = arg1;
    mesg.unk2C      = arg2;
    func_80000970((void *)&mesg);
}
#else
void func_80006DC4(s32 arg0, s32 arg1, s32 arg2);
#pragma GLOBAL_ASM("game/nonmatching/system_00/func_80006DC4.s")
#endif

void func_80006E18(s32 arg0) {
    D_80046680 |= arg0;

    if ((arg0 & 0x20)) { D_80046674 = 3; }
    if ((arg0 & 0x10)) { D_80046674 = 2; }
    D_80046684 = 1;
}

// set current screen width?
void func_80006E64(s32 arg0) {
    D_80046678 = arg0;
    D_80046684 = 1;
}

void func_80006E7C(s32 arg0) {
    D_8004667C = arg0;
    D_80046684 = 1;
}

void func_80006E94(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    D_80046694 = arg0;
    D_80046696 = arg1;
    D_80046698 = arg2;
    D_8004669A = arg3;
    D_80046684 = 1;
}

struct SCTaskType4 {
    /* 0x00 */ struct RealSCInfo info;
    /* 0x24 */ s32 unk24; // screen width?
    /* 0x28 */ s32 unk28; // screen height?
    /* 0x2C */ s32 unk2C;
    /* 0x30 */ s16 unk30;
    /* 0x32 */ s16 unk32;
    /* 0x34 */ s16 unk34;
    /* 0x36 */ s16 unk36;
}; // size == 0x38

void func_80006EF4(struct SCTaskType4 *task) {
    task->unk24 = D_80046678;
    task->unk28 = D_8004667C;
    task->unk2C = D_80046680;
    task->unk30 = D_80046694;
    task->unk32 = D_80046696;
    task->unk34 = D_80046698;
    task->unk36 = D_8004669A;
    D_80046680  = 0;
    D_80046684  = 0;
}

void func_80006F5C(struct SCTaskType4 *task) {
    if (D_80046684) {
        task->info.unk00 = 4;
        task->info.unk04 = 50;
        task->info.func  = NULL;
        task->info.unk20 = NULL;
        func_80006EF4(task);
        osSendMesg(&gScheduleTaskQueue, (OSMesg)task, OS_MESG_NOBLOCK);
    }
}

/**
 * @param arg0 screen width?
 * @param arg1 screen height?
 * @param arg2 cycle type?
 */
void func_80006FB8(s32 arg0, s32 arg1, u32 arg2) {
    struct SCTaskType4 task;

    D_80046680 = 0;
    D_80046674 = 2;
    func_80006E18(arg2);
    func_80006E64(arg0);
    func_80006E7C(arg1);
    task.info.unk00 = 4;
    task.info.unk04 = 100;
    func_80006EF4(&task);
    func_80000970((void *)&task.info);
}

void func_80007024(struct Unk7024 *arg0) {
    func_80006DC4(arg0->unk00, arg0->unk04, arg0->unk08);
    D_80046670 = arg0->unk0C;
    func_80006FB8(arg0->unk10, arg0->unk14, arg0->unk18);
}
