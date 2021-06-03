#include "scenemgr/scene_manager.h"

#include "ovl0/ovl0.h"
#include "ovl2/ovl2.h"
#include "scenemgr/entries.h"
#include "sys/dma.h"
#include "sys/gtl.h"
#include "sys/om.h"
#include "sys/system_00.h"
#include "sys/system_04.h"
#include "sys/system_05.h"
#include "sys/system_10.h"
#include "sys/system_11.h"
#include "sys/thread6.h"

#include <linkersegs.h>
#include <macros.h>

#include <PR/mbi.h>
#include <PR/ultratypes.h>

// types

// what is this struct? is it just `struct GObjCommon`?
struct UnkA26D8 {
    /* 0x00 */ u8 pad00[0x74 - 0];
    /* 0x74 */ void *unk74;
}; // size >= 0x78

// bss
u8 D_800A44D0[16];
struct BigA44E0 D_800A44E0;
/*
u8 D_800A44E0[24];
u8 D_800A44F8[14];
u16 D_800A4506;
u8 D_800A4508[52];
u32 D_800A453C;
u8 extend_D_800A453C[88];
u32 D_800A4598[2];
u8 extend_D_800A4598[84];
u32 D_800A45F4;
u8 extend_D_800A45F4[824];
u8 D_800A4930;
u8 D_800A4931;
u8 extend_D_800A4932;
u8 extend_D_800A4933;
u8 extend_D_800A4934;
u8 extend_D_800A4935;
u8 D_800A4936;
u8 D_800A4937;
u16 D_800A4938;
u8 D_800A493A;
u8 D_800A493B;
u32 D_800A493C;
u32 extend_D_800A4940;
u32 D_800A4944;
u32 D_800A4948;
u32 D_800A494C;
u8 D_800A4950[364];
u32 D_800A4ABC;
u16 D_800A4AC0;
u8 D_800A4AC2;
u8 D_800A4AC3;
u32 extend_D_800A4AC4;
u8 extend_D_800A4AC8[8];
*/

struct UnkA4AD0 D_800A4AD0;
/*
u8 D_800A4AD0;
u8 D_800A4AD1;
u8 D_800A4AD2;
u8 extend_D_800A4AD3;
u8 extend_D_800A4AD4;
u8 extend_D_800A4AD5;
u8 extend_D_800A4AD6;
u8 extend_D_800A4AD7;
u8 extend_D_800A4AD8;
u8 D_800A4AD9;
u8 extend_D_800A4ADA;
u8 extend_D_800A4ADB;
u8 D_800A4ADC;
u8 D_800A4ADD;
u8 extend_D_800A4ADE;
u8 D_800A4ADF;
u8 D_800A4AE0;
u8 D_800A4AE1;
u8 D_800A4AE2;
u8 D_800A4AE3;
u8 extend_D_800A4AE4;
u8 extend_D_800A4AE5;
u8 D_800A4AE6;
u8 D_800A4AE7;
u8 extend_D_800A4AE7[8];
u8 D_800A4AF0[24];
u8 D_800A4B08[12];
u32 D_800A4B14;
*/

struct Unk1F0Sized D_800A4B18;
/*
u8 D_800A4B18[40];
u8 extend_D_800A4B18;
u8 D_800A4B41;
u8 extend_D_800A4B42;
u8 extend_D_800A4B43;
u32 extend_D_800A4B44;
u8 D_800A4B48[36];
u32 D_800A4B6C;
u8 extend_D_800A4B6C[408];
*/

