#include "sys/om.h"

#include "sys/gtl.h"
#include "sys/system.h"
#include "sys/system_04.h"

#include <ssb_types.h>
#include <stddef.h>

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
    /* 0x1C */ struct GObjThread *unk1C;
    // typed via unk14 / kind
    /* 0x20 */ void *unk20;
}; // size == 0x24

// data

// thread id store
OSId D_8003B870 = 10000000;

u32 D_8003B874 = 0;

f32 D_8003B878[7] = {0.0, 0.0, 30.0, 4.0 / 3.0, 100.0, 12800.0, 1.0};

f32 D_8003B894[8] = {0.0, -160.0, 160.0, -120.0, 120.0, 100.0, 12800.0, 1.0};

f32 D_8003B8B4[3][3] = {{0.0, 0.0, 0.0}, {1500.0, 0.0, 0.0}, {0.0, 0.0, 1.0}};

u32 D_8003B8D8 = 0;

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
struct GObjProcess *D_800466D0[5];
u32 D_800466E4;
u32 D_800466E8;
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
struct GObjSub18 *D_80046778[33];
struct GObjSub18 *D_800467FC;
struct GObjSub18 *D_80046800[64];
u32 D_80046900;
u32 D_80046904;
struct GObjSub18 *D_80046908[65];
s32 D_80046A0C;
u16 D_80046A10;
s16 D_80046A12;
struct OMMtx *D_80046A14;
u32 D_80046A18;
u32 D_80046A1C;
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
u32 D_80046A58;
u32 D_80046A5C;
struct GObjProcess *D_80046A60;
u32 D_80046A64;
u8 D_80046A68[8];
u8 D_80046A70[24];
u8 D_80046A88[1280];
u8 D_80046F88[24];

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

struct GObjThread {
    /* 0x000 */ struct GObjThread *next;
    /* 0x004 */ OSThread unk04;
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
    /* 0x00 */ u8 pad00[4 - 0];
    /* 0x04 */ struct GObjSub18 *unk04;
    /* 0x08 */ struct GObjSub18 *unk08;
    /* 0x0C */ u8 unk0C;
    /* 0x0D */ u8 unk0D;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u32 pad14;
    /* 0x18 */ struct GObjProcess *unk18;
    /* 0x1C */ struct GObjProcess *unk1C;
    /* 0x20 */ struct GObjSub18 *unk20;
    /* 0x24 */ struct GObjSub18 *unk24;
    /* 0x28 */ u32 unk28;
}; // size >= 0x2C

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

    if (arg0 != NULL && arg0->unk14 == 0) { return arg0->unk1C->unk1B8; }

    return NULL;
}

s32 unref_80007884(struct GObjProcess *arg0) {
    if (arg0 == NULL) { arg0 = D_80046A60; }

    if (arg0 != NULL && arg0->unk14 == 0) { return arg0->unk1C->unk1BC; }

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
    /* 0x04 */ u8 pad04[0x24 - 4];
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
    /* 0x70 */ u8 pad70[0x90 - 0x70];
    /* 0x90 */ struct AObj *unk90;
}; // size >= 0x94

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

struct MObj {
    /* 0x00 */ struct MObj *next;
    /* 0x04 */ u8 pad04[0xa8 - 4];
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

struct SObj {
    /* 0x00 */ struct SObj *next;
    /* 0x04 */ u8 vla[1];
}; // size >= 4 + VLA

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
    /* 0x04 */ u8 vla[1];
}; // size >= 4 + VLA

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
            thread         = func_800073E0();
            process->unk1C = thread;
            stackNode      = func_80007564();
            thread->unk1B8 = stackNode->stack;
            thread->unk1BC = D_800466BC;
            osCreateThread(
                &thread->unk04, D_8003B870++, ptr, sub, &thread->unk1B8[D_800466BC / 8], 51);
            thread->unk1B8[7] = 0xFEDCBA98;
            if (D_8003B870 >= 20000000) { D_8003B870 = 10000000; }

            break;
        }
        case 1:
        {
            process->unk1C = ptr;
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

    process->unk1C = thread = func_800073E0();
    process->unk14          = 0;

    stackNode      = stackSize == 0 ? func_80007564() : func_80007488(stackSize);
    thread->unk1B8 = stackNode->stack;
    thread->unk1BC = stackSize == 0 ? D_800466BC : stackSize;
    tid            = threadId != -1 ? threadId : D_8003B870++;

    osCreateThread(&thread->unk04, tid, entry, ctx, &thread->unk1B8[thread->unk1BC / 8], 51);
    thread->unk1B8[7] = 0xFEDCBA98;
    if (D_8003B870 >= 20000000) { D_8003B870 = 10000000; }

    func_80007680(process);
    return process;
}

void func_8000848C(struct GObjProcess *arg0) {
    struct ThreadStackNode *tnode;

    if (arg0 == NULL || arg0 == D_80046A60) {
        D_80046A64 = TRUE;
        if (D_80046A60->unk14 == 0) { func_8000B1E8(1); }
        return;
    }

    if (D_800466C8 != NULL) { D_800466C8(arg0); }

    switch (arg0->unk14) {
        case 0:
        {
            osDestroyThread(&arg0->unk1C->unk04);
            // cast from stack pointer back to stack node
            tnode =
                (void
                     *)((uintptr_t)(arg0->unk1C->unk1B8) - offsetof(struct ThreadStackNode, stack));
            func_80007588(tnode);
            func_8000745C(arg0->unk1C);
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

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008CC0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008CF0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008E78.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008EE4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008F44.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008FB0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009010.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800090DC.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800091F4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000926C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800092D0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009380.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800093F4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000948C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009614.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800096EC.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009760.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009810.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800098A4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009968.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800099A8.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009A84.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009B48.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009C90.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009CC8.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009D78.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009DF4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009F28.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80009F74.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A0D0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A14C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A24C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A2B4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A328.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A334.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A340.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A40C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A49C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A5E4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000A6E0.s")
#endif
#pragma GCC diagnostic pop
