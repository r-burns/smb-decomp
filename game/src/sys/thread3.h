#ifndef SYS_THREAD_3_H
#define SYS_THREAD_3_H

#include <PR/ultratypes.h>
#include <PR/os.h>
#include <PR/sptask.h>

struct MqListNode {
    /* 0x00 */ struct MqListNode *next;
    /* 0x04 */ OSMesgQueue *mq;
}; // size = 0x8

struct Unk80000A34 {
    /* 0x00 */ u8 pad00[0x70];
    /* 0x70 */ s32 unk70;
}; // size = ??

struct SpMqInfo {
    /* 0x00 */ s32 unk00;
    /* 0x04 */ s32 unk04;
    /* 0x08 */ s32 unk08;
    /* 0x0C */ struct SpTaskQueue *unk0C; // next; should these point to the combined type, or just this info type?
    /* 0x10 */ struct SpTaskQueue *unk10; // prev
    /* 0x14 */ s32 (*func)(struct SpTaskQueue *);
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ OSMesgQueue *unk20;
    /* 0x24 */ struct MqListNode *unk24; // checked type? (-1 is meaningful)
};

struct SpTaskQueue {
    /* 0x00 */ struct SpMqInfo info;
    /* 0x28 */ OSTask task;
    /* 0x68 */ s32 *unk68;
    /* 0x6C */ s32 *unk6C; // checked type? (-1 is meaningful)
    /* 0x70 */ u8 pad70[0x04];
    /* 0x74 */ s32 unk74;
    /* 0x78 */ s32 unk78;
    /* 0x7C */ s32 unk7C;
    /* 0x80 */ u32 unk80;
};

extern OSMesgQueue gScheduleTaskQueue;
extern s32 D_80045020; 
extern s64 D_80044FC0;

extern void func_80000970(struct SpMqInfo *arg0);
extern void func_800009D8(struct MqListNode *arg0, OSMesgQueue *mq, OSMesg *msg, u32 count);
extern s32 unref_80000A34(struct Unk80000A34 *arg0);
extern void thread3_scheduler(void *arg);

#endif /* SYS_THREAD_3_H */
