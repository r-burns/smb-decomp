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

void func_8000BD1C(struct DObj *arg0, union AnimCmd *arg1, f32 arg2) {
    struct AObj *aobj = arg0->unk6C;

    while (aobj != NULL) {
        aobj->unk05 = 0;
        aobj = aobj->next;
    }
    arg0->unk70 = arg1;
    arg0->unk74 = LOWER_BOUND;
    arg0->unk7C = arg2;
}

void func_8000BD54(struct MObj *arg0, union AnimCmd *arg1, f32 arg2) {
    struct AObj *aobj = arg0->unk90;

    while (aobj != NULL) {
        aobj->unk05 = 0;
        aobj = aobj->next;
    }
    arg0->unk94 = arg1;
    arg0->unk98 = LOWER_BOUND;
    arg0->unkA0 = arg2;
}

void func_8000BD8C(struct GObjCommon *arg0, union AnimCmd **arg1, f32 arg2) {
    struct DObj *dobj;
    u8 s2 = 1;

    dobj = arg0->unk74;
    arg0->unk78 = arg2;
    while (dobj != NULL) {
        if (*arg1 != NULL) {
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

void func_8000BE28(struct GObjCommon *arg0, union AnimCmd ***arg1, f32 arg2) {
    struct DObj *dobj;
    struct MObj *mobj;
    union AnimCmd **cmdlist;

    dobj = arg0->unk74;
    arg0->unk78 = arg2;
    while (dobj != NULL) {
        if (arg1 != NULL) {
            if (*arg1 != NULL) {
                cmdlist = *arg1;
                mobj = dobj->unk80;
                while (mobj != NULL) {
                    if (*cmdlist != NULL) {
                        func_8000BD54(mobj, *cmdlist, arg2);
                    }
                    cmdlist++;
                    mobj = mobj->next;
                }
            }
            arg1++;
        }
        dobj = func_8000BAA0(dobj);
    }
}

void func_8000BED8(struct GObjCommon *arg0, union AnimCmd **arg1, union AnimCmd ***arg2, f32 arg3) {
    struct DObj *dobj = arg0->unk74;
    struct MObj *mobj;
    union AnimCmd **cmdlist;
    u8 s5 = 1;

    arg0->unk78 = arg3;
    while (dobj != NULL) {
        if (arg1 != NULL) {
            if (*arg1 != NULL) {
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
                cmdlist = *arg2;
                mobj = dobj->unk80;
                while (mobj != NULL) {
                    if (*cmdlist != NULL) {
                        func_8000BD54(mobj, *cmdlist, arg3);
                    }
                    cmdlist++;
                    mobj = mobj->next;
                }
            }
            arg2++;
        }
        dobj = func_8000BAA0(dobj);
    }
}


#define PROCESSED_DEFAULT -1.1342745e38
// according to Kirby64, this is the animation processor
// could be a struct DObj as well (what is the relationship between these two?)
void func_8000BFE8(struct DObj *dobj) {
    struct AObj *sp80[10];
    struct AObj *aobj;
    s32 i;
    u32 cmd;
    u32 subcmd;
    f32 payload;

    if (dobj->unk74 != (f32)FLOAT_NEG_MAX) {
        if (dobj->unk74 == (f32)LOWER_BOUND) {
            dobj->unk74 = -dobj->unk7C;
        } else {
            dobj->unk74 -= dobj->unk78;
            dobj->unk7C += dobj->unk78;
            dobj->unk4->unk78 = dobj->unk7C;

            if (dobj->unk74 > 0.0f) { return; }
        }
        
        for (i = 0; i < ARRAY_COUNT(sp80); i++) {
            sp80[i] = NULL;
        }
        
        aobj = dobj->unk6C;
        while (aobj != NULL) {
            if (aobj->unk04 > 0 && aobj->unk04 < ARRAY_COUNT(sp80) + 1) {
                sp80[aobj->unk04 - 1] = aobj;
            }
            aobj = aobj->next;
        }
        
        do {
            if (dobj->unk70 == NULL) {
                aobj = dobj->unk6C;
                while (aobj != NULL) {
                    if (aobj->unk05) {
                        aobj->unk0C += dobj->unk78 + dobj->unk74;
                    }
                    aobj = aobj->next;
                }
                dobj->unk7C = dobj->unk74;
                dobj->unk4->unk78 = dobj->unk74;
                dobj->unk74 = PROCESSED_DEFAULT;
                return;
            }
            
            cmd = dobj->unk70->w >> 25;
            switch (cmd) {
            case 8:
            case 9:
            {
                payload = (f32)(dobj->unk70->w & 0x7FFF);
                subcmd = (dobj->unk70++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp80); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp80[i] == NULL) {
                            sp80[i] = create_aobj_for_dobj(dobj, i + 1);
                        }

                        sp80[i]->unk10 = sp80[i]->unk14;
                        sp80[i]->unk14 = dobj->unk70->f;
                        dobj->unk70++;
                        sp80[i]->unk18 = sp80[i]->unk1C;
                        sp80[i]->unk1C = 0.0f;
                        sp80[i]->unk05 = 3;
                        if (payload != 0.0f) {
                            sp80[i]->unk08 = 1.0f / payload;
                        }
                        sp80[i]->unk0C = -dobj->unk74 - dobj->unk78;
                    }
                    subcmd >>= 1;
                }

                if (cmd == 8) {
                    dobj->unk74 += payload;
                }
                break;
            }
            case 3:
            case 4:
            {
                payload = (f32)(dobj->unk70->w & 0x7FFF);
                subcmd = (dobj->unk70++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp80); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {

                        if (sp80[i] == NULL) {
                            sp80[i] = create_aobj_for_dobj(dobj, i + 1);
                        }
                        sp80[i]->unk10 = sp80[i]->unk14;
                        sp80[i]->unk14 = dobj->unk70->f;
                        dobj->unk70++;
                        sp80[i]->unk05 = 2;
                        if (payload != 0.0f) {
                            sp80[i]->unk18 = (sp80[i]->unk14 - sp80[i]->unk10) / payload;
                        }
                        sp80[i]->unk0C = -dobj->unk74 - dobj->unk78;
                        sp80[i]->unk1C = 0.0f;
                    }
                    subcmd >>= 1;
                }
                
                if (cmd == 3) {
                    dobj->unk74 += payload;
                }
                break;
            }
            case 5:
            case 6:
            {
                payload = (f32)(dobj->unk70->w & 0x7FFF);
                subcmd = (dobj->unk70++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp80); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp80[i] == NULL) {
                            sp80[i] = create_aobj_for_dobj(dobj, i + 1);
                        }

                        sp80[i]->unk10 = sp80[i]->unk14;
                        sp80[i]->unk14 = dobj->unk70->f;
                        dobj->unk70++;
                        sp80[i]->unk18 = sp80[i]->unk1C;
                        sp80[i]->unk1C = dobj->unk70->f;
                        dobj->unk70++;
                        sp80[i]->unk05 = 3;
                        if (payload != 0.0f) {
                            sp80[i]->unk08 = 1.0f / payload;
                        }
                        sp80[i]->unk0C = -dobj->unk74 - dobj->unk78;
                    }

                    subcmd >>= 1;
                }
                
                if (cmd == 5) {
                    dobj->unk74 += payload;
                }
                break;
            }
            case 7:
            {
                subcmd = (dobj->unk70++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp80); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp80[i] == NULL) {
                            sp80[i] = create_aobj_for_dobj(dobj, i + 1);
                        }

                        sp80[i]->unk1C = dobj->unk70->f;
                        dobj->unk70++;
                    }
                    subcmd >>= 1;
                }
                break;
            }
            case 2:
            {
                dobj->unk74 += (f32)(dobj->unk70++->w & 0x7FFF);
                break;
            }
            case 10:
            case 11:
            {
                payload = (f32)(dobj->unk70->w & 0x7FFF);
                subcmd = (dobj->unk70++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp80); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp80[i] == NULL) {
                            sp80[i] = create_aobj_for_dobj(dobj, i + 1);
                        }

                        sp80[i]->unk10 = sp80[i]->unk14;
                        sp80[i]->unk14 = dobj->unk70->f;
                        dobj->unk70++;
                        sp80[i]->unk05 = 1;
                        sp80[i]->unk08 = payload;
                        sp80[i]->unk0C = -dobj->unk74 - dobj->unk78;
                        sp80[i]->unk1C = 0.0f;
                    }

                    subcmd >>= 1;
                }
                
                if (cmd == 10) {
                    dobj->unk74 += payload;
                }
                break;
            }
            case 14:
            {
                dobj->unk70++;
                dobj->unk70 = dobj->unk70->ptr;
                dobj->unk7C = -dobj->unk74;
                dobj->unk4->unk78 = -dobj->unk74;

                if (dobj->unk55 != 0 && dobj->unk4->unk80 != NULL) {
                    dobj->unk4->unk80(dobj, -2, 0);
                }
                break;
            }
            case 1:
            {
                dobj->unk70++;
                dobj->unk70 = dobj->unk70->ptr;

                if (dobj->unk55 != 0 && dobj->unk4->unk80 != NULL) {
                    dobj->unk4->unk80(dobj, -2, 0);
                }
                break;
            }
            case 12:
            {
                payload = (f32)(dobj->unk70->w & 0x7FFF);
                subcmd = (dobj->unk70++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp80); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp80[i] == NULL) {
                            sp80[i] = create_aobj_for_dobj(dobj, i + 1);
                        }

                        sp80[i]->unk0C += payload;
                    }
                    subcmd >>= 1;
                }

                break;
            }
            case 13:
            {
                dobj->unk70++;
                if (sp80[3] == NULL) {
                    sp80[3] = create_aobj_for_dobj(dobj, 3 + 1);
                }
                sp80[3]->unk20 = dobj->unk70->w;
                dobj->unk70++;
                break;
            }
            case 0:
            {
                aobj = dobj->unk6C;
                while (aobj != NULL) {
                    if (aobj->unk05 != 0) {
                        aobj->unk0C += dobj->unk78 + dobj->unk74;
                    }
                    aobj = aobj->next;
                }
                dobj->unk7C = dobj->unk74;
                dobj->unk4->unk78 = dobj->unk74;
                dobj->unk74 = PROCESSED_DEFAULT;
                if (dobj->unk55 != 0 && dobj->unk4->unk80 != NULL) { 
                    dobj->unk4->unk80(dobj, -1, 0);
                }
                return; // not break
            }
            case 15:
            {
                dobj->unk54 = (dobj->unk70->w << 7) >> 22;
                dobj->unk74 += (f32)(dobj->unk70++->w & 0x7FFF);
                break;
            }
            case 16:
            {
                if (dobj->unk4->unk80 != NULL) {
                    // only seems to match when spelled out...
                    dobj->unk4->unk80(dobj, ((dobj->unk70->w << 7) >> 22) >> 8, ((dobj->unk70->w << 7) >> 22) & 0xFF);
                }

                dobj->unk74 += (f32)(dobj->unk70++->w & 0x7FFF);;
                break;
            }
            case 17:
            {
                subcmd = (dobj->unk70->w << 7) >> 22;
                dobj->unk74 += (f32)(dobj->unk70++->w & 0x7FFF);

                for (i = 4; i < 14; i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (dobj->unk4->unk80 != NULL) {
                            dobj->unk4->unk80(dobj, i, dobj->unk70->f);
                        }
                        dobj->unk70++;
                        
                    }
                    subcmd >>= 1;
                }
                break;
            }
            // empty, but necessary
            default: {}
            }
        } while (dobj->unk74 <= 0.0f);
    }
}

