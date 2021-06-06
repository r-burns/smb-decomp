#ifndef SYS_SYSTEM_03_1_H
#define SYS_SYSTEM_03_1_H

#include "sys/om.h"

#include <PR/ultratypes.h>

extern struct GObjCommon  *func_8000AFE4(
    s32,
    struct GObjCommon * (*)(struct GObjCommon *, void *),
    void *,
    s32);

extern struct GObjCommon *find_gobj_with_id(u32 id);
extern void stop_current_process(s32 timesToStop);
extern void func_8000B284(struct GObjCommon *);
extern void func_8000B2B8(struct GObjCommon *);
extern void func_8000B39C(struct GObjCommon *);
extern void func_8000B70C(struct GObjCommon *);
extern void func_8000B760(struct GObjCommon *);
extern void func_8000B7B4(void);
// what is this struct? is it just `struct GObjCommon`?
struct UnkA26D8;
extern struct GObjCommon *func_8000B93C(
    u32 id,
    void (*arg1)(void),
    s32 link,
    u32 arg3,
    void (*arg4)(struct UnkA26D8 *),
    s32 arg5,
    s64 arg7,
    s32 arg8,
    s32 arg9,
    s32 arg10,
    s32 arg11,
    s32 arg12,
    s32 arg13);


#endif /* SYS_SYSTEM_03_1_H */
