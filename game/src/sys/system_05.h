#ifndef SYS_SYSTEM_05_H
#define SYS_SYSTEM_05_H

#include "sys/om.h"

#include <PR/mbi.h>
#include <PR/ultratypes.h>

// should be a concrete pointer type
struct MtxProcTemp {
    /* 0x00 */ void *unk00;
    /* 0x04 */ void *unk04;
};

extern struct MtxProcTemp *D_800470AC;

extern s32 func_80010D70(Gfx **arg0, struct DObj *arg1);
extern void func_80012D90(struct DObj *arg0, Gfx **arg1);

extern void func_80016338(Gfx **, void *, s32); // arg1 is a type, not void *
extern void func_80014430(void);
extern void func_80017830(s32);
extern void func_80017DBC(struct GObjCommon *);

#endif /* SYS_SYSTEM_05_H */