#define SQUARE(x) ((x) * (x))
#define CUBE(x) ((x) * (x) * (x))

f32 func_8000CA28(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 temp_f10;
    f32 temp_f16;
    f32 temp_f18; // arg0^2
    f32 temp_f2; // arg1^2

    temp_f2 = SQUARE(arg1);
    temp_f18 = SQUARE(arg0);
    temp_f16 = temp_f2 * arg1 * temp_f18; // arg1^3 * arg0^2
    temp_f10 = 2.0f * temp_f16 * arg0; // 2.0f * arg1^3 * arg0^3
    sp14 = 3.0f * temp_f2 * temp_f18; // 3 * arg1^2 * arg0^2
    sp18 = temp_f2 * arg0; // arg0^3
    sp10 = temp_f16 - sp18; // arg1^3 * arg0^2 - arg0^3

    return (((temp_f10 - sp14) + 1.0f) * arg2) + (arg3 * (sp14 - temp_f10)) + (arg4 * ((sp10 - sp18) + arg1)) + (arg5 * sp10);
}

f32 func_8000CADC(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    f32 temp_f18;
    f32 temp_f16;
    f32 temp_f2;

    temp_f2 = 2.0f * arg1 * arg0;
    temp_f16 = 3.0f * arg1 * arg1 * arg0 * arg0;
    temp_f18 = 6.0f * arg1;

    return (((temp_f18 * arg1 * arg0 * arg0 * arg0) - (temp_f18 * arg0 * arg0)) * (arg2 - arg3)) + (arg4 * ((temp_f16 - (2.0f * temp_f2)) + 1.0f)) + (arg5 * (temp_f16 - temp_f2));
}

