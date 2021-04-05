#ifndef MAIN_H
#define MAIN_H

#include <PR/os.h>

extern OSMesgQueue gThreadingQueue;
extern u64 gRspBootCode[0x20];

extern void check_stack_probes(void);

#endif /* MAIN_H */