struct Unk1F0Sized D_800A4D08;
/*
u16 D_800A4D08;
u8 D_800A4D0A;
u8 D_800A4D0B;
u8 extend_D_800A4D0C;
u8 extend_D_800A4D0C;
u16 D_800A4D0E;
u16 D_800A4D10;
u16 D_800A4D12;
u16 D_800A4D14;
u16 extend_D_800A4D16;
u8 extend_D_800A4D18[16];
u8 extend_D_800A4D28;
u8 D_800A4D29;
u8 D_800A4D2A;
u8 D_800A4D2B;
u16 D_800A4D2C;
u16 D_800A4D2E;
u16 D_800A4D30;
u8 D_800A4D32;
u8 extend_D_800A4D33;
u8 extend_D_800A4D34;
u8 D_800A4D35;
u8 extend_D_800A4D36;
u8 extend_D_800A4D37;
u32 D_800A4D38;
u32 D_800A4D3C;
u8 extend_D_800A4D40[92];
u8 extend_D_800A4D9C;
u8 D_800A4D9D;
u8 D_800A4D9E;
u8 D_800A4D9F;
u16 D_800A4DA0;
u16 D_800A4DA2;
u16 D_800A4DA4;
u8 D_800A4DA6;
u8 extend_D_800A4DA7;
u8 extend_D_800A4DA8;
u8 D_800A4DA9;
u8 extend_D_800A4DAA;
u8 extend_D_800A4DAB;
u32 D_800A4DAC;
u8 D_800A4DB0[97];
u8 D_800A4E11;
u8 D_800A4E12;
u8 D_800A4E13;
u16 D_800A4E14;
u16 D_800A4E16;
u16 D_800A4E18;
u8 D_800A4E1A;
u8 extend_D_800A4E1B;
u8 extend_D_800A4E1C;
u8 D_800A4E1D;
u8 extend_D_800A4E1E;
u8 extend_D_800A4E1F;
u32 D_800A4E20;
u8 D_800A4E24;
u8 extend_D_800A4E24[93];
u8 D_800A4E85;
u8 D_800A4E86;
u8 D_800A4E87;
u16 D_800A4E88;
u16 D_800A4E8A;
u16 D_800A4E8C;
u8 D_800A4E8E;
u8 extend_D_800A4E8F;
u8 extend_D_800A4E90;
u8 D_800A4E91;
u8 extend_D_800A4E92;
u8 extend_D_800A4E93;
u32 D_800A4E94;
u8 D_800A4E98[96];
*/

struct Unk1F0Sized D_800A4EF8;
/*
u8 D_800A4EF8[464];
u8 D_800A50C8[32];
*/

u32 D_800A50E8;
u32 D_800A50EC;
u8 D_800A50F0[8];
u8 D_800A50F8[324];
u32 D_800A523C;

// data
extern struct Overlay D_800A3070[65];

extern struct BigA44E0 D_800A3994;
extern struct UnkA4AD0 D_800A3F80;
extern struct Unk1F0Sized D_800A3FC8;

// declarations
void crash_print_gobj_state(void);

