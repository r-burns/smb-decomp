#include "loadovl/loader.h"
#include "sys/dma.h"
#include "sys/gtl.h"
#include "sys/om.h"
#include "sys/system_00.h"
#include "sys/thread6.h"

#include <linkersegs.h>
#include <macros.h>

#include <PR/mbi.h>
#include <PR/ultratypes.h>

u8 D_800A44D0[16];

struct BigA44E0 {
    /* 0x00 */ u8 pad00[0x5EC - 0];
}; // size == 0x5EC

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
// one giagantic structure..?
*/

struct UnkA4AD0 {
    /* 0x00 */ u8 unk00;
    /* 0x01 */ u8 pad01[0x48 - 0x01];
}; // size == 0x48

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

struct Unk1F0Sized {
    /* 0x00 */ u8 pad00[0x1F0];
}; // size == 0x1F0

// 0x1F0 struct

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
// 0x1F0 struct
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
// 0x1F0 struct
u8 D_800A4EF8[464];
u8 D_800A50C8[32];
// end 0x1f0}}
*/

u32 D_800A50E8;
u32 D_800A50EC;
u8 D_800A50F0[8];
u8 D_800A50F8[324];
u32 D_800A523C;

// system_10
extern s8 D_8003CB6D;
extern s32 func_80021048(void);
extern void func_8002102C(void);
extern s32 func_8002103C(void);
extern void func_80020A40(s32);

// system_11
extern void set_debug_fn(void (*)(void));
extern void start_new_debug_thread(void);

// overlays
extern s32 func_ovl0_800D4644(void);          // ovl 0
extern void func_ovl0_800D46F4(void);         // ovl 0
extern void func_ovl2_800D6FE0(void);         // ovl 2
extern void title_screen_entry(void);         // ovl 10
extern void n64_logo_entry(void);             // ovl 11
extern void debug_sss_entry(void);            // ovl 12
extern void debug_system_entry(void);         // ovl 13
extern void debug_battle_entry(void);         // ovl 14
extern void debug_falls_entry(void);          // ovl 15
extern void debug_button_test_entry(void);    // ovl 16
extern void menu_main_entry(void);            // ovl 17
extern void menu_1p_entry(void);              // ovl 18
extern void menu_options_entry(void);         // ovl 60
extern void menu_data_entry(void);            // ovl 61
extern void menu_vs_entry(void);              // ovl 19
extern void options_vs_entry(void);           // ovl 20
extern void overlay_set11_entry(void);        // ovl 21
extern void overlay_set12_entry(void);        // ovl 22
extern void overlay_set13_entry(void);        // ovl 23
extern void classic_map_entry(void);          // ovl 24
extern void screen_adjust_entry(void);        // ovl 25
extern void vs_css_entry(void);               // ovl 26
extern void stage_select_entry(void);         // ovl 30
extern void vs_battle_entry(void);            // ovl 4
extern void overlay_set23_entry(void);        // ovl 5
extern void func_ovl2_800D67DC(void);         // ovl 2
extern void bonus_game_play_entry(void);      // ovl 6
extern void training_mode_battle_entry(void); // ovl 7
extern void vs_results_entry(void);           // ovl 31
extern void vs_records_entry(void);           // ovl 32
extern void char_bkg_info_entry(void);        // ovl 33
extern void overlay_set27_entry(void);        // ovl 58
extern void intro_firstscene_entry(void);     // ovl 34
extern void intro_portrait_wipes_entry(void); // ovl 35
extern void intro_focus_mario_entry(void);    // ovl 36
extern void intro_focus_dk_entry(void);       // ovl 37
extern void intro_focus_samus_entry(void);    // ovl 38
extern void intro_focus_fox_entry(void);      // ovl 39
extern void intro_focus_link_entry(void);     // ovl 40
extern void intro_focus_yoshi_entry(void);    // ovl 41
extern void intro_focus_pikachu_entry(void);  // ovl 42
extern void intro_focus_kirby_entry(void);    // ovl 43
extern void intro_chars_running_entry(void);  // ovl 44
extern void intro_yoshi_nest_entry(void);     // ovl 45
extern void intro_link_hill_entry(void);      // ovl 46
extern void intro_mario_vs_kirby_entry(void); // ovl 47
extern void intro_pika_pokeball_entry(void);  // ovl 48
extern void intro_sex_kicks_entry(void);      // ovl 49
extern void intro_great_fox_entry(void);      // ovl 50
extern void intro_dk_vs_samus_entry(void);    // ovl 51
extern void intro_hidden_chars_entry(void);   // ovl 52
extern void classic_css_entry(void);          // ovl 27
extern void training_css_entry(void);         // ovl 28
extern void bonus_css_entry(void);            // ovl 29
extern void menu_backup_clear_entry(void);    // ovl 53
extern void overlay_set48_entry(void);        // ovl 54
extern void overlay_set49_entry(void);        // ovl 55
extern void overlay_set50_51_entry(void);     // ovl 56
extern void overlay_set56_entry(void);        // ovl 59
extern void overlay_set55_entry(void);        // ovl 57
extern void overlay_set59_entry(void);        // ovl 62
extern void how_to_play_entry(void);          // ovl 63
extern void demo_battle_entry(void);          // ovl 64

