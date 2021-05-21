#include "sys/om.h"

#include "sys/gtl.h"
#include "sys/rdp_reset.h"
#include "sys/system.h"
#include "sys/system_04.h"

#include <ssb_types.h>
#include <stddef.h>

#include <PR/mbi.h>
#include <PR/os.h>
#include <PR/ultratypes.h>

// structs
struct GObjProcess {
    /* 0x00 */ struct GObjProcess *unk00;
    /* 0x04 */ struct GObjProcess *unk04;
    /* 0x08 */ struct GObjProcess *unk08;
    /* 0x08 */ struct GObjProcess *unk0C;
    /* 0x10 */ s32 unk10; // priority
    /* 0x14 */ u8 unk14;  // kind
    /* 0x15 */ u8 unk15;
    /* 0x18 */ struct GObjSub18 *unk18;
    // following two fields are typed via unk14 / kind
    /* 0x1C */ union {
        struct GObjThread *thread;
        void (*cb)(struct GObjSub18 *);
    } unk1C;
    /* 0x20 */ void *unk20;
}; // size == 0x24

// data

// thread id store
OSId D_8003B870 = 10000000;

s32 D_8003B874 = 0;

struct Mtx6Float D_8003B878 = {NULL, {0.0, 30.0, 4.0 / 3.0, 100.0, 12800.0, 1.0}};

struct Mtx7Float D_8003B894 = {NULL, {-160.0, 160.0, -120.0, 120.0, 100.0, 12800.0, 1.0}};

struct Mtx3x3Float {
    struct OMMtx *mtx;
    f32 array[3][3];
}; // size == 0x28;

struct Mtx3x3Float D_8003B8B4 = {NULL, {{0.0, 0.0, 1500.0}, {0.0, 0.0, 0.0}, {0.0, 1.0, 0.0}}};

struct Mtx3Float D_8003B8DC = {NULL, {0.0, 0.0, 0.0}};

struct Mtx4Float D_8003B8EC = {NULL, {0.0, 0.0, 0.0, 1.0}};

struct Mtx4Float D_8003B900 = {NULL, {0.0, 0.0, 0.0, 0.0}};

struct Mtx3Float D_8003B914 = {NULL, {1.0, 1.0, 1.0}};

// bss

// list head
struct GObjThread *D_800466B0;
// count of active gobj threads?
u32 D_800466B4;
// count of actuve gobj thread stacks?
u32 D_800466B8;
// default thread stack size?
u32 D_800466BC;
u32 D_800466C0;
// list head
struct ThreadStackList *D_800466C4;
void (*D_800466C8)(struct GObjProcess *);
struct GObjProcess *D_800466CC;
struct GObjProcess *D_800466D0[6];
u32 D_800466E8;

#define OM_COMMON_MAX_LINKS 33
struct GObjSub18 *D_800466F0[OM_COMMON_MAX_LINKS];
/*
struct GObjSub18 *D_800466F0[2];
u32 D_800466F8;
u32 D_800466FC;
u32 D_80046700;
u32 D_80046704;
u8 D_80046708[8];
u32 D_80046710;
u32 D_80046714;
u32 D_80046718;
u32 D_8004671C;
u32 extend_D_8004671C;
u32 D_80046724;
u8 D_80046728[76];
u32 D_80046774;
*/
struct GObjSub18 *D_80046778[OM_COMMON_MAX_LINKS];
struct GObjSub18 *D_800467FC;
struct GObjSub18 *D_80046800[65];
struct GObjSub18 *D_80046908[65];
s32 D_80046A0C;
u16 D_80046A10;
s16 D_80046A12;
struct OMMtx *D_80046A14;
u32 D_80046A18;
void (*D_80046A1C)(struct DObjDynamicStore *); // fn to clear?
struct AObj *D_80046A20;
u32 D_80046A24;
struct MObj *D_80046A28;
u32 D_80046A2C;
struct DObj *D_80046A30;
u32 D_80046A34;
u16 D_80046A38; // DObj size
struct SObj *D_80046A3C;
u32 D_80046A40;
u16 D_80046A44;
struct OMCamera *D_80046A48;
u32 D_80046A4C;
u16 D_80046A50;
struct GObjSub18 *D_80046A54;
struct GObjSub18 *D_80046A58;
u32 D_80046A5C;
struct GObjProcess *D_80046A60;
u32 D_80046A64;
OSMesg D_80046A68[1];
OSMesgQueue D_80046A70;
u8 D_80046A88[1280];
u8 D_80046F88[24];

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

struct GObjThread {
    /* 0x000 */ struct GObjThread *next;
    /* 0x008 */ OSThread unk08;
    /* 0x1B8 */ u64 *unk1B8; // stack
    /* 0x1BC */ u32 unk1BC;
}; // size == 0x1C0

struct GObjThread *func_800073E0(void);
#ifdef NON_MATCHING
struct GObjThread *func_800073E0(void) {
    // nonmatching: regalloc off by one register in final block
    struct GObjThread *ret;
    struct GObjThread *temp;

    if ((ret = D_800466B0) == NULL) {
        temp       = func_80004980(sizeof(struct GObjThread), 8);
        D_800466B0 = temp;
        temp->next = NULL;
        ret        = D_800466B0;
    }

    if (ret == NULL) {
        fatal_printf("om : couldn\'t get GObjThread\n");
        while (TRUE) { }
    }

    D_800466B0 = ret->next;
    D_800466B4++;

    return ret;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800073E0.s")
#endif

void func_8000745C(struct GObjThread *t) {
    t->next    = D_800466B0;
    D_800466B0 = t;
    D_800466B4--;
}

struct ThreadStackList {
    /* 0x00 */ struct ThreadStackList *next;
    /* 0x04 */ struct ThreadStackNode *stack;
    /* 0x08 */ u32 size;
}; // size == 0x0C

struct ThreadStackNode {
    /* 0x00 */ struct ThreadStackNode *next;
    /* 0x04 */ u32 stackSize;
    /* 0x08 */ u64 stack[1];
}; // size == 0x08 + VLA

struct ThreadStackNode *func_80007488(u32 size) {
    struct ThreadStackList *curr;
    struct ThreadStackList *prev;
    struct ThreadStackNode *ret;

    curr = D_800466C4;
    prev = NULL;
    while (curr != NULL) {
        if (curr->size == size) { break; }
        prev = curr;
        curr = curr->next;
    }

    if (curr == NULL) {
        curr        = func_80004980(sizeof(struct ThreadStackList), 4);
        curr->next  = NULL;
        curr->stack = NULL;
        curr->size  = size;

        if (prev != NULL) {
            prev->next = curr;
        } else {
            D_800466C4 = curr;
        }
    }

    if (curr->stack != NULL) {
        ret = curr->stack;

        curr->stack = curr->stack->next;
    } else {
        ret = func_80004980(size + offsetof(struct ThreadStackNode, stack), 8);

        ret->stackSize = size;
    }

    ret->next = NULL;
    D_800466B8++;
    return ret;
}

struct ThreadStackNode *func_80007564(void) {
    return func_80007488(D_800466BC);
}

void func_80007588(struct ThreadStackNode *node) {
    struct ThreadStackList *parent;

    parent = D_800466C4;
    while (parent != NULL) {
        if (parent->size == node->stackSize) { break; }

        parent = parent->next;
    }
    // L800075BC
    if (parent == NULL) {
        fatal_printf("om : Illegal GObjThreadStack Link\n");
        while (TRUE) { }
    }

    node->next    = parent->stack;
    parent->stack = node;
    D_800466B8--;
}

struct GObjProcess *func_80007604(void);
#ifdef NON_MATCHING
struct GObjProcess *func_80007604(void) {
    // nonmatching: regalloc off by one in final block (for D_800466E8)
    struct GObjProcess *v1;

    v1 = D_800466CC;
    if (v1 == NULL) {
        D_800466CC        = func_80004980(sizeof(struct GObjProcess), 4);
        D_800466CC->unk00 = NULL;
        v1                = D_800466CC;
    }
    // L8000763C
    if (v1 == NULL) {
        fatal_printf("om : couldn\'t get GObjProcess\n");
        while (TRUE) { }
    }
    // L80007658
    D_800466CC = v1->unk00;
    D_800466E8++;