void start_scene_manager(UNUSED u32 set) {
    u16 *csr;
    uintptr_t end;
    struct Unk1F0Sized sp220;
    struct Unk1F0Sized sp30;

    set_contstatus_delay(60);
    set_debug_fn(crash_print_gobj_state);
    start_new_debug_thread();
    load_overlay(&D_800A3070[0]);
    load_overlay(&D_800A3070[2]);
    load_overlay(&D_800A3070[1]);

    D_800A44E0 = D_800A3994;
    D_800A4AD0 = D_800A3F80;
    sp30       = D_800A3FC8;
    D_800A4EF8 = sp30;
    sp220      = sp30;
    D_800A4D08 = sp220;
    D_800A4B18 = sp220;

    func_ovl2_800D6FE0();
    D_8003CB6D = 72;

    func_8002102C();
    while (func_8002103C()) { }

    func_80020A40(6);
    while (func_80021048()) { }

    func_ovl0_800D4644();
    func_ovl0_800D46F4();

    // it needs to be something like this to match
    csr = (void *)_ovl1SegNoloadEnd; // 0x80392A00
    end = 0x80400000;
    while ((uintptr_t)csr < end) { *(csr++) = GPACK_RGBA5551(0, 0, 0, 1); }

    if (D_800451A0 == 0) { D_800A4AD0.unk00 = 0; }

    while (TRUE) {
        switch (D_800A4AD0.unk00) {
            case 0:
                load_overlay(&D_800A3070[11]);
                n64_logo_entry();
                break;
            case 1:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[10]);
                load_overlay(&D_800A3070[8]);
                load_overlay(&D_800A3070[9]);
                title_screen_entry();
                break;
            case 2:
                load_overlay(&D_800A3070[12]);
                load_overlay(&D_800A3070[8]);
                load_overlay(&D_800A3070[9]);
                debug_sss_entry();
                break;
            case 3:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[13]);
                load_overlay(&D_800A3070[8]);
                load_overlay(&D_800A3070[9]);
                debug_system_entry();
                break;
            case 4:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[14]);
                load_overlay(&D_800A3070[8]);
                load_overlay(&D_800A3070[9]);
                debug_battle_entry();
                break;
            case 5:
                load_overlay(&D_800A3070[15]);
                debug_falls_entry();
                break;
            case 6:
                load_overlay(&D_800A3070[16]);
                debug_button_test_entry();
                break;
            case 7:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[17]);
                menu_main_entry();
                break;
            case 8:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[18]);
                menu_1p_entry();
                break;
            case 57:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[60]);
                menu_options_entry();
                break;
            case 58:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[61]);
                menu_data_entry();
                break;
            case 9:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[19]);
                menu_vs_entry();
                break;
            case 10:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[20]);
                options_vs_entry();
                break;
            case 11:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[21]);
                overlay_set11_entry();
                break;
            case 12:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[22]);
                overlay_set12_entry();
                break;
            case 13:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[23]);
                overlay_set13_entry();
                break;
            case 14:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[24]);
                classic_map_entry();
                break;
            case 15:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[25]);
                screen_adjust_entry();
                break;
            case 16:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[26]);
                vs_css_entry();
                break;
            case 21:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[30]);
                stage_select_entry();
                break;
            case 22:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[3]);
                load_overlay(&D_800A3070[4]);
                vs_battle_entry();
                break;
            case 23:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[3]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[5]);
                overlay_set23_entry();
                break;
            case 52: func_ovl2_800D67DC(); break;
            case 53:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[3]);
                load_overlay(&D_800A3070[6]);
                bonus_game_play_entry();
                break;
            case 54:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[3]);
                load_overlay(&D_800A3070[7]);
                training_mode_battle_entry();
                break;
            case 24:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[31]);
                vs_results_entry();
                break;
            case 25:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[32]);
                vs_records_entry();
                break;
            case 26:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[33]);
                char_bkg_info_entry();
                break;
            case 27:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[58]);
                overlay_set27_entry();
                break;
            case 28:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[34]);
                intro_firstscene_entry();
                break;
            case 29:
                load_overlay(&D_800A3070[35]);
                intro_portrait_wipes_entry();
                break;
            case 30:
                load_overlay(&D_800A3070[3]);
                load_overlay(&D_800A3070[36]);
                intro_focus_mario_entry();
                break;
            case 31:
                load_overlay(&D_800A3070[37]);
                intro_focus_dk_entry();
                break;
            case 32:
                load_overlay(&D_800A3070[38]);
                intro_focus_samus_entry();
                break;
            case 33:
                load_overlay(&D_800A3070[39]);
                intro_focus_fox_entry();
                break;
            case 34:
                load_overlay(&D_800A3070[40]);
                intro_focus_link_entry();
                break;
            case 35:
                load_overlay(&D_800A3070[41]);
                intro_focus_yoshi_entry();
                break;
            case 36:
                load_overlay(&D_800A3070[42]);
                intro_focus_pikachu_entry();
                break;
            case 37:
                load_overlay(&D_800A3070[43]);
                intro_focus_kirby_entry();
                break;
            case 38:
                load_overlay(&D_800A3070[44]);
                intro_chars_running_entry();
                break;
            case 39:
                load_overlay(&D_800A3070[45]);
                intro_yoshi_nest_entry();
                break;
            case 40:
                load_overlay(&D_800A3070[46]);
                intro_link_hill_entry();
                break;
            case 41:
                load_overlay(&D_800A3070[47]);
                intro_mario_vs_kirby_entry();
                break;
            case 42:
                load_overlay(&D_800A3070[48]);
                intro_pika_pokeball_entry();
                break;
            case 43:
                load_overlay(&D_800A3070[49]);
                intro_sex_kicks_entry();
                break;
            case 44:
                load_overlay(&D_800A3070[50]);
                intro_great_fox_entry();
                break;
            case 45:
                load_overlay(&D_800A3070[3]);
                load_overlay(&D_800A3070[51]);
                intro_dk_vs_samus_entry();
                break;
            case 46:
                load_overlay(&D_800A3070[52]);
                intro_hidden_chars_entry();
                break;
            case 17:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[27]);
                classic_css_entry();
                break;
            case 18:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[28]);
                training_css_entry();
                break;
            case 19:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[29]);
                bonus_css_entry();
                break;
            case 20:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[29]);
                bonus_css_entry();
                break;
            case 47:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[53]);
                menu_backup_clear_entry();
                break;
            case 48:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[54]);
                overlay_set48_entry();
                break;
            case 49:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[55]);
                overlay_set49_entry();
                break;
            case 50:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[56]);
                overlay_set50_51_entry();
                break;
            case 51:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[56]);
                overlay_set50_51_entry();
                break;
            case 56:
                load_overlay(&D_800A3070[59]);
                overlay_set56_entry();
                break;
            case 55:
                load_overlay(&D_800A3070[57]);
                overlay_set55_entry();
                break;
            case 59:
                load_overlay(&D_800A3070[1]);
                load_overlay(&D_800A3070[62]);
                overlay_set59_entry();
                break;
            case 60:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[3]);
                load_overlay(&D_800A3070[63]);
                how_to_play_entry();
                break;
            case 61:
                load_overlay(&D_800A3070[2]);
                load_overlay(&D_800A3070[3]);
                load_overlay(&D_800A3070[64]);
                demo_battle_entry();
                break;
        }
    }
}

