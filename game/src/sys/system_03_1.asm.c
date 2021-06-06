#include <PR/ultratypes.h>
#include "sys/om.h"
#include <macros.h>
#include "sys/system_03_1.h"
#include "sys/system_03.h"
#include "sys/system_11.h"
#include <PR/os.h>

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

// `param` is the same type as the second argument to `cb`
void func_8000AEF0(s32 idx, void (*cb)(struct GObjCommon *, s32), s32 param) {
    struct GObjCommon *curr;
    struct GObjCommon *next;

    curr = gOMObjCommonLinks[idx];
    while (curr != NULL) {
        next = curr->unk04;
        cb(curr, param);
        curr = next;
    }
}

void func_8000AF58(void (*cb)(struct GObjCommon *, s32), s32 param) {
    struct GObjCommon *curr;
    struct GObjCommon *next;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gOMObjCommonLinks); i++) {
        curr = gOMObjCommonLinks[i];
        while (curr != NULL) {
            next = curr->unk04;
            cb(curr, param);
            curr = next;
        }
    }
}

// param might be off? or maybe it's `void *`?
struct GObjCommon *func_8000AFE4(s32 idx, struct GObjCommon *(*cb)(struct GObjCommon *, void *), void *param, s32 getFirst) {
    struct GObjCommon *curr;
    struct GObjCommon *next;
    struct GObjCommon *ret = NULL;

    curr = gOMObjCommonLinks[idx];
    while (curr != NULL) {
        struct GObjCommon *temp;

        next = curr->unk04;
        temp = cb(curr, param);

        if (temp) {
            ret = temp;
            if (getFirst == 1) {
                return ret;
            }
        }
        curr = next;
    }

    return ret;
}

struct GObjCommon *func_8000B08C(struct GObjCommon *(*cb)(struct GObjCommon *, void *), u32 id, s32 getFirst) {
    struct GObjCommon *curr;
    struct GObjCommon *next;
    s32 i;
    struct GObjCommon *ret = NULL;

    for (i = 0; i < ARRAY_COUNT(gOMObjCommonLinks); i++) {
        curr = gOMObjCommonLinks[i];
        while (curr != NULL) {
            struct GObjCommon *temp;

            next = curr->unk04;
            temp = cb(curr, (void *)id);
            if (temp != NULL) {
                ret = temp;
                if (getFirst == TRUE) {
                    return ret;
                }
            }
            curr = next;
        }
    }

    return ret;
}

struct GObjCommon *filter_is_id(struct GObjCommon *obj, void *id) {
    return obj->unk00 == (u32)id ? obj : NULL;
}

struct GObjCommon *func_8000B16C(s32 idx, u32 id) {
    return func_8000AFE4(idx, filter_is_id, (void *)id, TRUE);
}

struct GObjCommon *find_gobj_with_id(u32 id) {
    return func_8000B08C(filter_is_id, id, TRUE);
}

void func_8000B1C4(UNUSED u32 arg0) {
    func_8000ADB0(NULL);
}

void stop_current_process(s32 timesToStop) {
    // todo: main.h STACK_PROBE_MAGIC
    if (D_80046A60->unk1C.thread->osStack[7] != 0xFEDCBA98) {
        fatal_printf("gobjthread stack over  gobjid = %d\n", D_80046A60->unk18->unk00);
    }

    while (timesToStop) {
        osSendMesg(&gOMMq, (OSMesg)1, OS_MESG_NOBLOCK);
        osStopThread(NULL);
        timesToStop--;
    }
}

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B284.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B2B8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B2EC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/unref_8000B304.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/unref_8000B31C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/unref_8000B35C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B39C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B3EC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B434.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B47C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B4F8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/unref_8000B528.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B558.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/unref_8000B588.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/unref_8000B5B8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/unref_8000B5E8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/unref_8000B618.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B70C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B760.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B7B4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B824.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B8BC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B93C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000B9FC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000BAA0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000BB04.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_03_1/func_8000BB4C.s")
#endif
#pragma GCC diagnostic pop
