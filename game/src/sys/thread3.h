#ifndef SYS_THREAD_3_H
#define SYS_THREAD_3_H

#include <PR/os.h>

extern OSMesgQueue gScheduleTaskQueue;
extern s32 D_80045020; 

extern void thread3_scheduler(void *arg);

#endif /* SYS_THREAD_3_H */