// set up gtl and om systems
void func_800A2698(struct Wrapper683C *arg) {
    func_8000683C(arg);
}

void func_800A26B8(void) {
    func_8000A340();
}

void func_800A26D8(struct UnkA26D8 *arg0) {
    s32 width; // sp74
    UNUSED s32 spPad70;
    s32 barY = 203; // sp6C

    func_80016338(D_800465B0, arg0->unk74, 0);
    gDPPipeSync((*D_800465B0)++);
    gDPSetCycleType((*D_800465B0)++, G_CYC_FILL);
    gDPSetRenderMode((*D_800465B0)++, G_RM_NOOP, G_RM_NOOP2);
    width = ((D_ovl0_800D6448 / 112.0f) * 256.0f);
    if (width < 0) { width = 0; }
    if (width > 256) { width = 256; }
    gDPSetFillColor((*D_800465B0)++, rgba32_to_fill_color(0x0000FFFF));
    gDPFillRectangle((*D_800465B0)++, 30, barY, width + 30, barY + 1);

    barY += 2;
    gDPPipeSync((*D_800465B0)++);
    width = ((D_ovl0_800D644A / 24.0f) * 256.0f);
    if (width < 0) { width = 0; }
    if (width > 256) { width = 256; }
    gDPSetFillColor((*D_800465B0)++, rgba32_to_fill_color(0xFF4000FF));
    gDPFillRectangle((*D_800465B0)++, 30, barY, width + 30, barY + 1);

    barY += 2;
    gDPPipeSync((*D_800465B0)++);
    width = ((D_ovl0_800D644C / 80.0f) * 256.0f);
    if (width < 0) { width = 0; }
    if (width > 256) { width = 256; }
    gDPSetFillColor((*D_800465B0)++, rgba32_to_fill_color(0xFFFFFFFF));
    gDPFillRectangle((*D_800465B0)++, 30, barY, width + 30, barY + 1);
    gDPPipeSync((*D_800465B0)++);
    // this needs to be in its own block to match. macro?
    // could explain the double sync
    {
        uintptr_t freeSpace; // sp38
        freeSpace = (uintptr_t)D_800465E8.end - (uintptr_t)D_800465E8.ptr;

        gDPSetFillColor((*D_800465B0)++, rgba32_to_fill_color(0xFFFFFFFF));
        func_800218E0(0x14, 0x14, freeSpace, 7, 1);
        gDPPipeSync((*D_800465B0)++);
    }
    gDPPipeSync((*D_800465B0)++);
    gDPSetCycleType((*D_800465B0)++, G_CYC_1CYCLE);
    gDPSetRenderMode((*D_800465B0)++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
}

struct GObjCommon *func_800A2B18(s32 link, u32 arg1, s32 arg2) {
    if (func_8000B198(0xEFFFFFFF) != NULL) { return NULL; }

    return func_8000B93C(0xEFFFFFFF, NULL, link, arg1, func_800A26D8, arg2, 0, 0, 0, 0, 0, 0, 0);
}

// set_up_debug_objs ? something like that
void unref_800A2BA8(s32 link, u32 arg1, s32 arg2) {
    struct GObjCommon *com;

    com = func_8000B198(0xFFFFFFFE);
    if (com != NULL) {
        func_80009A84(com);
    } else {
        func_80022368(link, arg1, arg2);
    }

    com = func_8000B198(0xEFFFFFFF);
    if (com != NULL) {
        func_80009A84(com);
    } else {
        func_800A2B18(link, arg1, arg2);
    }
}

void crash_inspect_gobj(struct GObjCommon *obj) {
    crash_printf("gobj id:%d:", obj->unk00);
    switch (obj->unk00) {
        case 0x3E8:
        {
            struct FighterInfo *f = obj->unk84;

            crash_printf("fighter\n");
            crash_printf("kind:%d, player:%d, pkind:%d\n", f->kind, f->player, f->pkind);
            crash_printf("stat:%d, mstat:%d\n", f->stat, f->mstat);
            crash_printf("ga:%d\n", f->ga);
            break;
        }
        case 0x3F4:
        {
            struct WeaponInfo *w = obj->unk84;

            crash_printf("weapon\n");
            crash_printf("kind:%d, player:%d\n", w->kind, w->player);
            crash_printf("atk stat:%d\n", w->attackStat);
            crash_printf("ga:%d\n", w->ga);
            break;
        }
        case 0x3F5:
        {
            struct ItemInfo *i = obj->unk84;

            crash_printf("item\n");
            crash_printf("kind:%d, player:%d\n", i->kind, i->player);
            crash_printf("atk stat:%d\n", i->attackStat);
            crash_printf("ga:%d\n", i->ga);
            crash_printf("proc update:%x\n", i->procUpdate);
            crash_printf("proc map:%x\n", i->procMap);
            crash_printf("proc hit:%x\n", i->procHit);
            crash_printf("proc shield:%x\n", i->procShield);
            crash_printf("proc hop:%x\n", i->procHop);
            crash_printf("proc setoff:%x\n", i->procSetoff);
            crash_printf("proc reflector:%x\n", i->procReflector);
            crash_printf("proc damage:%x\n", i->procDamage);
            break;
        }
        case 0x3F3:
        {
            struct EffectInfo *e = obj->unk84;

            if ((uintptr_t)e >= 0x80000000 && (uintptr_t)e < 0x80800000) {
                crash_printf("effect\n");
                crash_printf("fgobj:%x", e->fgObj);
                crash_printf("proc func:%x\n", e->procFunc);
            } else {
                crash_printf("\n");
            }
            break;
        }
        default:
        {
            crash_printf("\n");
            break;
        }
    }
}

void crash_print_gobj_state(void) {
    switch (D_8003B874) {
        case 0:
        {
            crash_printf("SYS\n");
            break;
        }
        case 1:
        {
            crash_printf("BF\n");
            if (D_80046A54 != NULL) {
                crash_printf("addr:%x\n", D_80046A54->unk14);
                crash_inspect_gobj(D_80046A54);
            }
            break;
        }
        case 2:
        {
            crash_printf("GP\n");
            if (D_80046A54 != NULL) {
                if (D_80046A60 != NULL) {
                    switch (D_80046A60->unk14) {
                        case 0:
                            crash_printf(
                                "thread:%x\n", D_80046A60->unk1C.thread->osThread.context.pc);
                            break;
                        case 1: crash_printf("func:%x\n", D_80046A60->unk1C.cb); break;
                    }
                }
                crash_inspect_gobj(D_80046A54);
            }
            break;
        }
        case 3:
        {
            crash_printf("DFC\n");
            if (D_80046A58 != NULL) {
                crash_printf("addr:%x\n", D_80046A58->unk2C);
                crash_inspect_gobj(D_80046A58);
            }
            break;
        }
        case 4:
        {
            crash_printf("DFO\n");
            if (D_80046A58 != NULL) { crash_printf("cam addr:%x\n", D_80046A58->unk2C); }
            if (D_80046A5C != NULL) {
                crash_printf("disp addr:%x\n", D_80046A5C->unk2C);
                crash_inspect_gobj(D_80046A5C);
            }
            break;
        }
    }
}

void func_800A3040(void) {
    func_80023778(crash_print_gobj_state);
}