    return v1;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007604.s")
#endif

struct GObjSub18 {
    /* 0x00 */ u32 unk00; // id
    /* 0x04 */ struct GObjSub18 *unk04;
    /* 0x08 */ struct GObjSub18 *unk08;
    /* 0x0C */ u8 unk0C; // link
    /* 0x0D */ u8 unk0D; // dl link
    /* 0x0E */ u8 unk0E;
    /* 0x0F */ u8 unk0F; // ptr kind?
    /* 0x10 */ u32 unk10;
    /* 0x14 */ void (*unk14)(void);
    /* 0x18 */ struct GObjProcess *unk18;
    /* 0x1C */ struct GObjProcess *unk1C;
    /* 0x20 */ struct GObjSub18 *unk20;
    /* 0x24 */ struct GObjSub18 *unk24;
    /* 0x28 */ u32 unk28;
    /* 0x2C */ void (*unk2C)(struct GObjSub18 *);
    /* 0x30 */ s64 unk30;
    /* 0x38 */ s32 unk38;
    /* 0x3C */ u8 pad3C[4];
    /* 0x40 */ s64 unk40;
    /* 0x48 */ u8 pad48[0x70 - 0x48];
    /* 0x70 */ s32 unk70;
    // typed based on unk0F?
    // 0 : NULL
    // 1 : DObj
    // 2 : SObj
    // 3 : OMCamera
    /* 0x74 */ void *unk74;
    /* 0x78 */ f32 unk78;
    /* 0x7C */ s32 unk7C;
    /* 0x80 */ s32 unk80;
    /* 0x84 */ s32 unk84;
}; // size >= 0x88

void func_80007680(struct GObjProcess *arg0);
#ifdef NON_MATCHING
void func_80007680(struct GObjProcess *arg0) {
    // nonmatching: regalloc off for most of the variables...
    struct GObjProcess *v1;
    s32 a1;
    struct GObjSub18 *a2;
    struct GObjSub18 *v0;

    v0 = a2 = arg0->unk18;
    a1      = a2->unk0C;
    while (TRUE) {
        // L80007698
        while (a2 != NULL) {
            // L800076A4
            v1 = a2->unk1C;
            while (v1 != NULL) {
                // L800076B0
                if (arg0->unk10 == v1->unk10) {
                    arg0->unk08 = v1->unk08;
                    v1->unk08   = arg0;
                    arg0->unk0C = v1;

                    goto nested_loop_end;
                }
                v1 = v1->unk04;
            }
            // L800076DC
            a2 = a2->unk08;
        }
        // L800076E4
        if (a1) {
            a2 = D_80046778[--a1];
        } else {
            // L800076FC
            arg0->unk08             = D_800466D0[arg0->unk10];
            D_800466D0[arg0->unk10] = arg0;
            arg0->unk0C             = NULL;
            break;
        }
    }
// L8000771C
nested_loop_end:
    if (arg0->unk08 != NULL) { arg0->unk08->unk0C = arg0; }
    // L80007730
    if (v0->unk1C != NULL) {
        v0->unk1C->unk00 = arg0;
    } else {
        v0->unk18 = arg0;
    }
    // L80007744
    arg0->unk04 = v0->unk1C;
    arg0->unk00 = NULL;
    v0->unk1C   = arg0;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007680.s")
#endif

void func_80007758(struct GObjProcess *op) {
    op->unk00  = D_800466CC;
    D_800466CC = op;
    D_800466E8--;
}

void func_80007784(struct GObjProcess *obj) {
    if (obj->unk0C != NULL) {
        obj->unk0C->unk08 = obj->unk08;
    } else {
        D_800466D0[obj->unk10] = obj->unk08;
    }

    if (obj->unk08 != NULL) { obj->unk08->unk0C = obj->unk0C; }
}

void func_800077D0(struct GObjProcess *arg0) {
    struct GObjSub18 *sp1C;

    sp1C = arg0->unk18;
    func_80007784(arg0);
    if (arg0->unk04 != NULL) {
        arg0->unk04->unk00 = arg0->unk00;
    } else {
        // L8000780C
        sp1C->unk18 = arg0->unk00;
    }
    // L80007810
    if (arg0->unk00 != NULL) {
        arg0->unk00->unk04 = arg0->unk04;
    } else {
        sp1C->unk1C = arg0->unk04;
    }
}

struct GObjProcess *unref_80007840(void) {
    return D_80046A60;
}

u64 *unref_8000784C(struct GObjProcess *arg0) {
    if (arg0 == NULL) { arg0 = D_80046A60; }

    if (arg0 != NULL && arg0->unk14 == 0) { return arg0->unk1C.thread->unk1B8; }

    return NULL;
}

s32 unref_80007884(struct GObjProcess *arg0) {
    if (arg0 == NULL) { arg0 = D_80046A60; }

    if (arg0 != NULL && arg0->unk14 == 0) { return arg0->unk1C.thread->unk1BC; }

    return NULL;
}

void unref_800078BC(void (*arg0)(struct GObjProcess *)) {
    D_800466C8 = arg0;
}

s32 func_800078C8(void) {
    struct GObjSub18 *curr = D_800467FC;
    s32 i                  = 0;

    while (curr != NULL) {
        i++;
        curr = curr->unk04;
    }

    return i + D_80046A0C;
}

struct GObjSub18 *func_800078FC(void) {
    struct GObjSub18 *v1;

    if (D_80046A12 == -1 || D_80046A0C < D_80046A12) {
        v1 = D_800467FC;
        if (v1 == NULL) {
            D_800467FC        = func_80004980(D_80046A10, 8);
            D_800467FC->unk04 = NULL;
            v1                = D_800467FC;
        }
    } else {
        return NULL;
    }

    if (v1 == NULL) { return NULL; }

    D_800467FC = v1->unk04;
    D_80046A0C++;

    return v1;
}

void func_800079A8(struct GObjSub18 *arg0) {
    arg0->unk04 = D_800467FC;
    D_800467FC  = arg0;
    D_80046A0C--;
}

void func_800079D4(struct GObjSub18 *arg0, struct GObjSub18 *arg1) {
    arg0->unk08 = arg1;
    if (arg1 != NULL) {
        arg0->unk04 = arg1->unk04;
        arg1->unk04 = arg0;
    } else {
        arg0->unk04             = D_800466F0[arg0->unk0C];
        D_800466F0[arg0->unk0C] = arg0;
    }

    if (arg0->unk04 != NULL) {
        arg0->unk04->unk08 = arg0;
    } else {
        D_80046778[arg0->unk0C] = arg0;
    }
}

void func_80007A3C(struct GObjSub18 *arg0) {
    struct GObjSub18 *curr;

    curr = D_80046778[arg0->unk0C];
    while (curr != NULL && curr->unk10 < arg0->unk10) { curr = curr->unk08; }

    func_800079D4(arg0, curr);
}

void func_80007AA8(struct GObjSub18 *arg0) {
    struct GObjSub18 *curr;
    struct GObjSub18 *found;

    curr = D_800466F0[arg0->unk0C];
    while (curr != NULL && arg0->unk10 < curr->unk10) { curr = curr->unk04; }

    if (curr != NULL) {
        found = curr->unk08;
    } else {
        found = D_80046778[arg0->unk0C];
    }

    func_800079D4(arg0, found);
}

void func_80007B30(struct GObjSub18 *arg0) {
    if (arg0->unk08 != NULL) {
        arg0->unk08->unk04 = arg0->unk04;
    } else {
        D_800466F0[arg0->unk0C] = arg0->unk04;
    }

    if (arg0->unk04 != NULL) {
        arg0->unk04->unk08 = arg0->unk08;
    } else {
        D_80046778[arg0->unk0C] = arg0->unk08;
    }
}

void func_80007B98(struct GObjSub18 *arg0, struct GObjSub18 *arg1) {
    arg0->unk24 = arg1;

    if (arg1 != NULL) {
        arg0->unk20 = arg1->unk20;
        arg1->unk20 = arg0;
    } else {
        arg0->unk20             = D_80046800[arg0->unk0D];
        D_80046800[arg0->unk0D] = arg0;
    }

    if (arg0->unk20 != NULL) {
        arg0->unk20->unk24 = arg0;
    } else {
        D_80046908[arg0->unk0D] = arg0;
    }
}

void func_80007C00(struct GObjSub18 *arg0) {
    struct GObjSub18 *csr;

    csr = D_80046908[arg0->unk0D];
    while (csr != NULL && csr->unk28 < arg0->unk28) { csr = csr->unk24; }
    func_80007B98(arg0, csr);
}

void func_80007C6C(struct GObjSub18 *arg0) {
    struct GObjSub18 *curr;
    struct GObjSub18 *found;

    curr = D_80046800[arg0->unk0D];
    while (curr != NULL && arg0->unk28 < curr->unk28) { curr = curr->unk20; }

    if (curr != NULL) {
        found = curr->unk24;
    } else {
        found = D_80046908[arg0->unk0D];
    }

    func_80007B98(arg0, found);
}

void func_80007CF4(struct GObjSub18 *arg0) {
    if (arg0->unk24 != NULL) {
        arg0->unk24->unk20 = arg0->unk20;
    } else {
        D_80046800[arg0->unk0D] = arg0->unk20;
    }

    if (arg0->unk20 != NULL) {
        arg0->unk20->unk24 = arg0->unk24;
    } else {
        D_80046908[arg0->unk0D] = arg0->unk24;
    }
}

struct OMMtx {
    /* 0x00 */ struct OMMtx *next;
    /* 0x04 */ u8 unk04;
    /* 0x05 */ u8 unk05;
    /* 0x08 */ u32 pad08;
    /* 0x0C */ u8 pad0C[0x48 - 0xc];
}; // size == 0x48

struct OMMtx *func_80007D5C(void);
#ifdef NON_MATCHING
struct OMMtx *func_80007D5C(void) {
    struct OMMtx *v1;

    v1 = D_80046A14;
    if (v1 == NULL) {
        D_80046A14       = func_80004980(sizeof(struct OMMtx), 8);
        D_80046A14->next = NULL;
    }

    v1 = D_80046A14;
    if (v1 == NULL) {
        fatal_printf("om : couldn\'t get OMMtx\n");
        while (TRUE) { }
    }

    // nonmatching: regalloc off for D_80046A18 increment
    D_80046A14 = v1->next;
    D_80046A18++;
    return v1;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007D5C.s")
#endif

void func_80007DD8(struct OMMtx *mtx) {
    mtx->next  = D_80046A14;
    D_80046A14 = mtx;
    D_80046A18--;
}

struct AObj {
    /* 0x00 */ struct AObj *next;
    /* 0x04 */ u8 unk04;
    /* 0x05 */ u8 unk05;
    /* 0x08 */ f32 unk08;
    /* 0x0C */ f32 unk0C;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ s32 unk20;
}; // size == 0x24

struct AObj *func_80007E04(void);
#ifdef NON_MATCHING
struct AObj *func_80007E04(void) {
    struct AObj *v1;

    v1 = D_80046A20;
    if (v1 == NULL) {
        D_80046A20       = func_80004980(sizeof(struct AObj), 4);
        D_80046A20->next = NULL;
    }

    v1 = D_80046A20;
    if (v1 == NULL) {
        fatal_printf("om : couldn\'t get AObj\n");
        while (TRUE) { }
    }

    // nonmatching: regalloc off for D_80046A24 increment
    D_80046A20 = v1->next;
    D_80046A24++;
    return v1;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007E04.s")
#endif

struct OMAnimation {
    /* 0x00 */ u8 pad00[0x6C - 0];
    /* 0x6C */ struct AObj *unk6C;
    /* 0x70 */ u8 pad70[0x74 - 0x70];
    /* 0x74 */ f32 unk74;
    /* 0x78 */ u8 pad78[0x90 - 0x78];
    /* 0x90 */ struct AObj *unk90;
    /* 0x94 */ u32 pad94;
    /* 0x98 */ f32 unk98;
}; // size >= 0x9C

void func_80007E80(struct OMAnimation *arg0, struct AObj *arg1) {
    arg1->next  = arg0->unk6C;
    arg0->unk6C = arg1;
}

void func_80007E90(struct OMAnimation *arg0, struct AObj *arg1) {
    arg1->next  = arg0->unk90;
    arg0->unk90 = arg1;
}

// `arg0` might not be an `OMAnimation`, as this function is an exact
// copy of `func_80007E80`
void func_80007EA0(struct OMAnimation *arg0, struct AObj *arg1) {
    arg1->next  = arg0->unk6C;
    arg0->unk6C = arg1;
}

void func_80007EB0(struct AObj *a) {
    a->next = D_80046A20;
    D_80046A24--;
    D_80046A20 = a;
}

// texture scroll? (from K64)
struct MObjSub {
    /* 0x00 */ u8 pad00[0x14 - 0];
    /* 0x14 */ f32 unk14;
    /* 0x18 */ u32 pad18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ u32 pad20;
    /* 0x24 */ f32 unk24;
    /* 0x28 */ f32 unk28;
    /* 0x2C */ u8 pad2C[0x54 - 0x2C];
    /* 0x54 */ u8 unk54;
    /* 0x58 */ u8 pad58[0x78 - 0x58];
}; // size == 0x78

struct MObj {
    /* 0x00 */ struct MObj *next;
    /* 0x04 */ u32 pad04;
    /* 0x08 */ struct MObjSub unk08;
    /* 0x80 */ u16 unk80;
    /* 0x82 */ u16 unk82;
    /* 0x84 */ f32 unk84;
    /* 0x88 */ f32 unk88;
    /* 0x8C */ u32 pad8C;
    /* 0x90 */ struct AObj *unk90;
    /* 0x94 */ s32 unk94;
    /* 0x98 */ f32 unk98;
    /* 0x9C */ f32 unk9C;
    /* 0xA0 */ f32 unkA0;
    /* 0xA4 */ u32 padA4;
}; // size = 0xA8

struct MObj *func_80007EDC(void);
#ifdef NON_MATCHING
struct MObj *func_80007EDC(void) {
    struct MObj *v1;

    if ((v1 = D_80046A28) == NULL) {
        D_80046A28       = func_80004980(sizeof(struct MObj), 4);
        D_80046A28->next = NULL;
    }

    if ((v1 = D_80046A28) == NULL) {
        fatal_printf("om : couldn\'t get MObj\n");
        while (TRUE) { }
    }

    // nonmatching: same regalloc issues as other `get_object_***` functions
    D_80046A28 = v1->next;
    D_80046A2C++;
    return v1;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007EDC.s")
#endif

void func_80007F58(struct MObj *obj) {
    obj->next = D_80046A28;
    D_80046A2C--;
    D_80046A28 = obj;
}

struct DObj *func_80007F84(void);
#ifdef NON_MATCHING
struct DObj *func_80007F84(void) {
    struct DObj *v1;

    if ((v1 = D_80046A30) == NULL) {
        D_80046A30       = func_80004980(D_80046A38, 8);
        D_80046A30->unk0 = NULL;
    }

    if ((v1 = D_80046A30) == NULL) {
        fatal_printf("om : couldn\'t get DObj\n");
        while (TRUE) { }
    }

    // nonmatching: same regalloc issues as other `get_object_***` functions
    D_80046A30 = v1->unk0;
    D_80046A34++;
    return v1;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007F84.s")
#endif

void func_80008004(struct DObj *obj) {
    obj->unk0 = D_80046A30;
    D_80046A34--;
    D_80046A30 = obj;
}

struct SObjSub10 {
    /* 0x00 */ u32 pad00;
    /* 0x04 */ u8 pad04[0x44 - 0x04];
}; // size == 0x44

struct SObj {
    /* 0x00 */ struct SObj *next;
    /* 0x04 */ struct GObjSub18 *unk04;
    /* 0x08 */ struct SObj *unk08;
    /* 0x0C */ struct SObj *unk0C;
    /* 0x10 */ struct SObjSub10 unk10;
    /* 0x54 */ s32 unk54;
}; // size >= 0x58

struct SObj *func_80008030(void);
#ifdef NON_MATCHING
struct SObj *func_80008030(void) {
    struct SObj *v1;

    if ((v1 = D_80046A3C) == NULL) {
        D_80046A3C       = func_80004980(D_80046A44, 8);
        D_80046A3C->next = NULL;
    }

    if ((v1 = D_80046A3C) == NULL) {
        fatal_printf("om : couldn\'t get SObj\n");
        while (TRUE) { }
    }

    // nonmatching: same regalloc issues as other `get_object_***` functions
    D_80046A3C = v1->next;
    D_80046A40++;
    return v1;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008030.s")
#endif

void func_800080B0(struct SObj *obj) {
    obj->next = D_80046A3C;
    D_80046A40--;
    D_80046A3C = obj;
}

struct OMCamera {
    /* 0x00 */ struct OMCamera *next;
    /* 0x04 */ struct GObjSub18 *unk04;
    /* 0x08 */ Vp unk08;
    /* 0x18 */ union {
        struct Mtx6Float f6;
        struct Mtx7Float f7;
    } unk18;
    /* 0x38 */ struct Mtx3x3Float unk38;
    /* 0x60 */ s32 unk60;
    /* 0x64 */ struct OMMtx *unk64[2];
    /* 0x6C */ struct AObj *unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ f32 unk74;
    /* 0x78 */ f32 unk78;
    /* 0x7C */ f32 unk7C;
    /* 0x80 */ s32 unk80;
    /* 0x84 */ s32 unk84;
    /* 0x88 */ s32 unk88;
    /* 0x8C */ s32 unk8C;
}; // size >= 0x90

struct OMCamera *func_800080DC(void);
#ifdef NON_MATCHING
struct OMCamera *func_800080DC(void) {
    struct OMCamera *v1;

    if ((v1 = D_80046A48) == NULL) {
        D_80046A48       = func_80004980(D_80046A50, 8);
        D_80046A48->next = NULL;
    }

    if ((v1 = D_80046A48) == NULL) {
        fatal_printf("om : couldn\'t get Camera\n");
        while (TRUE) { }
    }

    // nonmatching: same regalloc issues as other `get_object_***` functions
    D_80046A48 = v1->next;
    D_80046A4C++;
    return v1;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800080DC.s")
#endif

void func_8000815C(struct OMCamera *obj) {
    obj->next = D_80046A48;
    D_80046A4C--;
    D_80046A48 = obj;
}

struct GObjProcess *func_80008188(struct GObjSub18 *sub, void *ptr, u8 kind, u32 pri) {
    struct ThreadStackNode *stackNode; // sp2C
    struct GObjThread *thread;         // sp28
    struct GObjProcess *process;       // sp24

    if (sub == NULL) { sub = D_80046A54; }

    process = func_80007604();
    if (pri >= 6) {
        fatal_printf("om : GObjProcess\'s priority is bad value\n");
        while (TRUE) { }
    }
    process->unk10 = pri;
    process->unk14 = kind;
    process->unk15 = 0;
    process->unk18 = sub;
    process->unk20 = ptr;

    switch (kind) {
        case 0:
        {
            thread                = func_800073E0();
            process->unk1C.thread = thread;

            stackNode      = func_80007564();
            thread->unk1B8 = stackNode->stack;
            thread->unk1BC = D_800466BC;
            osCreateThread(
                &thread->unk08, D_8003B870++, ptr, sub, &thread->unk1B8[D_800466BC / 8], 51);
            thread->unk1B8[7] = 0xFEDCBA98;
            if (D_8003B870 >= 20000000) { D_8003B870 = 10000000; }

            break;
        }
        case 1:
        {
            process->unk1C.cb = ptr;
            break;
        }
        default:
        {
            fatal_printf("om : GObjProcess\'s kind is bad value\n");
            while (TRUE) { }
        }
    }

    func_80007680(process);
    return process;
}

struct GObjProcess *
unref_80008304(struct GObjSub18 *ctx, void (*entry)(void *), u32 pri, s32 threadId, u32 stackSize) {
    struct GObjProcess *process; // s0
    struct GObjThread *thread;   // v1 / sp28
    struct ThreadStackNode *stackNode;
    OSId tid;

    if (ctx == NULL) { ctx = D_80046A54; }

    process = func_80007604();

    if (pri >= 6) {
        fatal_printf("om : GObjProcess\'s priority is bad value\n");
        while (TRUE) { }
    }

    process->unk10 = pri;
    process->unk15 = 0;
    process->unk18 = ctx;
    process->unk20 = entry;

    process->unk1C.thread = thread = func_800073E0();
    process->unk14                 = 0;

    stackNode      = stackSize == 0 ? func_80007564() : func_80007488(stackSize);
    thread->unk1B8 = stackNode->stack;
    thread->unk1BC = stackSize == 0 ? D_800466BC : stackSize;
    tid            = threadId != -1 ? threadId : D_8003B870++;

    osCreateThread(&thread->unk08, tid, entry, ctx, &thread->unk1B8[thread->unk1BC / 8], 51);
    thread->unk1B8[7] = 0xFEDCBA98;
    if (D_8003B870 >= 20000000) { D_8003B870 = 10000000; }

    func_80007680(process);
    return process;
}

void func_8000848C(struct GObjProcess *arg0) {
    struct ThreadStackNode *tnode;

    if (arg0 == NULL || arg0 == D_80046A60) {
        D_80046A64 = 1;
        if (D_80046A60->unk14 == 0) { func_8000B1E8(1); }
        return;
    }

    if (D_800466C8 != NULL) { D_800466C8(arg0); }

    switch (arg0->unk14) {
        case 0:
        {
            osDestroyThread(&arg0->unk1C.thread->unk08);
            // cast from stack pointer back to stack node
            tnode =
                (void
                     *)((uintptr_t)(arg0->unk1C.thread->unk1B8) - offsetof(struct ThreadStackNode, stack));
            func_80007588(tnode);
            func_8000745C(arg0->unk1C.thread);
            break;
        }
        case 1:
        {
            // required empty case
        }
    }

    func_800077D0(arg0);
    func_80007758(arg0);
}

struct OMMtx *func_8000855C(struct DObj *arg0, u8 arg1, u8 arg2, s32 arg3);
#ifdef NON_MATCHING
// nonmatching: closer than it has any right to be, but the "wtf" loop is still way off
struct OMMtx *func_8000855C(struct DObj *arg0, u8 arg1, u8 arg2, s32 arg3) {
    uintptr_t csr;        // v1
    struct Mtx3Float *t2; // sp28
    struct Mtx4Float *t1; // sp24
    struct Mtx3Float *t4; // sp20
    s32 i;                // a0
    struct OMMtx *mtx;    // v0

    if (arg0->unk56 == 5) {
        fatal_printf("om : couldn\'t add OMMtx for DObj\n");
        while (TRUE) { }
    }
    // L8000859C
    if (arg0->unk4C != NULL) {
        csr = (uintptr_t)arg0->unk4C->data;
        for (i = 0; i < 3; i++) {
            // L800085C8
            switch (arg0->unk4C->kinds[i]) {
                case 0: break;
                case 1:
                    t2 = (void *)csr;
                    csr += sizeof(struct Mtx3Float);
                    break;
                case 2:
                    t1 = (void *)csr;
                    csr += sizeof(struct Mtx4Float);
                    break;
                case 3:
                    t4 = (void *)csr;
                    csr += sizeof(struct Mtx3Float);
                    break;
            }
            // L80008618
        }
    }
    // L8000862C
    if (arg3 < arg0->unk56) {
        for (i = arg3; i < arg0->unk56; i++) {
            // wtf
            ((u32 *)arg0)[arg0->unk56 - i + 0x5C] = ((u32 *)arg0)[arg0->unk56 - i + 0x54];
        }
    }
    // L8000866C
    arg0->unk56 += 1;

    mtx = func_80007D5C();

    arg0->unk58[arg3] = mtx;
    mtx->unk04        = arg1;

    switch (arg1) {
        case 18:
        case 34:
        case 36:
        case 38:
        case 40:
        case 55:
        {
            // L800086D0
            arg0->unk18     = D_8003B8DC;
            arg0->unk18.mtx = mtx;
            break;
        }
        case 19:
        case 23:
        {
            // L80008700
            arg0->unk28     = D_8003B8EC;
            arg0->unk28.mtx = mtx;
            break;
        }
        case 20:
        case 24:
        {
            // L80008738
            arg0->unk18     = D_8003B8DC;
            arg0->unk28     = D_8003B8EC;
            arg0->unk18.mtx = mtx;
            arg0->unk28.mtx = mtx;
            break;
        }
        case 21:
        case 26:
        case 29:
        {
            // L8000879C
            arg0->unk28     = D_8003B900;
            arg0->unk28.mtx = mtx;
            break;
        }
        case 22:
        case 27:
        case 30:
        case 51:
        case 52:
        {
            // L800087D4
            arg0->unk18     = D_8003B8DC;
            arg0->unk28     = D_8003B900;
            arg0->unk18.mtx = mtx;
            arg0->unk28.mtx = mtx;
            break;
        }
        case 25:
        {
            // L80008838
            arg0->unk18     = D_8003B8DC;
            arg0->unk28     = D_8003B8EC;
            arg0->unk3C     = D_8003B914;
            arg0->unk18.mtx = mtx;
            arg0->unk28.mtx = mtx;
            arg0->unk3C.mtx = mtx;
            break;
        }
        case 28:
        case 31:
        case 54:
        {
            // L800088C8
            arg0->unk18     = D_8003B8DC;
            arg0->unk28     = D_8003B900;
            arg0->unk3C     = D_8003B914;
            arg0->unk18.mtx = mtx;
            arg0->unk28.mtx = mtx;
            arg0->unk3C.mtx = mtx;
            break;
        }
        case 32:
        case 43:
        case 44:
        case 47:
        case 48:
        case 49:
        case 50:
        case 53:
        {
            // L80008958
            arg0->unk3C     = D_8003B914;
            arg0->unk3C.mtx = mtx;
            break;
        }
        case 45:
        case 46:
        {
            // L80008988
            arg0->unk28     = D_8003B8EC;
            arg0->unk3C     = D_8003B914;
            arg0->unk28.mtx = mtx;
            arg0->unk3C.mtx = mtx;
            break;
        }
        case 56:
        {
            // L800089EC
            *t2     = D_8003B8DC;
            t2->mtx = mtx;
            break;
        }
        case 57:
        {
            // L80008A1C
            *t1     = D_8003B8EC;
            t1->mtx = mtx;
            break;
        }
        case 58:
        {
            // L80008A54
            *t1       = D_8003B900;
            (t1)->mtx = mtx;
            break;
        }
        case 59:
        {
            // L80008A8C
            *t4     = D_8003B914;
            t4->mtx = mtx;
            break;
        }
        case 60:
        {
            // L80008ABC
            *t2     = D_8003B8DC;
            *t1     = D_8003B8EC;
            t2->mtx = mtx;
            t1->mtx = mtx;
            break;
        }
        case 61:
        {
            // L80008B20
            *t2     = D_8003B8DC;
            *t1     = D_8003B8EC;
            *t4     = D_8003B914;
            t2->mtx = mtx;
            t1->mtx = mtx;
            t4->mtx = mtx;
            break;
        }
        case 62:
        {
            // L80008BB0
            *t2     = D_8003B8DC;
            *t1     = D_8003B900;
            t2->mtx = mtx;
            t1->mtx = mtx;
            break;
        }
        case 63:
        {
            // L80008C14
            *t2     = D_8003B8DC;
            *t1     = D_8003B900;
            *t4     = D_8003B914;
            t2->mtx = mtx;
            t1->mtx = mtx;
            t4->mtx = mtx;
            break;
        }
        case 1:
        case 17:
        {
            // empty branch?
            // could be for any and all cases between 1 and 17
        }
    }
    // L80008CA0
    mtx->unk05 = arg2;
    return mtx;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000855C.s")
#endif

void func_80008CC0(struct DObj *arg0, u8 arg1, u8 arg2) {
    func_8000855C(arg0, arg1, arg2, arg0->unk56);
}

struct OMMtx *func_80008CF0(struct OMCamera *arg0, u8 arg1, u8 arg2) {
    struct OMMtx *mtx; // v0

    if (arg0->unk60 == 2) {
        fatal_printf("om : couldn\'t add OMMtx for Camera\n");
        while (TRUE) { }
    }
    // L80008D2C
    mtx                      = func_80007D5C();
    arg0->unk64[arg0->unk60] = mtx;
    arg0->unk60++;
    mtx->unk04 = arg1;

    switch (arg1) {
        case 3:
        case 4:
        {
            // jtgt_80008D84
            arg0->unk18.f6     = D_8003B878;
            arg0->unk18.f6.mtx = mtx;
            break;
        }
        case 5:
        {
            // jtgt_80008DCC
            arg0->unk18.f7     = D_8003B894;
            arg0->unk18.f7.mtx = mtx;
            break;
        }
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        {
            // jtgt_80008E1C
            arg0->unk38     = D_8003B8B4;
            arg0->unk38.mtx = mtx;
            break;
        }
        case 1:
        case 2:
        {
            // empty
        }
    }

    mtx->unk05 = arg2;
    return mtx;
}

struct AObj *func_80008E78(struct OMAnimation *anim, u8 index) {
    struct AObj *aobj = func_80007E04();

    aobj->unk04 = index;
    aobj->unk05 = 0;
    aobj->unk20 = 0;
    aobj->unk1C = 0.0;
    aobj->unk18 = 0.0;
    aobj->unk14 = 0.0;
    aobj->unk10 = 0.0;
    aobj->unk0C = 0.0;
    aobj->unk08 = 1.0;

    func_80007E80(anim, aobj);

    return aobj;
}

#define MAX_FLOAT     3.4028235e38
#define MAX_NEG_FLOAT -MAX_FLOAT

void func_80008EE4(struct OMAnimation *arg0) {
    struct AObj *curr;
    struct AObj *origNext;

    curr = arg0->unk6C;
    while (curr != NULL) {
        origNext = curr->next;
        func_80007EB0(curr);
        curr = origNext;
    }
    arg0->unk6C = NULL;
    arg0->unk74 = MAX_NEG_FLOAT;
}

struct AObj *func_80008F44(struct OMAnimation *anim, u8 index) {
    struct AObj *aobj = func_80007E04();

    aobj->unk04 = index;
    aobj->unk05 = 0;
    aobj->unk20 = 0;
    aobj->unk1C = 0.0;
    aobj->unk18 = 0.0;
    aobj->unk14 = 0.0;
    aobj->unk10 = 0.0;
    aobj->unk0C = 0.0;
    aobj->unk08 = 1.0;

    func_80007E90(anim, aobj);

    return aobj;
}

void func_80008FB0(struct OMAnimation *arg0) {
    struct AObj *curr;
    struct AObj *origNext;

    curr = arg0->unk90;
    while (curr != NULL) {
        origNext = curr->next;
        func_80007EB0(curr);
        curr = origNext;
    }
    arg0->unk90 = NULL;
    arg0->unk98 = MAX_NEG_FLOAT;
}

struct AObj *func_80009010(struct OMAnimation *anim, u8 index) {
    struct AObj *aobj = func_80007E04();

    aobj->unk04 = index;
    aobj->unk05 = 0;
    aobj->unk20 = 0;
    aobj->unk1C = 0.0;
    aobj->unk18 = 0.0;
    aobj->unk14 = 0.0;
    aobj->unk10 = 0.0;
    aobj->unk0C = 0.0;
    aobj->unk08 = 1.0;

    func_80007EA0(anim, aobj);

    return aobj;
}

void unref_8000907C(struct OMAnimation *arg0) {
    struct AObj *curr;
    struct AObj *origNext;

    curr = arg0->unk6C;
    while (curr != NULL) {
        origNext = curr->next;
        func_80007EB0(curr);
        curr = origNext;
    }
    arg0->unk6C = NULL;
    arg0->unk74 = MAX_NEG_FLOAT;
}

struct MObj *func_800090DC(struct DObj *arg0, struct MObjSub *arg1);
#ifdef NON_MATCHING
// nonmatching: regalloc and ordering for the final set of initialization statements
struct MObj *func_800090DC(struct DObj *arg0, struct MObjSub *arg1) {
    struct MObj *mobj; // a1, v0?

    mobj = func_80007EDC();

    if (arg0->unk80 != NULL) {
        struct MObj *curr  = arg0->unk80->next;
        struct MObj *prior = arg0->unk80;
        while (curr != NULL) {
            prior = curr;
            curr  = curr->next;
        }
        prior->next = mobj;
    } else {
        // L80009138
        arg0->unk80 = mobj;
    }

    mobj->next  = NULL;
    mobj->unk84 = (f32)arg1->unk54 / 255.0f;
    mobj->unk08 = *arg1;

    mobj->unk08.unk24 = arg1->unk14;
    mobj->unk08.unk28 = arg1->unk1C;
    mobj->unk80       = 0;
    mobj->unk82       = 0;
    mobj->unk88       = 0;
    mobj->unk90       = NULL;
    mobj->unk94       = 0;
    mobj->unk98       = MAX_NEG_FLOAT;
    mobj->unk9C       = 1.0;
    mobj->unkA0       = 0.0;

    return mobj;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800090DC.s")
#endif

void func_800091F4(struct DObj *obj) {
    struct MObj *currM;
    struct MObj *nextM;
    struct AObj *currA;
    struct AObj *nextA;

    currM = obj->unk80;
    while (currM != NULL) {
        currA = currM->unk90;
        while (currA != NULL) {
            nextA = currA->next;
            func_80007EB0(currA);
            currA = nextA;
        }
        nextM = currM->next;
        func_80007F58(currM);
        currM = nextM;
    }
    obj->unk80 = NULL;
}

void func_8000926C(struct DObj *arg0);
#ifdef NON_MATCHING
// nonmatching: cannot get the 1 constant to be not constant...
void func_8000926C(struct DObj *arg0) {
    s32 i = 1;

    arg0->unk4C = 0;
    arg0->unk54 = 0;
    arg0->unk55 = 0;
    arg0->unk56 = 0;

    arg0->unk58[0] = NULL;
    for (; i < 5; i++) { arg0->unk58[i] = NULL; }
    arg0->unk6C = NULL;
    arg0->unk70 = 0;
    arg0->unk74 = MAX_NEG_FLOAT;
    arg0->unk78 = 1.0;
    arg0->unk7C = 0.0;
    arg0->unk80 = 0;
    arg0->unk84 = 0;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000926C.s")
#endif

struct DObj *func_800092D0(struct GObjSub18 *arg0, s32 arg1) {
    struct DObj *newObj;
    struct DObj *curr;

    if (arg0 == NULL) { arg0 = D_80046A54; }

    newObj = func_80007F84();
    if (arg0->unk74 != NULL) {
        curr = arg0->unk74;

        while (curr->unk8 != NULL) { curr = curr->unk8; }

        curr->unk8   = newObj;
        newObj->unkC = curr;
    } else {
        arg0->unk0F  = 1;
        arg0->unk74  = newObj;
        newObj->unkC = NULL;
    }

    newObj->unk4  = arg0;
    newObj->unk14 = 1;
    newObj->unk8  = NULL;
    newObj->unk10 = NULL;
    newObj->unk50 = arg1;

    func_8000926C(newObj);

    return newObj;
}

struct DObj *func_80009380(struct DObj *arg0, s32 arg1) {
    struct DObj *newObj;

    newObj = func_80007F84();
    if (arg0->unk8 != NULL) { arg0->unk8->unkC = newObj; }
    newObj->unkC  = arg0;
    newObj->unk8  = arg0->unk8;
    arg0->unk8    = newObj;
    newObj->unk4  = arg0->unk4;
    newObj->unk14 = arg0->unk14;

    newObj->unk10 = NULL;
    newObj->unk50 = arg1;
    func_8000926C(newObj);

    return newObj;
}

struct DObj *func_800093F4(struct DObj *arg0, s32 arg1) {
    struct DObj *newObj;
    struct DObj *curr;

    newObj = func_80007F84();
    if (arg0->unk10 != NULL) {
        curr = arg0->unk10;

        while (curr->unk8 != NULL) { curr = curr->unk8; }

        curr->unk8   = newObj;
        newObj->unkC = curr;
    } else {
        arg0->unk10  = newObj;
        newObj->unkC = NULL;
    }

    newObj->unk4  = arg0->unk4;
    newObj->unk14 = (uintptr_t)arg0;
    newObj->unk10 = NULL;
    newObj->unk8  = NULL;
    newObj->unk50 = arg1;

    func_8000926C(newObj);

    return newObj;
}

// drop_dobj, cleanup_dobj, free_dobj?
void func_8000948C(struct DObj *arg0) {
    s32 i;
    struct AObj *currA;
    struct AObj *nextA;
    struct MObj *currM;
    struct MObj *nextM;

    while (arg0->unk10 != NULL) { func_8000948C(arg0->unk10); }

    if (arg0->unk14 == 1) {
        if (arg0 == arg0->unk4->unk74) {
            arg0->unk4->unk74 = arg0->unk8;
            if (arg0->unk4->unk74 == NULL) { arg0->unk4->unk0F = 0; }
        }
    } else if (arg0 == ((struct DObj *)arg0->unk14)->unk10) {
        ((struct DObj *)arg0->unk14)->unk10 = arg0->unk8;
    }

    if (arg0->unkC != NULL) { arg0->unkC->unk8 = arg0->unk8; }

    if (arg0->unk8 != NULL) { arg0->unk8->unkC = arg0->unkC; }

    for (i = 0; i < ARRAY_COUNT(arg0->unk58); i++) {
        if (arg0->unk58[i] != NULL) { func_80007DD8(arg0->unk58[i]); }
    }

    if (arg0->unk4C != NULL && D_80046A1C != NULL) { D_80046A1C(arg0->unk4C); }

    currA = arg0->unk6C;
    while (currA != NULL) {
        nextA = currA->next;
        func_80007EB0(currA);
        currA = nextA;
    }

    // why not just call func_800091F4?
    currM = arg0->unk80;
    while (currM != NULL) {
        currA = currM->unk90;
        while (currA != NULL) {
            nextA = currA->next;
            func_80007EB0(currA);
            currA = nextA;
        }
        nextM = currM->next;
        func_80007F58(currM);
        currM = nextM;
    }

    func_80008004(arg0);
}

struct SObj *func_80009614(struct GObjSub18 *arg0, struct SObjSub10 *arg1) {
    struct SObj *newObj;

    if (arg0 == NULL) { arg0 = D_80046A54; }

    newObj = func_80008030();

    if (arg0->unk74 != NULL) {
        struct SObj *tail = arg0->unk74;

        while (tail->unk08 != NULL) { tail = tail->unk08; }

        tail->unk08   = newObj;
        newObj->unk0C = tail;
    } else {
        // L80009684
        arg0->unk0F   = 2;
        arg0->unk74   = newObj;
        newObj->unk0C = NULL;
    }
    // L80009690
    newObj->unk04 = arg0;
    newObj->unk08 = NULL;

    if (arg1 != NULL) { newObj->unk10 = *arg1; }
    // L800096D4
    newObj->unk54 = 0;
    return newObj;
}

void func_800096EC(struct SObj *obj) {
    if (obj == obj->unk04->unk74) {
        obj->unk04->unk74 = (void *)obj->unk08;
        if (obj->unk04->unk74 == NULL) { obj->unk04->unk0F = 0; }
    }

    if (obj->unk0C != NULL) { obj->unk0C->unk08 = obj->unk08; }

    if (obj->unk08 != NULL) { obj->unk08->unk0C = obj->unk0C; }

    func_800080B0(obj);
}

struct OMCamera *func_80009760(struct GObjSub18 *arg0) {
    s32 i;
    struct OMCamera *newCam;

    if (arg0 == NULL) { arg0 = D_80046A54; }
    arg0->unk0F = 3;

    newCam        = func_800080DC();
    arg0->unk74   = newCam;
    newCam->unk04 = arg0;
    setup_viewport(&newCam->unk08);
    newCam->unk60 = 0;
    // clang-format off
    // needs to be on separate lines
    for (i = 0; i < ARRAY_COUNT(newCam->unk64); i++) { 
        newCam->unk64[i] = NULL; 
    }
    // clang-format on
    newCam->unk80 = 0;
    newCam->unk84 = 0;
    newCam->unk88 = 0;
    newCam->unk8C = 0;
    newCam->unk6C = NULL;
    newCam->unk70 = 0;
    newCam->unk74 = MAX_NEG_FLOAT;
    newCam->unk78 = 1.0;
    newCam->unk7C = 0.0;

    return newCam;
}

// drop_om_camera, cleanup_om_camera
void func_80009810(struct OMCamera *cam) {
    struct GObjSub18 *ctx;
    s32 i;
    struct AObj *curr;
    struct AObj *next;

    ctx        = cam->unk04;
    ctx->unk0F = 0;
    ctx->unk74 = NULL;

    for (i = 0; i < ARRAY_COUNT(cam->unk64); i++) {
        if (cam->unk64[i] != NULL) { func_80007DD8(cam->unk64[i]); }
    }

    curr = cam->unk6C;
    while (curr != NULL) {
        next = curr->next;
        func_80007EB0(curr);
        curr = next;
    }

    func_8000815C(cam);
}

struct GObjSub18 *om_g_add_common(u32 id, void (*arg1)(void), u8 link, u32 arg3) {
    struct GObjSub18 *com;

    if (link >= OM_COMMON_MAX_LINKS) {
        fatal_printf("omGAddCommon() : link num over : link = %d : id = %d\n", link, id);
        while (TRUE) { }
    }

    com = func_800078FC();
    if (com == NULL) { return NULL; }

    com->unk00 = id;
    com->unk0C = link;
    com->unk10 = arg3;
    com->unk14 = arg1;
    com->unk18 = NULL;
    com->unk1C = NULL;
    com->unk70 = 0;
    com->unk7C = 0;

    com->unk0F = 0;
    com->unk74 = NULL;

    com->unk0D = 65;
    com->unk78 = 0.0f;
    com->unk80 = 0;
    com->unk84 = 0;

    return com;
}

struct GObjSub18 *func_80009968(u32 id, void (*arg1)(void), u8 link, u32 arg3) {
    struct GObjSub18 *com = om_g_add_common(id, arg1, link, arg3);

    if (com == NULL) { return NULL; }

    func_80007A3C(com);

    return com;
}

struct GObjSub18 *func_800099A8(u32 id, void (*arg1)(void), u8 link, u32 arg3) {
    struct GObjSub18 *com = om_g_add_common(id, arg1, link, arg3);

    if (com == NULL) { return NULL; }

    func_80007AA8(com);

    return com;
}

struct GObjSub18 *unref_800099E8(u32 id, void (*arg1)(void), struct GObjSub18 *arg2) {
    struct GObjSub18 *com = om_g_add_common(id, arg1, arg2->unk0C, arg2->unk10);

    if (com == NULL) { return NULL; }

    func_800079D4(com, arg2);

    return com;
}

struct GObjSub18 *unref_80009A34(u32 id, void (*arg1)(void), struct GObjSub18 *arg2) {
    struct GObjSub18 *com = om_g_add_common(id, arg1, arg2->unk0C, arg2->unk10);

    if (com == NULL) { return NULL; }

    func_800079D4(com, arg2->unk08);

    return com;
}

// system_04
extern void func_8000B39C(struct GObjSub18 *);
extern void func_8000B70C(struct GObjSub18 *);
extern void func_8000B760(struct GObjSub18 *);

void func_80009A84(struct GObjSub18 *arg0) {
    if (arg0 == NULL || arg0 == D_80046A54) {
        D_80046A64 = 2;
        return;
    }

    func_8000B39C(arg0);
    switch (arg0->unk0F) {
        case 1: func_8000B70C(arg0); break;
        case 2: func_8000B760(arg0); break;
        case 3: func_80009810(arg0->unk74); break;
    }

    if (arg0->unk0D != 65) { func_80007CF4(arg0); }
    func_80007B30(arg0);
    func_800079A8(arg0);
}

void om_g_move_common(s32 arg0, struct GObjSub18 *arg1, u8 link, u32 arg3, struct GObjSub18 *arg4) {
    struct GObjProcess *csr;
    struct GObjProcess *orig;
    struct GObjProcess *next;

    if (link >= OM_COMMON_MAX_LINKS) {
        fatal_printf("omGMoveCommon() : link num over : link = %d : id = %d\n", link, arg1->unk00);

        while (TRUE) { }
    }

    if (arg1 == NULL) { arg1 = D_80046A54; }

    orig        = arg1->unk18;
    arg1->unk18 = NULL;
    arg1->unk1C = NULL;

    csr = orig;
    while (csr != NULL) {
        func_80007784(csr);
        csr = csr->unk00;
    }
    func_80007B30(arg1);
    arg1->unk0C = link;
    arg1->unk10 = arg3;

    switch (arg0) {
        case 0: func_80007A3C(arg1); break;
        case 1: func_80007AA8(arg1); break;
        case 2: func_800079D4(arg1, arg4); break;
        case 3: func_800079D4(arg1, arg4->unk08); break;
    }

    csr = orig;
    while (csr != NULL) {
        next = csr->unk00;
        func_80007680(csr);
        csr = next;
    }
}

void func_80009C90(struct GObjSub18 *arg0, u8 link, u32 arg2) {
    om_g_move_common(0, arg0, link, arg2, NULL);
}

void func_80009CC8(struct GObjSub18 *arg0, u8 link, u32 arg2) {
    om_g_move_common(1, arg0, link, arg2, NULL);
}

void unref_80009D00(struct GObjSub18 *arg0, struct GObjSub18 *arg1) {
    om_g_move_common(2, arg0, arg1->unk0C, arg1->unk10, arg1);
}

void unref_80009D3C(struct GObjSub18 *arg0, struct GObjSub18 *arg1) {
    om_g_move_common(3, arg0, arg1->unk0C, arg1->unk10, arg1);
}

// in gtl
extern s32 D_8003B6E8;

void func_80009D78(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    u8 dlLink,
    s32 arg3,
    s32 arg4) {
    if (dlLink >= 64) {
        fatal_printf(
            "omGLinkObjDLCommon() : dl_link num over : dl_link = %d : id = %d\n",
            dlLink,
            arg0->unk00);
        while (TRUE) { }
    }

    arg0->unk0D = dlLink;
    arg0->unk28 = arg3;
    arg0->unk2C = arg1;
    arg0->unk38 = arg4;
    arg0->unk0E = D_8003B6E8 - 1;
}

void func_80009DF4(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    u8 dlLink,
    s32 arg3,
    s32 arg4) {
    if (arg0 == NULL) { arg0 = D_80046A54; }
    func_80009D78(arg0, arg1, dlLink, arg3, arg4);
    func_80007C00(arg0);
}

void unref_80009E38(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    u8 dlLink,
    s32 arg3,
    s32 arg4) {
    if (arg0 == NULL) { arg0 = D_80046A54; }
    func_80009D78(arg0, arg1, dlLink, arg3, arg4);
    func_80007C6C(arg0);
}

void unref_80009E7C(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    s32 arg2,
    struct GObjSub18 *arg3) {
    if (arg0 == NULL) { arg0 = D_80046A54; }
    func_80009D78(arg0, arg1, arg3->unk0D, arg3->unk28, arg2);
    func_80007B98(arg0, arg3);
}

void unref_80009ED0(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    s32 arg2,
    struct GObjSub18 *arg3) {
    if (arg0 == NULL) { arg0 = D_80046A54; }
    func_80009D78(arg0, arg1, arg3->unk0D, arg3->unk28, arg2);
    func_80007B98(arg0, arg3->unk08);
}

void func_80009F28(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    u32 arg2,
    s64 arg3,
    s32 arg4) {
    arg0->unk0D = 64;
    arg0->unk28 = arg2;
    arg0->unk2C = arg1;
    arg0->unk30 = arg3;
    arg0->unk38 = arg4;
    arg0->unk40 = 0;
    arg0->unk0E = D_8003B6E8 - 1;
}

void func_80009F74(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    u32 arg2,
    s64 arg3,
    s32 arg4) {
    if (arg0 == NULL) { arg0 = D_80046A54; }
    func_80009F28(arg0, arg1, arg2, arg3, arg4);
    func_80007C00(arg0);
}

void unref_80009FC0(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    u32 arg2,
    s64 arg3,
    s32 arg4) {
    if (arg0 == NULL) { arg0 = D_80046A54; }
    func_80009F28(arg0, arg1, arg2, arg3, arg4);
    func_80007C6C(arg0);
}

void unref_8000A00C(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    s64 arg2,
    s32 arg3,
    struct GObjSub18 *arg4) {
    if (arg0 == NULL) { arg0 = D_80046A54; }
    func_80009F28(arg0, arg1, arg4->unk28, arg2, arg3);
    func_80007B98(arg0, arg4);
}

void unref_8000A06C(
    struct GObjSub18 *arg0,
    void (*arg1)(struct GObjSub18 *),
    s64 arg2,
    s32 arg3,
    struct GObjSub18 *arg4) {
    if (arg0 == NULL) { arg0 = D_80046A54; }
    func_80009F28(arg0, arg1, arg4->unk28, arg2, arg3);
    func_80007B98(arg0, arg4->unk08);
}

void om_g_move_obj_dl(struct GObjSub18 *arg0, u8 dlLink, u32 arg2) {
    if (dlLink >= 64) {
        fatal_printf(
            "omGMoveObjDL() : dl_link num over : dl_link = %d : id = %d\n", dlLink, arg0->unk00);
        while (TRUE) { }
    }

    func_80007CF4(arg0);
    arg0->unk0D = dlLink;
    arg0->unk28 = arg2;
    func_80007C00(arg0);
}

void om_g_move_obj_dl_head(struct GObjSub18 *arg0, u8 dlLink, u32 arg2) {
    if (dlLink >= 64) {
        fatal_printf(
            "omGMoveObjDLHead() : dl_link num over : dl_link = %d : id = %d\n",
            dlLink,
            arg0->unk00);
        while (TRUE) { }
    }
    func_80007CF4(arg0);
    arg0->unk0D = dlLink;
    arg0->unk28 = arg2;
    func_80007C6C(arg0);
}

void unref_8000A1C8(struct GObjSub18 *arg0, struct GObjSub18 *arg1) {
    func_80007CF4(arg0);
    arg0->unk0D = arg1->unk0D;
    arg0->unk28 = arg1->unk28;
    func_80007B98(arg0, arg1);
}

void unref_8000A208(struct GObjSub18 *arg0, struct GObjSub18 *arg1) {
    func_80007CF4(arg0);
    arg0->unk0D = arg1->unk0D;
    arg0->unk28 = arg1->unk28;
    func_80007B98(arg0, arg1->unk24);
}

void func_8000A24C(struct GObjSub18 *arg0, u32 arg1) {
    func_80007CF4(arg0);
    arg0->unk28 = arg1;
    func_80007C00(arg0);
}

void unref_8000A280(struct GObjSub18 *arg0, u32 arg1) {
    func_80007CF4(arg0);
    arg0->unk28 = arg1;
    func_80007C6C(arg0);
}

void func_8000A2B4(struct GObjSub18 *arg0, struct GObjSub18 *arg1) {
    func_80007CF4(arg0);
    arg0->unk28 = arg1->unk28;
    func_80007B98(arg0, arg1);
}

void unref_8000A2EC(struct GObjSub18 *arg0, struct GObjSub18 *arg1) {
    func_80007CF4(arg0);
    arg0->unk28 = arg1->unk28;
    func_80007B98(arg0, arg1->unk08);
}

void func_8000A328(s32 arg0) {
    D_80046A12 = arg0;
}

s16 func_8000A334(void) {
    return D_80046A12;
}

void func_8000A340(void) {
    s32 i;
    s32 v1;
    struct GObjSub18 *s0;

    D_80046A58 = NULL;
    D_80046A5C = 0;

    // clang-format off
    for (i = 0, v1 = D_8003B6E8 - 1; i < ARRAY_COUNT(D_80046A88); i += 20) { 
        D_80046A88[i] = v1; 
    }
    // clang-format on

    s0 = D_80046800[64];
    while (s0 != NULL) {
        if (!(s0->unk7C & 1)) {
            D_8003B874 = 3;
            D_80046A58 = s0;
            s0->unk2C(s0);
            D_8003B874 = 0;
        }
        s0 = s0->unk20;
    }
}

struct GObjSub18 *func_8000A40C(struct GObjSub18 *arg0) {
    struct GObjSub18 *ret;

    D_8003B874 = 1;
    D_80046A54 = arg0;
    arg0->unk14();
    ret        = arg0->unk04;
    D_80046A54 = NULL;
    D_8003B874 = 0;

    switch (D_80046A64) {
        case 0: break;
        case 2:
            D_80046A64 = 0;
            func_80009A84(arg0);
            break;
        default: D_80046A64 = 0; break;
    }

    return ret;
}

void *func_8000A49C(struct GObjProcess *proc) {
    struct GObjProcess *ret;

    D_8003B874 = 2;
    D_80046A54 = proc->unk18;
    D_80046A60 = proc;

    switch (proc->unk14) {
        case 0:
        {
            osStartThread(&proc->unk1C.thread->unk08);
            osRecvMesg(&D_80046A70, NULL, OS_MESG_BLOCK);
            break;
        }
        case 1:
        {
            proc->unk1C.cb(proc->unk18);
            break;
        }
    }

    ret = proc->unk08;

    D_80046A54 = NULL;
    D_80046A60 = NULL;
    D_8003B874 = 0;

    switch (D_80046A64) {
        case 2:
        {
            D_80046A64 = 0;
            while (ret != NULL && ret->unk18 == proc->unk18) { ret = ret->unk08; }

            func_80009A84(proc->unk18);
            break;
        }
        case 1:
        {
            D_80046A64 = 0;
            func_8000848C(proc);
            break;
        }
        case 0: break;
        default: D_80046A64 = 0; break;
    }

    return ret;
}

void func_8000A5E4(void) {
    s32 i;
    struct GObjSub18 *comm;
    struct GObjProcess *proc;

    D_80046A64 = 0;
    D_80046A54 = NULL;
    D_80046A60 = NULL;

    for (i = 0; i < OM_COMMON_MAX_LINKS; i++) {
        comm = D_800466F0[i];
        while (comm != NULL) {
            if (!(comm->unk7C & 0x40) && comm->unk14 != NULL) {
                comm = func_8000A40C(comm);
            } else {
                comm = comm->unk04;
            }
        }
    }

    for (i = ARRAY_COUNT(D_800466D0) - 1; i >= 0; i--) {
        proc = D_800466D0[i];
        while (proc != NULL) {
            if (proc->unk15 == 0) {
                proc = func_8000A49C(proc);
            } else {
                proc = proc->unk08;
            }
        }
    }
}

// system05
extern void func_80014430(void);
extern void func_80017830(s32);

void func_8000A6E0(struct OMSetup *setup) {
    s32 i; // sp1C

    D_800466BC = setup->unk08;
    D_800466C0 = setup->unk14;

    if (setup->unk04 != 0) {
        struct GObjThread *csr;
        D_800466B0 = csr = setup->unk00;

        for (i = 0; i < setup->unk04 - 1; i++) {
            struct GObjThread *next = csr + 1;
            csr->next               = next;
            csr                     = next;
        }
        csr->next = NULL;
    } else {
        D_800466B0 = NULL;
    }
    // L8000A76C
    if (setup->unk10 != 0 && setup->unk08 != NULL) {
        struct ThreadStackNode *csr;

        D_800466C4        = func_80004980(sizeof(struct ThreadStackList), 4);
        D_800466C4->next  = NULL;
        D_800466C4->size  = D_800466BC;
        D_800466C4->stack = csr = setup->unk0C;

        for (i = 0; (u32)i < setup->unk10 - 1; i++) {
            csr->next =
                (void *)((uintptr_t)csr + D_800466BC + offsetof(struct ThreadStackNode, stack));
            ;
            csr->stackSize = D_800466BC;
            csr = (void *)((uintptr_t)csr + D_800466BC + offsetof(struct ThreadStackNode, stack));
        }

        csr->stackSize = D_800466BC;
        csr->next      = NULL;
    } else {
        D_800466C4 = NULL;
    }
    // L8000A838
    if (setup->unk1C != 0) {
        struct GObjProcess *csr;
        D_800466CC = csr = setup->unk18;

        for (i = 0; i < setup->unk1C - 1; i++) {
            struct GObjProcess *next = csr + 1;
            csr->unk00               = next;
            csr                      = next;
        }

        csr->unk00 = NULL;
    } else {
        D_800466CC = NULL;
    }

    // L8000A898
    for (i = 0; i < ARRAY_COUNT(D_800466D0); i++) { D_800466D0[i] = NULL; }

    if (setup->unk24 != 0) {
        struct GObjSub18 *csr;
        D_800467FC = csr = setup->unk20;

        // todo: is this the purest form?
        for (i = 0; i < setup->unk24 - 1; i++) {
            csr->unk04 = (void *)((uintptr_t)csr + setup->unk28);
            csr        = csr->unk04;
        }
        csr->unk04 = NULL;

    } else {
        D_800467FC = NULL;
    }

    // L8000A924
    D_80046A10 = setup->unk28;
    D_80046A12 = -1;
    D_80046A1C = setup->unk34;

    if (setup->unk30 != 0) {
        struct OMMtx *csr;

        D_80046A14 = csr = setup->unk2C;

        for (i = 0; i < setup->unk30 - 1; i++) {
            struct OMMtx *next = csr + 1;
            csr->next          = next;
            csr                = next;
        }
        csr->next = NULL;
    } else {
        D_80046A14 = NULL;
    }
    // L8000A9A4
    if (setup->unk3C != 0) {
        struct AObj *csr;

        D_80046A20 = csr = setup->unk38;

        for (i = 0; i < setup->unk3C - 1; i++) {
            struct AObj *next = csr + 1;
            csr->next         = next;
            csr               = next;
        }
        csr->next = NULL;
    } else {
        D_80046A20 = NULL;
    }

    // L8000AA00
    if (setup->unk44 != 0) {
        struct MObj *csr;

        D_80046A28 = csr = setup->unk40;

        for (i = 0; i < setup->unk44 - 1; i++) {
            struct MObj *next = csr + 1;
            csr->next         = next;
            csr               = next;
        }
        csr->next = NULL;

    } else {
        D_80046A28 = NULL;
    }

    // L8000AA5C
    if (setup->unk4C != 0) {
        struct DObj *csr;
        D_80046A30 = csr = setup->unk48;

        for (i = 0; i < setup->unk4C - 1; i++) {
            csr->unk0 = (void *)((uintptr_t)csr + setup->unk50);
            csr       = csr->unk0;
        }

        csr->unk0 = NULL;
    } else {
        D_80046A30 = NULL;
    }
    // L8000AAC4
    D_80046A38 = setup->unk50;

    if (setup->unk58 != 0) {
        struct SObj *csr;
        D_80046A3C = csr = setup->unk54;

        for (i = 0; i < setup->unk58 - 1; i++) {
            csr->next = (void *)((uintptr_t)csr + setup->unk5C);
            csr       = csr->next;
        }

        csr->next = NULL;
    } else {
        D_80046A3C = NULL;
    }
    // L8000AB34
    D_80046A44 = setup->unk5C;

    if (setup->unk64 != 0) {
        struct OMCamera *csr;
        D_80046A48 = csr = setup->unk60;

        for (i = 0; i < setup->unk64 - 1; i++) {
            csr->next = (void *)((uintptr_t)csr + setup->unk68);
            csr       = csr->next;
        }

        csr->next = NULL;
    } else {
        D_80046A48 = NULL;
    }
    // L8000ABA0
    D_80046A50 = setup->unk68;

    for (i = 0; i < OM_COMMON_MAX_LINKS; i++) {
        D_80046778[i] = NULL;
        D_800466F0[i] = NULL;
    }

    for (i = 0; i < 65; i++) {
        D_80046908[i] = NULL;
        D_80046800[i] = NULL;
    }

    func_80014430();
    osCreateMesgQueue(&D_80046A70, D_80046A68, ARRAY_COUNT(D_80046A68));

    D_800466B8 = D_800466B4 = D_800466E8 = D_80046A0C = D_80046A18 = D_80046A24 = D_80046A34 =
        D_80046A40 = D_80046A4C = 0;

    D_800466C8 = NULL;
    func_80017830(0);
    D_8003B874 = 0;
}

// TODOs:
// split system.h into proper headers
// generic cleanup (extern all global functions and data)
// rename? GObjSub18 = GObjCommon?
// permutter on alloc_om_ etc functions