f32 func_8000CB94(struct AObj *aobj) {
    switch (aobj->unk05) {
        case 2:
            return aobj->unk10 + (aobj->unk0C * aobj->unk18);
        case 3:
            return func_8000CA28(aobj->unk08, aobj->unk0C, aobj->unk10, aobj->unk14, aobj->unk18, aobj->unk1C);
        case 1:
            return aobj->unk08 <= aobj->unk0C ? aobj->unk14 : aobj->unk10;
    }

#ifdef AVOID_UB
    return 0.0f;
#endif
}

f32 func_8000CC40(struct AObj *aobj) {
    switch (aobj->unk05) {
        case 2:
            return aobj->unk18;
        case 3:
            return func_8000CADC(aobj->unk08, aobj->unk0C, aobj->unk10, aobj->unk14, aobj->unk18, aobj->unk1C);
        case 1:
            return 0.0f;
    }
#ifdef AVOID_UB
    return 0.0f;
#endif
}

// system 9
// first arg could be to either the float or int 3mtx, or maybe a union type pointer?
extern func_8001E530(struct Vec3f *, s32, f32);


#define FLOAT_MAYBE_SCALE_MIN -1.1342745e38f
void func_8000CCBC(struct DObj *dobj) {
    f32 f26; // sp54
    struct AObj *aobj;

    if (dobj->unk74 != (f32) FLOAT_NEG_MAX) {
        aobj = dobj->unk6C;

        while (aobj != NULL) {
            // L8000CD20
            if (aobj->unk05 != 0) {
                if (dobj->unk74 != FLOAT_MAYBE_SCALE_MIN) {
                    aobj->unk0C += dobj->unk78;
                }
                // L8000CD58
                if (!(dobj->unk4->unk7C & 2)) {
                    switch (aobj->unk05) {
                    case 2:
                        f26 = aobj->unk10 + (aobj->unk0C * aobj->unk18);
                        break;
                    case 3:
                    {
                        f32 temp_f16 = SQUARE(aobj->unk08);
                        f32 temp_f12 = SQUARE(aobj->unk0C);
                        f32 temp_f18 = aobj->unk08 * temp_f12;
                        f32 temp_f14 = aobj->unk0C * temp_f12 * temp_f16;
                        f32 temp_f20 = 2.0f * temp_f14 * aobj->unk08;
                        f32 temp_f22 = 3.0f * temp_f12 * temp_f16;
                        f32 temp_f24 = temp_f14 - temp_f18;
                        
                        f26 = (aobj->unk10 * ((temp_f20 - temp_f22) + 1.0f)) + (aobj->unk14 * (temp_f22 - temp_f20)) + (aobj->unk18 * ((temp_f24 - temp_f18) + aobj->unk0C)) + (aobj->unk1C * temp_f24);
                        break;
                    }
                    case 1:
                        f26 = aobj->unk08 <= aobj->unk0C ? aobj->unk14 : aobj->unk10;
                        break;
                    default: {}
                    }

                    // L8000CE5C L8000CE60
                    switch (aobj->unk04) {
                    case 1:
                        dobj->unk28.f[1] = f26;
                        break;
                    case 2:
                        dobj->unk28.f[2] = f26;
                        break;
                    case 3:
                        dobj->unk28.f[3] = f26;
                        break;
                    case 4:
                        if (f26 < 0.0f) {
                            f26 = 0.0f;
                        } else {
                            if (f26 > 1.0f) {
                                f26 = 1.0f;
                            }
                        }
                        func_8001E530(&dobj->unk18.f.v, aobj->unk20, f26);
                        break;
                    case 5:
                        dobj->unk18.f.v.x = f26;
                        break;
                    case 6:
                        dobj->unk18.f.v.y = f26;
                        break;
                    case 7:
                        dobj->unk18.f.v.z = f26;
                        break;
                    case 8:
                        dobj->unk3C.v.x = f26;
                        break;
                    case 9:
                        dobj->unk3C.v.y = f26;
                        break;
                    case 10:
                        dobj->unk3C.v.z = f26;
                        break;
                    }
                }
            }
            // L8000CF10
            aobj = aobj->next;
        }
        // L8000CF20
        if (dobj->unk74 == FLOAT_MAYBE_SCALE_MIN) {
            dobj->unk74 = FLOAT_NEG_MAX;
        }
    }
    // L8000CF48
}

