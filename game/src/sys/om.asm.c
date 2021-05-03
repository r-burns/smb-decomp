#include "sys/om.h"

#include "sys/gtl.h"
#include "sys/system.h"

#include <stddef.h>

#include <PR/os.h>
#include <PR/ultratypes.h>

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
u32 D_800466C8;
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
u32 D_80046800;
u32 D_80046804;
u8 extend_D_80046804[252 - 4];
u32 D_80046900;
u32 D_80046904;
u32 D_80046908;
u32 D_8004690C;
u8 extend_D_8004690C[256 - 4];
s32 D_80046A0C;
u16 D_80046A10;
s16 D_80046A12;
u32 D_80046A14;
u32 D_80046A18;
u32 D_80046A1C;
u32 D_80046A20;
u32 D_80046A24;
u32 D_80046A28;
u32 D_80046A2C;
u32 D_80046A30;
u32 D_80046A34;
u32 D_80046A38;
u32 D_80046A3C;
u32 D_80046A40;
u32 D_80046A44;
u32 D_80046A48;
u32 D_80046A4C;
u32 D_80046A50;
u32 D_80046A54;
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
    /* 0x1B8 */ struct ObjStack *unk1B8;
    /* 0x1BC */ s32 unk1BC;
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

struct GObjProcess {
    /* 0x00 */ struct GObjProcess *unk00;
    /* 0x04 */ struct GObjProcess *unk04;
    /* 0x08 */ struct GObjProcess *unk08;
    /* 0x08 */ struct GObjProcess *unk0C;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ u8 unk14; // kind
    /* 0x18 */ struct GObjSub18 *unk18;
    /* 0x1C */ struct GObjThread *unk1C;
    /* 0x20 */ u8 pad20[0x24 - 0x20];
}; // size == 0x24

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
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u32 pad14;
    /* 0x18 */ struct GObjProcess *unk18;
    /* 0x1C */ struct GObjProcess *unk1C;
}; // size >= 0x20

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

struct ObjStack {
    /* 0x00 */ s32 pad00;
};

struct ObjStack *unref_8000784C(struct GObjProcess *arg0) {
    if (arg0 == NULL) { arg0 = D_80046A60; }

    if (arg0 != NULL && arg0->unk14 == 0) { return arg0->unk1C->unk1B8; }

    return NULL;
}

s32 unref_80007884(struct GObjProcess *arg0) {
    if (arg0 == NULL) { arg0 = D_80046A60; }

    if (arg0 != NULL && arg0->unk14 == 0) { return arg0->unk1C->unk1BC; }

    return NULL;
}

void unref_800078BC(u32 arg0) {
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

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007B98.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007C00.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007C6C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007CF4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007D5C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007DD8.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007E04.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007E80.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007E90.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007EA0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007EB0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007EDC.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007F58.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80007F84.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008004.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008030.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800080B0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_800080DC.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000815C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_80008188.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/om/func_8000848C.s")
#endif

#ifdef NON_MATCHING
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
