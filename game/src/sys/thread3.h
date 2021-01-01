#ifndef SYS_THREAD_3_H
#define SYS_THREAD_3_H

#include <PR/ultratypes.h>
#include <PR/os.h>

struct MqListNode {
    /* 0x00 */ struct MqListNode *next;
    /* 0x04 */ OSMesgQueue *mq;
}; // size = 0x8

struct Unk80000A34 {
    /* 0x00 */ u8 pad00[0x70];
    /* 0x70 */ s32 unk70;
}; // size = ??

extern OSMesgQueue gScheduleTaskQueue;
extern s32 D_80045020; 

extern void func_800009D8(struct MqListNode *arg0, OSMesgQueue *mq, OSMesg *msg, u32 count);
extern s32 unref_80000A34(struct Unk80000A34 *arg0);
extern void thread3_scheduler(void *arg);

#endif /* SYS_THREAD_3_H */
