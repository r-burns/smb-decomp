#ifndef SYS_THREAD_3_H
#define SYS_THREAD_3_H

#include <PR/ultratypes.h>
#include <PR/os.h>

struct MqListNode {
    /* 0x00 */ struct MqListNode *next;
    /* 0x04 */ OSMesgQueue *mq;
}; // size = 0x8

extern OSMesgQueue gScheduleTaskQueue;
extern s32 D_80045020; 

extern void func_800009D8(struct MqListNode *arg0, OSMesgQueue *mq, OSMesg *msg, u32 count);
extern void thread3_scheduler(void *arg);

#endif /* SYS_THREAD_3_H */