// the arg typing may be off?
void func_8000CF6C(struct MObj *mobj) {
    struct AObj *sp90[10];
    struct AObj *sp7C[5];
    struct AObj *aobj;
    s32 i;
    u32 cmd;
    u32 subcmd;
    f32 payload;

    if (mobj->unk98 != (f32)FLOAT_NEG_MAX) {
        if (mobj->unk98 == (f32)LOWER_BOUND) {
            mobj->unk98 = -mobj->unkA0;
        } else {
            mobj->unk98 -= mobj->unk9C;
            mobj->unkA0 += mobj->unk9C;

            if (mobj->unk98 > 0.0f) {
                return;
            }
        }
        
        for (i = 0; i < ARRAY_COUNT(sp90); i++) {
            sp90[i] = NULL;
        }

        for (i = 0; i < ARRAY_COUNT(sp7C); i++) {
            sp7C[i] = NULL;
        }

        aobj = mobj->unk90;
        while (aobj != NULL) {
            if (aobj->unk04 >= 13 && aobj->unk04 < 23) {
                sp90[aobj->unk04 - 13] = aobj;
            }

            if (aobj->unk04 >= 37 && aobj->unk04 < 42) {
                sp7C[aobj->unk04 - 37] = aobj;
            }

            aobj = aobj->next;
        }
        
        do {
            if (mobj->unk94 == NULL) {
                aobj = mobj->unk90;
                while (aobj != NULL) {
                    if (aobj->unk05 != 0) {
                        aobj->unk0C += mobj->unk9C + mobj->unk98;
                    }
                    aobj = aobj->next;
                }
                mobj->unkA0 = mobj->unk98;
                mobj->unk98 = PROCESSED_DEFAULT;

                break;  // or return?
            }
            
            cmd = mobj->unk94->w >> 25;
            switch (cmd) {
            case 8:
            case 9:
            {
                payload = (f32)(mobj->unk94->w & 0x7FFF);
                subcmd = (mobj->unk94++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp90); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp90[i] == NULL) {
                            sp90[i] = create_aobj_for_mobj(mobj, i + 13);
                        }
                        sp90[i]->unk10 = sp90[i]->unk14;
                        sp90[i]->unk14 = mobj->unk94->f;
                        mobj->unk94++;
                        sp90[i]->unk18 = sp90[i]->unk1C;
                        sp90[i]->unk1C = 0.0f;
                        sp90[i]->unk05 = 3;

                        if (payload != 0.0f) {
                            sp90[i]->unk08 = 1.0f / payload;
                        }
                        sp90[i]->unk0C = -mobj->unk98 - mobj->unk9C;
                    }
                    subcmd >>= 1;
                }
                
                if (cmd == 8) {
                    mobj->unk98 += payload;
                }
                break;
            }
            case 3:
            case 4:
            {
                payload = (f32)(mobj->unk94->w & 0x7FFF);
                subcmd = (mobj->unk94++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp90); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp90[i] == NULL) {
                            sp90[i] = create_aobj_for_mobj(mobj, i + 13);
                        }

                        sp90[i]->unk10 = sp90[i]->unk14;
                        sp90[i]->unk14 = mobj->unk94->f;
                        mobj->unk94++;
                        sp90[i]->unk05 = 2;
                        if (payload != 0.0f) {
                            sp90[i]->unk18 = (sp90[i]->unk14 - sp90[i]->unk10) / payload;
                        }
                        sp90[i]->unk0C = -mobj->unk98 - mobj->unk9C;
                        sp90[i]->unk1C = 0.0f;
                    }
                    subcmd >>= 1;
                }
                
                if (cmd == 3) {
                    mobj->unk98 += payload;
                }
                break;
            }
            case 5:
            case 6:
            {
                payload = (f32)(mobj->unk94->w & 0x7FFF);
                subcmd = (mobj->unk94++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp90); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp90[i] == NULL) {
                            sp90[i] = create_aobj_for_mobj(mobj, i + 13);
                        }
                        sp90[i]->unk10 = sp90[i]->unk14;
                        sp90[i]->unk14 = mobj->unk94->f;
                        mobj->unk94++;
                        sp90[i]->unk18 = sp90[i]->unk1C;
                        sp90[i]->unk1C = mobj->unk94->f;
                        mobj->unk94++;

                        sp90[i]->unk05 = 3;
                        if (payload != 0.0f) {
                            sp90[i]->unk08 = 1.0f / payload;
                        }
                        sp90[i]->unk0C = -mobj->unk98 - mobj->unk9C;
                    }
                    subcmd >>= 1;
                }
                
                if (cmd == 5) {
                    mobj->unk98 += payload;
                }
                break;
            }
            case 7:
            {
                subcmd = (mobj->unk94++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp90); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp90[i] == NULL) {
                            sp90[i] = create_aobj_for_mobj(mobj, i + 13);
                        }
                        sp90[i]->unk1C = mobj->unk94->f;
                        mobj->unk94++;
                    }
                    subcmd >>= 1;
                }
                break;
            }
            case 2:
            {
                mobj->unk98 += (f32)(mobj->unk94->w & 0x7FFF);
                mobj->unk94++;

                break;
            }
            case 10:
            case 11:
            {
                payload = (f32)(mobj->unk94->w & 0x7FFF);
                subcmd = (mobj->unk94++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp90); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp90[i] == NULL) {
                            sp90[i] = create_aobj_for_mobj(mobj, i + 13);
                        }
                        sp90[i]->unk10 = sp90[i]->unk14;
                        sp90[i]->unk14 = mobj->unk94->f;
                        mobj->unk94++;

                        sp90[i]->unk05 = 1;
                        sp90[i]->unk08 = payload;
                        sp90[i]->unk0C = -mobj->unk98 - mobj->unk9C;
                        sp90[i]->unk1C = 0.0f;
                    }
                    subcmd >>= 1;
                }
                
                if (cmd == 10) {
                    mobj->unk98 += payload;
                }
                break;
            }
            case 14:
            {
                mobj->unk94++;
                mobj->unk94 = mobj->unk94->ptr;
                mobj->unkA0 = -mobj->unk98;
                break;
            }
            case 1:
            {
                mobj->unk94++;
                mobj->unk94 = mobj->unk94->ptr;
                break;
            }
            case 12: 
            {
                payload = (f32)(mobj->unk94->w & 0x7FFF);
                subcmd = (mobj->unk94++->w << 7) >> 22;
                
                for (i = 0; i < ARRAY_COUNT(sp90); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp90[i] == NULL) {
                            sp90[i] = create_aobj_for_mobj(mobj, i + 13);
                        }
                        sp90[i]->unk0C += payload;
                    }
                    subcmd >>= 1;
                }
                
                break;
            }
            case 0:
            {
                aobj = mobj->unk90;
                while (aobj != NULL) {
                    if (aobj->unk05 != 0) {
                        aobj->unk0C += mobj->unk9C + mobj->unk98;
                    }
                    aobj = aobj->next;
                }
                
                mobj->unkA0 = mobj->unk98;
                mobj->unk98 = PROCESSED_DEFAULT;
                return; // not break
            }
            case 18:
            case 19:
            {
                payload = (f32)(mobj->unk94->w & 0x7FFF);
                subcmd = (mobj->unk94++->w << 7) >> 22;

                for (i = 0; i < ARRAY_COUNT(sp7C); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp7C[i] == NULL) {
                            sp7C[i] = create_aobj_for_mobj(mobj, i + 37);
                        }
                        sp7C[i]->unk10 = sp7C[i]->unk14;
                        sp7C[i]->unk14 = mobj->unk94->f;
                        mobj->unk94++;

                        sp7C[i]->unk05 = 1;
                        sp7C[i]->unk08 = payload;
                        sp7C[i]->unk0C = -mobj->unk98 - mobj->unk9C;
                    }
                    subcmd >>= 1;
                }
                
                if (cmd == 18) {
                    mobj->unk98 += payload;
                }
                break;
            }
            case 20:
            case 21:
            {
                payload = (f32)(mobj->unk94->w & 0x7FFF);
                subcmd = (mobj->unk94++->w << 7) >> 22;
                
                for (i = 0; i < ARRAY_COUNT(sp7C); i++) {
                    if (subcmd == 0) { break; }

                    if (subcmd & 1) {
                        if (sp7C[i] == NULL) {
                            sp7C[i] = create_aobj_for_mobj(mobj, i + 37);
                        }
                        sp7C[i]->unk10 = sp7C[i]->unk14;
                        sp7C[i]->unk14 = mobj->unk94->f;
                        mobj->unk94++;

                        sp7C[i]->unk05 = 2;
                        if (payload != 0.0f) {
                            sp7C[i]->unk08 = 1.0f / payload;
                        }
                        sp7C[i]->unk0C = -mobj->unk98 - mobj->unk9C;
                    }
                    subcmd >>= 1;
                }
                
                if (cmd == 20) {
                    mobj->unk98 += payload;
                }
                break;
            }
            case 22:
            {
                mobj->unk98 = (f32)(mobj->unk94->w & 0x7FFF);

                subcmd = (mobj->unk94++->w << 7) >> 22;

                if (subcmd & 0x01) {
                    mobj->unk08.unk4C = mobj->unk94->w;
                    mobj->unk94++;
                }
                if (subcmd & 0x02) {
                    mobj->unk08.unk6C = mobj->unk94->w;
                    mobj->unk94++;
                }
                if (subcmd & 0x04) {
                    mobj->unk08.unk68 = mobj->unk94->w;
                    mobj->unk94++;
                }
                if (subcmd & 0x08) {
                    mobj->unk08.unk74 = mobj->unk94->w;
                    mobj->unk94++;
                }
                if (subcmd & 0x10) {
                    mobj->unk08.unk70 = mobj->unk94->w;
                    mobj->unk94++;
                }
                break;
            }
            default: {}
            }
        } while (mobj->unk98 <= 0.0f);
    }
}

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
