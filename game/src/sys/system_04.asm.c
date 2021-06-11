#include "sys/system_04.h"
#include "sys/system_03_1.h"
#include "sys/om.h"

#include <PR/ultratypes.h>
#include <macros.h>

/*********** data **********/
s32 D_8003B930 = 10;
s32 D_8003B934 = 10;
s32 D_8003B938 = 10;
s32 D_8003B93C = 10;

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

void unref_8000BBB0(struct GObjCommon *arg0, f32 arg1) {
    // might be `struct OMCamera *` instead...
    struct MObj *mobj;
    struct DObj *dobj = arg0->unk74;

    while (dobj != NULL) {
        mobj = dobj->unk80;
        while (mobj != NULL) {
            mobj->unk9C = arg1;
            mobj        = mobj->next;
        }

        dobj = func_8000BAA0(dobj);
    }
}

void unref_8000BC10(struct GObjCommon *arg0) {
    struct DObj *dobj = arg0->unk74;

    while (dobj != NULL) {
        func_80008EE4(dobj);
        dobj = func_8000BAA0(dobj);
    }
}

void unref_8000BC54(struct GObjCommon *arg0) {
    struct DObj *dobj = arg0->unk74;

    while (dobj != NULL) {
        // this pointer is used as an OMAnimation...?
        // is the function or the field type wrong?
        struct MObj *typingOff; 

        func_80008EE4(dobj);
        typingOff = dobj->unk80;
        while (typingOff != NULL) {
            func_80008FB0((void *)typingOff);
            typingOff = typingOff->next;
        }
        dobj = func_8000BAA0(dobj);
    }
}

void unref_8000BCBC(struct GObjCommon *arg0) {
    struct DObj *dobj = arg0->unk74;

    while (dobj != NULL) {
        // this pointer is used as an OMAnimation...?
        // is the function or the field type wrong?
        struct MObj *typingOff; 

        typingOff = dobj->unk80;
        while (typingOff != NULL) {
            func_80008FB0((void *)typingOff);
            typingOff = typingOff->next;
        }
        dobj = func_8000BAA0(dobj);
    }
}

// Negation of VAX F_Float upper bound??
#define LOWER_BOUND -1.7014117e38

void func_8000BD1C(struct DObj *arg0, u32 arg1, f32 arg2) {
    struct AObj *aobj = arg0->unk6C;

    while (aobj != NULL) {
        aobj->unk05 = 0;
        aobj = aobj->next;
    }
    arg0->unk70 = arg1;
    arg0->unk74 = LOWER_BOUND;
    arg0->unk7C = arg2;
}

void func_8000BD54(struct MObj *arg0, u32 arg1, f32 arg2) {
    struct AObj *aobj = arg0->unk90;

    while (aobj != NULL) {
        aobj->unk05 = 0;
        aobj = aobj->next;
    }
    arg0->unk94 = arg1;
    arg0->unk98 = LOWER_BOUND;
    arg0->unkA0 = arg2;
}

void func_8000BD8C(struct GObjCommon *arg0, u32 *arg1, f32 arg2) {
    struct DObj *dobj;
    u8 s2 = 1;

    dobj = arg0->unk74;
    arg0->unk78 = arg2;
    while (dobj != NULL) {
        if (*arg1 != 0) {
            func_8000BD1C(dobj, *arg1, arg2);
            dobj->unk55 = s2;
            s2 = 0;
        } else {
            dobj->unk74 = FLOAT_NEG_MAX;
            dobj->unk55 = 0;
        }

        arg1++;
        dobj = func_8000BAA0(dobj);
    }
}

void func_8000BE28(struct GObjCommon *arg0, u32 **arg1, f32 arg2) {
    struct DObj *dobj;
    struct MObj *mobj;
    u32 *ptr;

    dobj = arg0->unk74;
    arg0->unk78 = arg2;
    while (dobj != NULL) {
        if (arg1 != NULL) {
            if (*arg1 != NULL) {
                ptr = *arg1;
                mobj = dobj->unk80;
                while (mobj != NULL) {
                    if (*ptr != 0) {
                        func_8000BD54(mobj, *ptr, arg2);
                    }
                    ptr++;
                    mobj = mobj->next;
                }
            }
            arg1++;
        }
        dobj = func_8000BAA0(dobj);
    }
}

void func_8000BED8(struct GObjCommon *arg0, u32 *arg1, u32 **arg2, f32 arg3) {
    struct DObj *dobj = arg0->unk74;
    struct MObj *mobj;
    u32 *ptr;
    u8 s5 = 1;

    arg0->unk78 = arg3;
    while (dobj != NULL) {
        if (arg1 != NULL) {
            if (*arg1 != 0) {
                func_8000BD1C(dobj, *arg1, arg3);
                dobj->unk55 = s5;
                s5 = 0;
            } else {
                dobj->unk74 = FLOAT_NEG_MAX;
                dobj->unk55 = 0;
            }
            arg1++;
        }
        if (arg2 != NULL) {
            if (*arg2 != NULL) {
                ptr = *arg2;
                mobj = dobj->unk80;
                while (mobj != NULL) {
                    if (*ptr != 0) {
                        func_8000BD54(mobj, *ptr, arg3);
                    }
                    ptr++;
                    mobj = mobj->next;
                }
            }
            arg2++;
        }
        dobj = func_8000BAA0(dobj);
    }
}

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000BFE8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000CA28.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000CADC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000CB94.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000CC40.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000CCBC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000CF6C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000DA40.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000DF34.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000E008.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000E044.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000E084.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000E0F4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000E164.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000E428.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000E8A8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/unref_8000EC64.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/unref_8000EE40.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000F058.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/unref_8000F090.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/unref_8000F0C0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/unref_8000F0F0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000F120.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000F2FC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000F364.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000F590.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000F720.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000F8F4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000F988.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000FA3C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_8000FA74.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_80010344.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_80010580.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/unref_800105AC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/unref_80010710.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_80010734.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_80010748.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_80010918.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_80010AE8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_04/func_80010C2C.s")
#endif
#pragma GCC diagnostic pop