void maybe_print_info_debug(void);

// extern struct Overlay D_800A3070; // ovl 0
// extern struct Overlay D_800A3094; // ovl 1
// extern struct Overlay D_800A30B8; // ovl 2

extern struct Overlay D_800A3070[65];

extern struct BigA44E0 D_800A3994;
extern struct UnkA4AD0 D_800A3F80;
extern struct Unk1F0Sized D_800A3FC8;

// frame buffer?
extern u16 D_NF_80392A00[224000];

void load_overlay_set(UNUSED u32 set) {
    u16 *csr;
    uintptr_t end;
    struct Unk1F0Sized sp220;
    struct Unk1F0Sized sp30;

    set_contstatus_delay(60);
    set_debug_fn(maybe_print_info_debug);
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
    // csr = (void *)D_NF_80392A00;
    csr = (void *)_ovl1SegNoloadEnd;
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

struct UnkA26D8 {
    /* 0x00 */ u8 pad00[0x74 - 0];
    /* 0x74 */ void *unk74;
}; // size >= 0x78

// system_05
extern void func_80016338(Gfx **, void *, s32); // arg1 is a type, not void *
// system_11
extern void func_800218E0(s32, s32, s32, s32, s32);

// ovl 0
extern u16 D_ovl0_800D6448;
extern u16 D_ovl0_800D644A;
extern u16 D_ovl0_800D644C;

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

// system_04
extern struct GObjCommon *func_8000B198(u32 id);
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

// system_11
struct GObjCommon *func_80022368(s32 link, u32 arg1, s32 arg2);

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

// system_11
// __attribute__ ((__format__ (__printf, 1, 2)))
void crash_printf(const char *fmt, ...);

struct FighterInfo {
    /* 0x000 */ u8 pad00[0x08 - 0];
    /* 0x008 */ s32 kind;
    /* 0x00C */ u8 pad0C[0xD - 0xC];
    /* 0x00D */ u8 player;
    /* 0x00E */ u8 pad0E[0x20 - 0xE];
    /* 0x020 */ s32 pkind;
    /* 0x024 */ s32 stat;
    /* 0x028 */ s32 mstat;
    /* 0x02C */ u8 pad2C[0x14C - 0x2C];
    /* 0x14C */ s32 ga;
}; // size >= 0x150

struct WeaponInfo {
    /* 0x000 */ u8 pad00[0xC - 0x0];
    /* 0x00C */ s32 kind;
    /* 0x010 */ u8 pad10;
    /* 0x011 */ u8 player;
    /* 0x012 */ u8 pad12[0xFC - 0x12];
    /* 0x0FC */ s32 ga;
    /* 0x100 */ s32 attackStat;
}; // size >= 0x104

struct ItemInfo {
    /* 0x000 */ u8 pad00[0xC - 0x0];
    /* 0x00C */ s32 kind;
    /* 0x010 */ u8 pad10[0x15 - 0x10];
    /* 0x015 */ u8 player;
    /* 0x016 */ u8 pad16[0x108 - 0x16];
    /* 0x108 */ s32 ga;
    /* 0x10C */ s32 attackStat;
    /* 0x110 */ u8 pad110[0x378 - 0x110];
    /* 0x378 */ void *procUpdate;
    /* 0x37C */ void *procMap;
    /* 0x380 */ void *procHit;
    /* 0x384 */ void *procShield;
    /* 0x388 */ void *procHop;
    /* 0x38C */ void *procSetoff;
    /* 0x390 */ void *procReflector;
    /* 0x394 */ void *procDamage;
}; // size >= 0x398

struct EffectInfo {
    /* 0x00 */ u32 pad00;
    /* 0x04 */ void *fgObj;
    /* 0x08 */ u8 pad08[0x14 - 0x8];
    /* 0x14 */ void *procFunc;

}; // size >= 0x18

void func_800A2C30(struct GObjCommon *obj) {
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

void maybe_print_info_debug(void) {
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
                func_800A2C30(D_80046A54);
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
                // L800A2F88
                func_800A2C30(D_80046A54);
            }
            break;
        }
        case 3:
        {
            crash_printf("DFC\n");
            if (D_80046A58 != NULL) {
                crash_printf("addr:%x\n", D_80046A58->unk2C);
                func_800A2C30(D_80046A58);
            }
            break;
        }
        case 4:
        {
            crash_printf("DFO\n");
            if (D_80046A58 != NULL) { crash_printf("cam addr:%x\n", D_80046A58->unk2C); }
            if (D_80046A5C != NULL) {
                crash_printf("disp addr:%x\n", D_80046A5C->unk2C);
                func_800A2C30(D_80046A5C);
            }
            break;
        }
    }
}

// system_11
void func_80023778(void (*)(void));

void func_800A3040(void) {
    func_80023778(maybe_print_info_debug);
}
