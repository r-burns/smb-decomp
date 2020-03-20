.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Text Sections
#  0x800A1980 -> 0x800A3070

glabel load_overlay_set
  /* 0406D0 800A1980 27BDFBE8 */     addiu $sp, $sp, -0x418
  /* 0406D4 800A1984 AFBF0024 */        sw $ra, 0x24($sp)
  /* 0406D8 800A1988 AFA40418 */        sw $a0, 0x418($sp)
  /* 0406DC 800A198C AFB20020 */        sw $s2, 0x20($sp)
  /* 0406E0 800A1990 AFB1001C */        sw $s1, 0x1c($sp)
  /* 0406E4 800A1994 AFB00018 */        sw $s0, 0x18($sp)
  /* 0406E8 800A1998 0C0010E5 */       jal func_80004394
  /* 0406EC 800A199C 2404003C */     addiu $a0, $zero, 0x3c
  /* 0406F0 800A19A0 3C04800A */       lui $a0, %hi(maybe_print_info_debug)
  /* 0406F4 800A19A4 0C008C01 */       jal set_debug_fn
  /* 0406F8 800A19A8 24842E84 */     addiu $a0, $a0, %lo(maybe_print_info_debug)
  /* 0406FC 800A19AC 0C008D74 */       jal start_new_debug_thread
  /* 040700 800A19B0 00000000 */       nop 
  /* 040704 800A19B4 3C04800A */       lui $a0, %hi(D_800A3070)
  /* 040708 800A19B8 0C000AF9 */       jal load_overlay
  /* 04070C 800A19BC 24843070 */     addiu $a0, $a0, %lo(D_800A3070)
  /* 040710 800A19C0 3C11800A */       lui $s1, %hi(D_800A30B8)
  /* 040714 800A19C4 263130B8 */     addiu $s1, $s1, %lo(D_800A30B8)
  /* 040718 800A19C8 0C000AF9 */       jal load_overlay
  /* 04071C 800A19CC 02202025 */        or $a0, $s1, $zero
  /* 040720 800A19D0 3C10800A */       lui $s0, %hi(D_800A3094)
  /* 040724 800A19D4 26103094 */     addiu $s0, $s0, %lo(D_800A3094)
  /* 040728 800A19D8 0C000AF9 */       jal load_overlay
  /* 04072C 800A19DC 02002025 */        or $a0, $s0, $zero
  /* 040730 800A19E0 3C0F800A */       lui $t7, %hi(D_800A3994)
  /* 040734 800A19E4 3C12800A */       lui $s2, %hi(D_800A4AD0)
  /* 040738 800A19E8 25EF3994 */     addiu $t7, $t7, %lo(D_800A3994)
  /* 04073C 800A19EC 3C0E800A */       lui $t6, %hi(D_800A44E0)
  /* 040740 800A19F0 26524AD0 */     addiu $s2, $s2, %lo(D_800A4AD0)
  /* 040744 800A19F4 27A20030 */     addiu $v0, $sp, 0x30
  /* 040748 800A19F8 27A30220 */     addiu $v1, $sp, 0x220
  /* 04074C 800A19FC 25CE44E0 */     addiu $t6, $t6, %lo(D_800A44E0)
  /* 040750 800A1A00 25E805E8 */     addiu $t0, $t7, 0x5e8
  .L800A1A04:
  /* 040754 800A1A04 8DF90000 */        lw $t9, ($t7) # D_800A3994 + 0
  /* 040758 800A1A08 25EF000C */     addiu $t7, $t7, 0xc
  /* 04075C 800A1A0C 25CE000C */     addiu $t6, $t6, 0xc
  /* 040760 800A1A10 ADD9FFF4 */        sw $t9, -0xc($t6) # D_800A44E0 + -12
  /* 040764 800A1A14 8DF8FFF8 */        lw $t8, -8($t7) # D_800A3994 + -8
  /* 040768 800A1A18 ADD8FFF8 */        sw $t8, -8($t6) # D_800A44E0 + -8
  /* 04076C 800A1A1C 8DF9FFFC */        lw $t9, -4($t7) # D_800A3994 + -4
  /* 040770 800A1A20 15E8FFF8 */       bne $t7, $t0, .L800A1A04
  /* 040774 800A1A24 ADD9FFFC */        sw $t9, -4($t6) # D_800A44E0 + -4
  /* 040778 800A1A28 8DF90000 */        lw $t9, ($t7) # D_800A3994 + 0
  /* 04077C 800A1A2C 3C09800A */       lui $t1, %hi(D_800A3F80)
  /* 040780 800A1A30 25293F80 */     addiu $t1, $t1, %lo(D_800A3F80)
  /* 040784 800A1A34 252D0048 */     addiu $t5, $t1, 0x48
  /* 040788 800A1A38 02406025 */        or $t4, $s2, $zero
  /* 04078C 800A1A3C ADD90000 */        sw $t9, ($t6) # D_800A44E0 + 0
  .L800A1A40:
  /* 040790 800A1A40 8D2B0000 */        lw $t3, ($t1) # D_800A3F80 + 0
  /* 040794 800A1A44 2529000C */     addiu $t1, $t1, 0xc
  /* 040798 800A1A48 258C000C */     addiu $t4, $t4, 0xc
  /* 04079C 800A1A4C AD8BFFF4 */        sw $t3, -0xc($t4)
  /* 0407A0 800A1A50 8D2AFFF8 */        lw $t2, -8($t1) # D_800A3F80 + -8
  /* 0407A4 800A1A54 AD8AFFF8 */        sw $t2, -8($t4)
  /* 0407A8 800A1A58 8D2BFFFC */        lw $t3, -4($t1) # D_800A3F80 + -4
  /* 0407AC 800A1A5C 152DFFF8 */       bne $t1, $t5, .L800A1A40
  /* 0407B0 800A1A60 AD8BFFFC */        sw $t3, -4($t4)
  /* 0407B4 800A1A64 3C08800A */       lui $t0, %hi(D_800A3FC8)
  /* 0407B8 800A1A68 25083FC8 */     addiu $t0, $t0, %lo(D_800A3FC8)
  /* 0407BC 800A1A6C 251901EC */     addiu $t9, $t0, 0x1ec
  /* 0407C0 800A1A70 0040C025 */        or $t8, $v0, $zero
  .L800A1A74:
  /* 0407C4 800A1A74 8D0E0000 */        lw $t6, ($t0) # D_800A3FC8 + 0
  /* 0407C8 800A1A78 2508000C */     addiu $t0, $t0, 0xc
  /* 0407CC 800A1A7C 2718000C */     addiu $t8, $t8, 0xc
  /* 0407D0 800A1A80 AF0EFFF4 */        sw $t6, -0xc($t8)
  /* 0407D4 800A1A84 8D0FFFF8 */        lw $t7, -8($t0) # D_800A3FC8 + -8
  /* 0407D8 800A1A88 AF0FFFF8 */        sw $t7, -8($t8)
  /* 0407DC 800A1A8C 8D0EFFFC */        lw $t6, -4($t0) # D_800A3FC8 + -4
  /* 0407E0 800A1A90 1519FFF8 */       bne $t0, $t9, .L800A1A74
  /* 0407E4 800A1A94 AF0EFFFC */        sw $t6, -4($t8)
  /* 0407E8 800A1A98 8D0E0000 */        lw $t6, ($t0) # D_800A3FC8 + 0
  /* 0407EC 800A1A9C 3C0D800A */       lui $t5, %hi(D_800A4EF8)
  /* 0407F0 800A1AA0 25AD4EF8 */     addiu $t5, $t5, %lo(D_800A4EF8)
  /* 0407F4 800A1AA4 00405025 */        or $t2, $v0, $zero
  /* 0407F8 800A1AA8 244B01EC */     addiu $t3, $v0, 0x1ec
  /* 0407FC 800A1AAC AF0E0000 */        sw $t6, ($t8)
  .L800A1AB0:
  /* 040800 800A1AB0 8D4C0000 */        lw $t4, ($t2)
  /* 040804 800A1AB4 254A000C */     addiu $t2, $t2, 0xc
  /* 040808 800A1AB8 25AD000C */     addiu $t5, $t5, 0xc
  /* 04080C 800A1ABC ADACFFF4 */        sw $t4, -0xc($t5) # D_800A4EF8 + -12
  /* 040810 800A1AC0 8D49FFF8 */        lw $t1, -8($t2)
  /* 040814 800A1AC4 ADA9FFF8 */        sw $t1, -8($t5) # D_800A4EF8 + -8
  /* 040818 800A1AC8 8D4CFFFC */        lw $t4, -4($t2)
  /* 04081C 800A1ACC 154BFFF8 */       bne $t2, $t3, .L800A1AB0
  /* 040820 800A1AD0 ADACFFFC */        sw $t4, -4($t5) # D_800A4EF8 + -4
  /* 040824 800A1AD4 8D4C0000 */        lw $t4, ($t2)
  /* 040828 800A1AD8 0040C025 */        or $t8, $v0, $zero
  /* 04082C 800A1ADC 00607825 */        or $t7, $v1, $zero
  /* 040830 800A1AE0 244E01EC */     addiu $t6, $v0, 0x1ec
  /* 040834 800A1AE4 ADAC0000 */        sw $t4, ($t5) # D_800A4EF8 + 0
  .L800A1AE8:
  /* 040838 800A1AE8 8F080000 */        lw $t0, ($t8)
  /* 04083C 800A1AEC 2718000C */     addiu $t8, $t8, 0xc
  /* 040840 800A1AF0 25EF000C */     addiu $t7, $t7, 0xc
  /* 040844 800A1AF4 ADE8FFF4 */        sw $t0, -0xc($t7)
  /* 040848 800A1AF8 8F19FFF8 */        lw $t9, -8($t8)
  /* 04084C 800A1AFC ADF9FFF8 */        sw $t9, -8($t7)
  /* 040850 800A1B00 8F08FFFC */        lw $t0, -4($t8)
  /* 040854 800A1B04 170EFFF8 */       bne $t8, $t6, .L800A1AE8
  /* 040858 800A1B08 ADE8FFFC */        sw $t0, -4($t7)
  /* 04085C 800A1B0C 8F080000 */        lw $t0, ($t8)
  /* 040860 800A1B10 3C0B800A */       lui $t3, %hi(D_800A4D08)
  /* 040864 800A1B14 256B4D08 */     addiu $t3, $t3, %lo(D_800A4D08)
  /* 040868 800A1B18 00604825 */        or $t1, $v1, $zero
  /* 04086C 800A1B1C 246C01EC */     addiu $t4, $v1, 0x1ec
  /* 040870 800A1B20 ADE80000 */        sw $t0, ($t7)
  .L800A1B24:
  /* 040874 800A1B24 8D2D0000 */        lw $t5, ($t1)
  /* 040878 800A1B28 2529000C */     addiu $t1, $t1, 0xc
  /* 04087C 800A1B2C 256B000C */     addiu $t3, $t3, 0xc
  /* 040880 800A1B30 AD6DFFF4 */        sw $t5, -0xc($t3) # D_800A4D08 + -12
  /* 040884 800A1B34 8D2AFFF8 */        lw $t2, -8($t1)
  /* 040888 800A1B38 AD6AFFF8 */        sw $t2, -8($t3) # D_800A4D08 + -8
  /* 04088C 800A1B3C 8D2DFFFC */        lw $t5, -4($t1)
  /* 040890 800A1B40 152CFFF8 */       bne $t1, $t4, .L800A1B24
  /* 040894 800A1B44 AD6DFFFC */        sw $t5, -4($t3) # D_800A4D08 + -4
  /* 040898 800A1B48 8D2D0000 */        lw $t5, ($t1)
  /* 04089C 800A1B4C 3C0E800A */       lui $t6, %hi(D_800A4B18)
  /* 0408A0 800A1B50 25CE4B18 */     addiu $t6, $t6, %lo(D_800A4B18)
  /* 0408A4 800A1B54 0060C825 */        or $t9, $v1, $zero
  /* 0408A8 800A1B58 246801EC */     addiu $t0, $v1, 0x1ec
  /* 0408AC 800A1B5C AD6D0000 */        sw $t5, ($t3) # D_800A4D08 + 0
  .L800A1B60:
  /* 0408B0 800A1B60 8F2F0000 */        lw $t7, ($t9)
  /* 0408B4 800A1B64 2739000C */     addiu $t9, $t9, 0xc
  /* 0408B8 800A1B68 25CE000C */     addiu $t6, $t6, 0xc
  /* 0408BC 800A1B6C ADCFFFF4 */        sw $t7, -0xc($t6) # D_800A4B18 + -12
  /* 0408C0 800A1B70 8F38FFF8 */        lw $t8, -8($t9)
  /* 0408C4 800A1B74 ADD8FFF8 */        sw $t8, -8($t6) # D_800A4B18 + -8
  /* 0408C8 800A1B78 8F2FFFFC */        lw $t7, -4($t9)
  /* 0408CC 800A1B7C 1728FFF8 */       bne $t9, $t0, .L800A1B60
  /* 0408D0 800A1B80 ADCFFFFC */        sw $t7, -4($t6) # D_800A4B18 + -4
  /* 0408D4 800A1B84 8F2F0000 */        lw $t7, ($t9)
  /* 0408D8 800A1B88 0C035BF8 */       jal func_unkmulti_800D6FE0 # located somewhere in: ovl2, ovl16
  /* 0408DC 800A1B8C ADCF0000 */        sw $t7, ($t6) # D_800A4B18 + 0
  /* 0408E0 800A1B90 240C0048 */     addiu $t4, $zero, 0x48
  /* 0408E4 800A1B94 3C018004 */       lui $at, %hi(D_8003CB6D)
  /* 0408E8 800A1B98 0C00840B */       jal func_8002102C
  /* 0408EC 800A1B9C A02CCB6D */        sb $t4, %lo(D_8003CB6D)($at)
  /* 0408F0 800A1BA0 0C00840F */       jal func_8002103C
  /* 0408F4 800A1BA4 00000000 */       nop 
  /* 0408F8 800A1BA8 10400005 */      beqz $v0, .L800A1BC0
  /* 0408FC 800A1BAC 00000000 */       nop 
  .L800A1BB0:
  /* 040900 800A1BB0 0C00840F */       jal func_8002103C
  /* 040904 800A1BB4 00000000 */       nop 
  /* 040908 800A1BB8 1440FFFD */      bnez $v0, .L800A1BB0
  /* 04090C 800A1BBC 00000000 */       nop 
  .L800A1BC0:
  /* 040910 800A1BC0 0C008290 */       jal func_80020A40
  /* 040914 800A1BC4 24040006 */     addiu $a0, $zero, 6
  /* 040918 800A1BC8 0C008412 */       jal func_80021048
  /* 04091C 800A1BCC 00000000 */       nop 
  /* 040920 800A1BD0 10400005 */      beqz $v0, .L800A1BE8
  /* 040924 800A1BD4 00000000 */       nop 
  .L800A1BD8:
  /* 040928 800A1BD8 0C008412 */       jal func_80021048
  /* 04092C 800A1BDC 00000000 */       nop 
  /* 040930 800A1BE0 1440FFFD */      bnez $v0, .L800A1BD8
  /* 040934 800A1BE4 00000000 */       nop 
  .L800A1BE8:
  /* 040938 800A1BE8 0C035191 */       jal func_ovl0_800D4644
  /* 04093C 800A1BEC 00000000 */       nop 
  /* 040940 800A1BF0 0C0351BD */       jal func_ovl0_800D46F4
  /* 040944 800A1BF4 00000000 */       nop 
  /* 040948 800A1BF8 3C038039 */       lui $v1, 0x8039
  /* 04094C 800A1BFC 24622A00 */     addiu $v0, $v1, 0x2a00
  /* 040950 800A1C00 3C048040 */       lui $a0, 0x8040
  /* 040954 800A1C04 0044082B */      sltu $at, $v0, $a0
  /* 040958 800A1C08 10200006 */      beqz $at, .L800A1C24
  /* 04095C 800A1C0C 3C098004 */       lui $t1, %hi(D_800451A0)
  /* 040960 800A1C10 24030001 */     addiu $v1, $zero, 1
  .L800A1C14:
  /* 040964 800A1C14 24420002 */     addiu $v0, $v0, 2
  /* 040968 800A1C18 0044082B */      sltu $at, $v0, $a0
  /* 04096C 800A1C1C 1420FFFD */      bnez $at, .L800A1C14
  /* 040970 800A1C20 A443FFFE */        sh $v1, -2($v0)
  .L800A1C24:
  /* 040974 800A1C24 8D2951A0 */        lw $t1, %lo(D_800451A0)($t1)
  /* 040978 800A1C28 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04097C 800A1C2C 15200002 */      bnez $t1, .L800A1C38
  /* 040980 800A1C30 00000000 */       nop 
  /* 040984 800A1C34 A2400000 */        sb $zero, ($s2) # D_800A4AD0 + 0
  .L800A1C38:
  /* 040988 800A1C38 3C12800A */       lui $s2, %hi(D_800A30DC)
  /* 04098C 800A1C3C 265230DC */     addiu $s2, $s2, %lo(D_800A30DC)
  /* 040990 800A1C40 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  .L800A1C44:
  /* 040994 800A1C44 2C41003E */     sltiu $at, $v0, 0x3e
  .L800A1C48:
  /* 040998 800A1C48 5020FFFF */      beql $at, $zero, .L800A1C48
  /* 04099C 800A1C4C 2C41003E */     sltiu $at, $v0, 0x3e
  /* 0409A0 800A1C50 00025880 */       sll $t3, $v0, 2
  /* 0409A4 800A1C54 3C01800A */       lui $at, %hi(jtbl_800A43BC)
  /* 0409A8 800A1C58 002B0821 */      addu $at, $at, $t3
  /* 0409AC 800A1C5C 8C2B43BC */        lw $t3, %lo(jtbl_800A43BC)($at)
  /* 0409B0 800A1C60 01600008 */        jr $t3
  /* 0409B4 800A1C64 00000000 */       nop 
  glabel jtgt_800A1C68
  /* 0409B8 800A1C68 3C04800A */       lui $a0, %hi(D_800A31FC)
  /* 0409BC 800A1C6C 0C000AF9 */       jal load_overlay
  /* 0409C0 800A1C70 248431FC */     addiu $a0, $a0, %lo(D_800A31FC)
  /* 0409C4 800A1C74 0C035981 */       jal n64_logo_entry
  /* 0409C8 800A1C78 00000000 */       nop 
  /* 0409CC 800A1C7C 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0409D0 800A1C80 1000FFF0 */         b .L800A1C44
  /* 0409D4 800A1C84 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1C88
  /* 0409D8 800A1C88 0C000AF9 */       jal load_overlay
  /* 0409DC 800A1C8C 02202025 */        or $a0, $s1, $zero
  /* 0409E0 800A1C90 3C04800A */       lui $a0, %hi(D_800A31D8)
  /* 0409E4 800A1C94 0C000AF9 */       jal load_overlay
  /* 0409E8 800A1C98 248431D8 */     addiu $a0, $a0, %lo(D_800A31D8)
  /* 0409EC 800A1C9C 3C04800A */       lui $a0, %hi(D_800A3190)
  /* 0409F0 800A1CA0 0C000AF9 */       jal load_overlay
  /* 0409F4 800A1CA4 24843190 */     addiu $a0, $a0, %lo(D_800A3190)
  /* 0409F8 800A1CA8 3C04800A */       lui $a0, %hi(D_800A31B4)
  /* 0409FC 800A1CAC 0C000AF9 */       jal load_overlay
  /* 040A00 800A1CB0 248431B4 */     addiu $a0, $a0, %lo(D_800A31B4)
  /* 040A04 800A1CB4 0C04D02E */       jal title_screen_entry
  /* 040A08 800A1CB8 00000000 */       nop 
  /* 040A0C 800A1CBC 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040A10 800A1CC0 1000FFE0 */         b .L800A1C44
  /* 040A14 800A1CC4 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1CC8
  /* 040A18 800A1CC8 3C04800A */       lui $a0, %hi(D_800A3220)
  /* 040A1C 800A1CCC 0C000AF9 */       jal load_overlay
  /* 040A20 800A1CD0 24843220 */     addiu $a0, $a0, %lo(D_800A3220)
  /* 040A24 800A1CD4 3C04800A */       lui $a0, %hi(D_800A3190)
  /* 040A28 800A1CD8 0C000AF9 */       jal load_overlay
  /* 040A2C 800A1CDC 24843190 */     addiu $a0, $a0, %lo(D_800A3190)
  /* 040A30 800A1CE0 3C04800A */       lui $a0, %hi(D_800A31B4)
  /* 040A34 800A1CE4 0C000AF9 */       jal load_overlay
  /* 040A38 800A1CE8 248431B4 */     addiu $a0, $a0, %lo(D_800A31B4)
  /* 040A3C 800A1CEC 0C035988 */       jal debug_sss_entry
  /* 040A40 800A1CF0 00000000 */       nop 
  /* 040A44 800A1CF4 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040A48 800A1CF8 1000FFD2 */         b .L800A1C44
  /* 040A4C 800A1CFC 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1D00
  /* 040A50 800A1D00 0C000AF9 */       jal load_overlay
  /* 040A54 800A1D04 02202025 */        or $a0, $s1, $zero
  /* 040A58 800A1D08 3C04800A */       lui $a0, %hi(D_800A3244)
  /* 040A5C 800A1D0C 0C000AF9 */       jal load_overlay
  /* 040A60 800A1D10 24843244 */     addiu $a0, $a0, %lo(D_800A3244)
  /* 040A64 800A1D14 3C04800A */       lui $a0, %hi(D_800A3190)
  /* 040A68 800A1D18 0C000AF9 */       jal load_overlay
  /* 040A6C 800A1D1C 24843190 */     addiu $a0, $a0, %lo(D_800A3190)
  /* 040A70 800A1D20 3C04800A */       lui $a0, %hi(D_800A31B4)
  /* 040A74 800A1D24 0C000AF9 */       jal load_overlay
  /* 040A78 800A1D28 248431B4 */     addiu $a0, $a0, %lo(D_800A31B4)
  /* 040A7C 800A1D2C 0C04C853 */       jal func_multiple_8013214C # possible labels: debug_system_entry, func_ovl46_8013214C
  /* 040A80 800A1D30 00000000 */       nop 
  /* 040A84 800A1D34 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040A88 800A1D38 1000FFC2 */         b .L800A1C44
  /* 040A8C 800A1D3C 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1D40
  /* 040A90 800A1D40 0C000AF9 */       jal load_overlay
  /* 040A94 800A1D44 02202025 */        or $a0, $s1, $zero
  /* 040A98 800A1D48 0C000AF9 */       jal load_overlay
  /* 040A9C 800A1D4C 02002025 */        or $a0, $s0, $zero
  /* 040AA0 800A1D50 3C04800A */       lui $a0, %hi(D_800A3268)
  /* 040AA4 800A1D54 0C000AF9 */       jal load_overlay
  /* 040AA8 800A1D58 24843268 */     addiu $a0, $a0, %lo(D_800A3268)
  /* 040AAC 800A1D5C 3C04800A */       lui $a0, %hi(D_800A3190)
  /* 040AB0 800A1D60 0C000AF9 */       jal load_overlay
  /* 040AB4 800A1D64 24843190 */     addiu $a0, $a0, %lo(D_800A3190)
  /* 040AB8 800A1D68 3C04800A */       lui $a0, %hi(D_800A31B4)
  /* 040ABC 800A1D6C 0C000AF9 */       jal load_overlay
  /* 040AC0 800A1D70 248431B4 */     addiu $a0, $a0, %lo(D_800A31B4)
  /* 040AC4 800A1D74 0C04C98E */       jal func_multiple_80132638 # possible labels: debug_battle_entry, func_ovl62_80132638
  /* 040AC8 800A1D78 00000000 */       nop 
  /* 040ACC 800A1D7C 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040AD0 800A1D80 1000FFB0 */         b .L800A1C44
  /* 040AD4 800A1D84 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1D88
  /* 040AD8 800A1D88 3C04800A */       lui $a0, %hi(D_800A328C)
  /* 040ADC 800A1D8C 0C000AF9 */       jal load_overlay
  /* 040AE0 800A1D90 2484328C */     addiu $a0, $a0, %lo(D_800A328C)
  /* 040AE4 800A1D94 0C0359A2 */       jal debug_falls_entry
  /* 040AE8 800A1D98 00000000 */       nop 
  /* 040AEC 800A1D9C 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040AF0 800A1DA0 1000FFA8 */         b .L800A1C44
  /* 040AF4 800A1DA4 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1DA8
  /* 040AF8 800A1DA8 3C04800A */       lui $a0, %hi(D_800A32B0)
  /* 040AFC 800A1DAC 0C000AF9 */       jal load_overlay
  /* 040B00 800A1DB0 248432B0 */     addiu $a0, $a0, %lo(D_800A32B0)
  /* 040B04 800A1DB4 0C035BEC */       jal debug_button_test_entry
  /* 040B08 800A1DB8 00000000 */       nop 
  /* 040B0C 800A1DBC 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040B10 800A1DC0 1000FFA0 */         b .L800A1C44
  /* 040B14 800A1DC4 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1DC8
  /* 040B18 800A1DC8 0C000AF9 */       jal load_overlay
  /* 040B1C 800A1DCC 02002025 */        or $a0, $s0, $zero
  /* 040B20 800A1DD0 3C04800A */       lui $a0, %hi(D_800A32D4)
  /* 040B24 800A1DD4 0C000AF9 */       jal load_overlay
  /* 040B28 800A1DD8 248432D4 */     addiu $a0, $a0, %lo(D_800A32D4)
  /* 040B2C 800A1DDC 0C04CACD */       jal menu_main_entry
  /* 040B30 800A1DE0 00000000 */       nop 
  /* 040B34 800A1DE4 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040B38 800A1DE8 1000FF96 */         b .L800A1C44
  /* 040B3C 800A1DEC 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1DF0
  /* 040B40 800A1DF0 0C000AF9 */       jal load_overlay
  /* 040B44 800A1DF4 02002025 */        or $a0, $s0, $zero
  /* 040B48 800A1DF8 3C04800A */       lui $a0, %hi(D_800A32F8)
  /* 040B4C 800A1DFC 0C000AF9 */       jal load_overlay
  /* 040B50 800A1E00 248432F8 */     addiu $a0, $a0, %lo(D_800A32F8)
  /* 040B54 800A1E04 0C04CC08 */       jal menu_1p_entry
  /* 040B58 800A1E08 00000000 */       nop 
  /* 040B5C 800A1E0C 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040B60 800A1E10 1000FF8C */         b .L800A1C44
  /* 040B64 800A1E14 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1E18
  /* 040B68 800A1E18 0C000AF9 */       jal load_overlay
  /* 040B6C 800A1E1C 02002025 */        or $a0, $s0, $zero
  /* 040B70 800A1E20 3C04800A */       lui $a0, %hi(D_800A38E0)
  /* 040B74 800A1E24 0C000AF9 */       jal load_overlay
  /* 040B78 800A1E28 248438E0 */     addiu $a0, $a0, %lo(D_800A38E0)
  /* 040B7C 800A1E2C 0C04CD70 */       jal menu_options_entry
  /* 040B80 800A1E30 00000000 */       nop 
  /* 040B84 800A1E34 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040B88 800A1E38 1000FF82 */         b .L800A1C44
  /* 040B8C 800A1E3C 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1E40
  /* 040B90 800A1E40 0C000AF9 */       jal load_overlay
  /* 040B94 800A1E44 02002025 */        or $a0, $s0, $zero
  /* 040B98 800A1E48 3C04800A */       lui $a0, %hi(D_800A3904)
  /* 040B9C 800A1E4C 0C000AF9 */       jal load_overlay
  /* 040BA0 800A1E50 24843904 */     addiu $a0, $a0, %lo(D_800A3904)
  /* 040BA4 800A1E54 0C04CBB0 */       jal menu_data_entry
  /* 040BA8 800A1E58 00000000 */       nop 
  /* 040BAC 800A1E5C 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040BB0 800A1E60 1000FF78 */         b .L800A1C44
  /* 040BB4 800A1E64 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1E68
  /* 040BB8 800A1E68 0C000AF9 */       jal load_overlay
  /* 040BBC 800A1E6C 02002025 */        or $a0, $s0, $zero
  /* 040BC0 800A1E70 3C04800A */       lui $a0, %hi(D_800A331C)
  /* 040BC4 800A1E74 0C000AF9 */       jal load_overlay
  /* 040BC8 800A1E78 2484331C */     addiu $a0, $a0, %lo(D_800A331C)
  /* 040BCC 800A1E7C 0C04D1D6 */       jal func_multiple_80134758 # possible labels: menu_vs_entry, func_ovl27_80134758
  /* 040BD0 800A1E80 00000000 */       nop 
  /* 040BD4 800A1E84 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040BD8 800A1E88 1000FF6E */         b .L800A1C44
  /* 040BDC 800A1E8C 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1E90
  /* 040BE0 800A1E90 0C000AF9 */       jal load_overlay
  /* 040BE4 800A1E94 02002025 */        or $a0, $s0, $zero
  /* 040BE8 800A1E98 3C04800A */       lui $a0, %hi(D_800A3340)
  /* 040BEC 800A1E9C 0C000AF9 */       jal load_overlay
  /* 040BF0 800A1EA0 24843340 */     addiu $a0, $a0, %lo(D_800A3340)
  /* 040BF4 800A1EA4 0C04D19A */       jal options_vs_entry
  /* 040BF8 800A1EA8 00000000 */       nop 
  /* 040BFC 800A1EAC 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040C00 800A1EB0 1000FF64 */         b .L800A1C44
  /* 040C04 800A1EB4 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1EB8
  /* 040C08 800A1EB8 0C000AF9 */       jal load_overlay
  /* 040C0C 800A1EBC 02002025 */        or $a0, $s0, $zero
  /* 040C10 800A1EC0 3C04800A */       lui $a0, %hi(D_800A3364)
  /* 040C14 800A1EC4 0C000AF9 */       jal load_overlay
  /* 040C18 800A1EC8 24843364 */     addiu $a0, $a0, %lo(D_800A3364)
  /* 040C1C 800A1ECC 0C04CC6C */       jal func_multiple_801331B0 # possible labels: overlay_set11_entry, func_ovl34_801331B0
  /* 040C20 800A1ED0 00000000 */       nop 
  /* 040C24 800A1ED4 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040C28 800A1ED8 1000FF5A */         b .L800A1C44
  /* 040C2C 800A1EDC 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1EE0
  /* 040C30 800A1EE0 0C000AF9 */       jal load_overlay
  /* 040C34 800A1EE4 02202025 */        or $a0, $s1, $zero
  /* 040C38 800A1EE8 0C000AF9 */       jal load_overlay
  /* 040C3C 800A1EEC 02002025 */        or $a0, $s0, $zero
  /* 040C40 800A1EF0 3C04800A */       lui $a0, %hi(D_800A3388)
  /* 040C44 800A1EF4 0C000AF9 */       jal load_overlay
  /* 040C48 800A1EF8 24843388 */     addiu $a0, $a0, %lo(D_800A3388)
  /* 040C4C 800A1EFC 0C04C8FE */       jal func_multiple_801323F8 # possible labels: overlay_set12_entry, func_ovl56_801323F8
  /* 040C50 800A1F00 00000000 */       nop 
  /* 040C54 800A1F04 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040C58 800A1F08 1000FF4E */         b .L800A1C44
  /* 040C5C 800A1F0C 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1F10
  /* 040C60 800A1F10 0C000AF9 */       jal load_overlay
  /* 040C64 800A1F14 02202025 */        or $a0, $s1, $zero
  /* 040C68 800A1F18 0C000AF9 */       jal load_overlay
  /* 040C6C 800A1F1C 02002025 */        or $a0, $s0, $zero
  /* 040C70 800A1F20 3C04800A */       lui $a0, %hi(D_800A33AC)
  /* 040C74 800A1F24 0C000AF9 */       jal load_overlay
  /* 040C78 800A1F28 248433AC */     addiu $a0, $a0, %lo(D_800A33AC)
  /* 040C7C 800A1F2C 0C04C8C4 */       jal overlay_set13_entry
  /* 040C80 800A1F30 00000000 */       nop 
  /* 040C84 800A1F34 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040C88 800A1F38 1000FF42 */         b .L800A1C44
  /* 040C8C 800A1F3C 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1F40
  /* 040C90 800A1F40 0C000AF9 */       jal load_overlay
  /* 040C94 800A1F44 02202025 */        or $a0, $s1, $zero
  /* 040C98 800A1F48 0C000AF9 */       jal load_overlay
  /* 040C9C 800A1F4C 02002025 */        or $a0, $s0, $zero
  /* 040CA0 800A1F50 3C04800A */       lui $a0, %hi(D_800A33D0)
  /* 040CA4 800A1F54 0C000AF9 */       jal load_overlay
  /* 040CA8 800A1F58 248433D0 */     addiu $a0, $a0, %lo(D_800A33D0)
  /* 040CAC 800A1F5C 0C04D366 */       jal classic_map_entry
  /* 040CB0 800A1F60 00000000 */       nop 
  /* 040CB4 800A1F64 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040CB8 800A1F68 1000FF36 */         b .L800A1C44
  /* 040CBC 800A1F6C 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1F70
  /* 040CC0 800A1F70 0C000AF9 */       jal load_overlay
  /* 040CC4 800A1F74 02202025 */        or $a0, $s1, $zero
  /* 040CC8 800A1F78 0C000AF9 */       jal load_overlay
  /* 040CCC 800A1F7C 02002025 */        or $a0, $s0, $zero
  /* 040CD0 800A1F80 3C04800A */       lui $a0, %hi(D_800A33F4)
  /* 040CD4 800A1F84 0C000AF9 */       jal load_overlay
  /* 040CD8 800A1F88 248433F4 */     addiu $a0, $a0, %lo(D_800A33F4)
  /* 040CDC 800A1F8C 0C04C9F6 */       jal screen_adjust_entry
  /* 040CE0 800A1F90 00000000 */       nop 
  /* 040CE4 800A1F94 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040CE8 800A1F98 1000FF2A */         b .L800A1C44
  /* 040CEC 800A1F9C 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1FA0
  /* 040CF0 800A1FA0 0C000AF9 */       jal load_overlay
  /* 040CF4 800A1FA4 02202025 */        or $a0, $s1, $zero
  /* 040CF8 800A1FA8 0C000AF9 */       jal load_overlay
  /* 040CFC 800A1FAC 02002025 */        or $a0, $s0, $zero
  /* 040D00 800A1FB0 3C04800A */       lui $a0, %hi(D_800A3418)
  /* 040D04 800A1FB4 0C000AF9 */       jal load_overlay
  /* 040D08 800A1FB8 24843418 */     addiu $a0, $a0, %lo(D_800A3418)
  /* 040D0C 800A1FBC 0C04ECCF */       jal vs_css_entry
  /* 040D10 800A1FC0 00000000 */       nop 
  /* 040D14 800A1FC4 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040D18 800A1FC8 1000FF1E */         b .L800A1C44
  /* 040D1C 800A1FCC 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1FD0
  /* 040D20 800A1FD0 0C000AF9 */       jal load_overlay
  /* 040D24 800A1FD4 02002025 */        or $a0, $s0, $zero
  /* 040D28 800A1FD8 3C04800A */       lui $a0, %hi(D_800A34A8)
  /* 040D2C 800A1FDC 0C000AF9 */       jal load_overlay
  /* 040D30 800A1FE0 248434A8 */     addiu $a0, $a0, %lo(D_800A34A8)
  /* 040D34 800A1FE4 0C04D11B */       jal stage_select_entry
  /* 040D38 800A1FE8 00000000 */       nop 
  /* 040D3C 800A1FEC 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040D40 800A1FF0 1000FF14 */         b .L800A1C44
  /* 040D44 800A1FF4 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A1FF8
  /* 040D48 800A1FF8 0C000AF9 */       jal load_overlay
  /* 040D4C 800A1FFC 02202025 */        or $a0, $s1, $zero
  /* 040D50 800A2000 0C000AF9 */       jal load_overlay
  /* 040D54 800A2004 02402025 */        or $a0, $s2, $zero
  /* 040D58 800A2008 3C04800A */       lui $a0, %hi(D_800A3100)
  /* 040D5C 800A200C 0C000AF9 */       jal load_overlay
  /* 040D60 800A2010 24843100 */     addiu $a0, $a0, %lo(D_800A3100)
  /* 040D64 800A2014 0C063864 */       jal vs_battle_entry
  /* 040D68 800A2018 00000000 */       nop 
  /* 040D6C 800A201C 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040D70 800A2020 1000FF08 */         b .L800A1C44
  /* 040D74 800A2024 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2028
  /* 040D78 800A2028 0C000AF9 */       jal load_overlay
  /* 040D7C 800A202C 02202025 */        or $a0, $s1, $zero
  /* 040D80 800A2030 0C000AF9 */       jal load_overlay
  /* 040D84 800A2034 02402025 */        or $a0, $s2, $zero
  /* 040D88 800A2038 0C000AF9 */       jal load_overlay
  /* 040D8C 800A203C 02002025 */        or $a0, $s0, $zero
  /* 040D90 800A2040 3C04800A */       lui $a0, %hi(D_800A3124)
  /* 040D94 800A2044 0C000AF9 */       jal load_overlay
  /* 040D98 800A2048 24843124 */     addiu $a0, $a0, %lo(D_800A3124)
  /* 040D9C 800A204C 0C063542 */       jal overlay_set23_entry
  /* 040DA0 800A2050 00000000 */       nop 
  /* 040DA4 800A2054 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040DA8 800A2058 1000FEFA */         b .L800A1C44
  /* 040DAC 800A205C 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2060
  /* 040DB0 800A2060 0C0359F7 */       jal func_unkmulti_800D67DC # located somewhere in: ovl2, ovl11, ovl12, ovl15, ovl16
  /* 040DB4 800A2064 00000000 */       nop 
  /* 040DB8 800A2068 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040DBC 800A206C 1000FEF5 */         b .L800A1C44
  /* 040DC0 800A2070 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2074
  /* 040DC4 800A2074 0C000AF9 */       jal load_overlay
  /* 040DC8 800A2078 02202025 */        or $a0, $s1, $zero
  /* 040DCC 800A207C 0C000AF9 */       jal load_overlay
  /* 040DD0 800A2080 02402025 */        or $a0, $s2, $zero
  /* 040DD4 800A2084 3C04800A */       lui $a0, %hi(D_800A3148)
  /* 040DD8 800A2088 0C000AF9 */       jal load_overlay
  /* 040DDC 800A208C 24843148 */     addiu $a0, $a0, %lo(D_800A3148)
  /* 040DE0 800A2090 0C063AB3 */       jal bonus_game_play_entry
  /* 040DE4 800A2094 00000000 */       nop 
  /* 040DE8 800A2098 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040DEC 800A209C 1000FEE9 */         b .L800A1C44
  /* 040DF0 800A20A0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A20A4
  /* 040DF4 800A20A4 0C000AF9 */       jal load_overlay
  /* 040DF8 800A20A8 02202025 */        or $a0, $s1, $zero
  /* 040DFC 800A20AC 0C000AF9 */       jal load_overlay
  /* 040E00 800A20B0 02402025 */        or $a0, $s2, $zero
  /* 040E04 800A20B4 3C04800A */       lui $a0, %hi(D_800A316C)
  /* 040E08 800A20B8 0C000AF9 */       jal load_overlay
  /* 040E0C 800A20BC 2484316C */     addiu $a0, $a0, %lo(D_800A316C)
  /* 040E10 800A20C0 0C06417D */       jal training_mode_battle_entry
  /* 040E14 800A20C4 00000000 */       nop 
  /* 040E18 800A20C8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040E1C 800A20CC 1000FEDD */         b .L800A1C44
  /* 040E20 800A20D0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A20D4
  /* 040E24 800A20D4 0C000AF9 */       jal load_overlay
  /* 040E28 800A20D8 02202025 */        or $a0, $s1, $zero
  /* 040E2C 800A20DC 0C000AF9 */       jal load_overlay
  /* 040E30 800A20E0 02002025 */        or $a0, $s0, $zero
  /* 040E34 800A20E4 3C04800A */       lui $a0, %hi(D_800A34CC)
  /* 040E38 800A20E8 0C000AF9 */       jal load_overlay
  /* 040E3C 800A20EC 248434CC */     addiu $a0, $a0, %lo(D_800A34CC)
  /* 040E40 800A20F0 0C04E399 */       jal vs_results_entry
  /* 040E44 800A20F4 00000000 */       nop 
  /* 040E48 800A20F8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040E4C 800A20FC 1000FED1 */         b .L800A1C44
  /* 040E50 800A2100 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2104
  /* 040E54 800A2104 0C000AF9 */       jal load_overlay
  /* 040E58 800A2108 02002025 */        or $a0, $s0, $zero
  /* 040E5C 800A210C 3C04800A */       lui $a0, %hi(D_800A34F0)
  /* 040E60 800A2110 0C000AF9 */       jal load_overlay
  /* 040E64 800A2114 248434F0 */     addiu $a0, $a0, %lo(D_800A34F0)
  /* 040E68 800A2118 0C04D974 */       jal func_multiple_801365D0 # possible labels: func_ovl26_801365D0, vs_records_entry
  /* 040E6C 800A211C 00000000 */       nop 
  /* 040E70 800A2120 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040E74 800A2124 1000FEC7 */         b .L800A1C44
  /* 040E78 800A2128 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A212C
  /* 040E7C 800A212C 0C000AF9 */       jal load_overlay
  /* 040E80 800A2130 02202025 */        or $a0, $s1, $zero
  /* 040E84 800A2134 0C000AF9 */       jal load_overlay
  /* 040E88 800A2138 02002025 */        or $a0, $s0, $zero
  /* 040E8C 800A213C 3C04800A */       lui $a0, %hi(D_800A3514)
  /* 040E90 800A2140 0C000AF9 */       jal load_overlay
  /* 040E94 800A2144 24843514 */     addiu $a0, $a0, %lo(D_800A3514)
  /* 040E98 800A2148 0C04D014 */       jal char_bkg_info_entry
  /* 040E9C 800A214C 00000000 */       nop 
  /* 040EA0 800A2150 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040EA4 800A2154 1000FEBB */         b .L800A1C44
  /* 040EA8 800A2158 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A215C
  /* 040EAC 800A215C 0C000AF9 */       jal load_overlay
  /* 040EB0 800A2160 02002025 */        or $a0, $s0, $zero
  /* 040EB4 800A2164 3C04800A */       lui $a0, %hi(D_800A3898)
  /* 040EB8 800A2168 0C000AF9 */       jal load_overlay
  /* 040EBC 800A216C 24843898 */     addiu $a0, $a0, %lo(D_800A3898)
  /* 040EC0 800A2170 0C04C7BC */       jal func_multiple_80131EF0 # possible labels: overlay_set27_entry, func_ovl60_80131EF0
  /* 040EC4 800A2174 00000000 */       nop 
  /* 040EC8 800A2178 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040ECC 800A217C 1000FEB1 */         b .L800A1C44
  /* 040ED0 800A2180 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2184
  /* 040ED4 800A2184 0C000AF9 */       jal load_overlay
  /* 040ED8 800A2188 02002025 */        or $a0, $s0, $zero
  /* 040EDC 800A218C 3C04800A */       lui $a0, %hi(D_800A3538)
  /* 040EE0 800A2190 0C000AF9 */       jal load_overlay
  /* 040EE4 800A2194 24843538 */     addiu $a0, $a0, %lo(D_800A3538)
  /* 040EE8 800A2198 0C04D26F */       jal intro_firstscene_entry
  /* 040EEC 800A219C 00000000 */       nop 
  /* 040EF0 800A21A0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040EF4 800A21A4 1000FEA7 */         b .L800A1C44
  /* 040EF8 800A21A8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A21AC
  /* 040EFC 800A21AC 3C04800A */       lui $a0, %hi(D_800A355C)
  /* 040F00 800A21B0 0C000AF9 */       jal load_overlay
  /* 040F04 800A21B4 2484355C */     addiu $a0, $a0, %lo(D_800A355C)
  /* 040F08 800A21B8 0C04CA0F */       jal func_multiple_8013283C # possible labels: func_ovl24_8013283C, func_ovl27_8013283C, intro_portrait_wipes_entry
  /* 040F0C 800A21BC 00000000 */       nop 
  /* 040F10 800A21C0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040F14 800A21C4 1000FE9F */         b .L800A1C44
  /* 040F18 800A21C8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A21CC
  /* 040F1C 800A21CC 0C000AF9 */       jal load_overlay
  /* 040F20 800A21D0 02402025 */        or $a0, $s2, $zero
  /* 040F24 800A21D4 3C04800A */       lui $a0, %hi(D_800A3580)
  /* 040F28 800A21D8 0C000AF9 */       jal load_overlay
  /* 040F2C 800A21DC 24843580 */     addiu $a0, $a0, %lo(D_800A3580)
  /* 040F30 800A21E0 0C06380C */       jal intro_focus_mario_entry
  /* 040F34 800A21E4 00000000 */       nop 
  /* 040F38 800A21E8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040F3C 800A21EC 1000FE95 */         b .L800A1C44
  /* 040F40 800A21F0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A21F4
  /* 040F44 800A21F4 3C04800A */       lui $a0, %hi(D_800A35A4)
  /* 040F48 800A21F8 0C000AF9 */       jal load_overlay
  /* 040F4C 800A21FC 248435A4 */     addiu $a0, $a0, %lo(D_800A35A4)
  /* 040F50 800A2200 0C063806 */       jal func_multiple_8018E018 # possible labels: intro_focus_dk_entry, intro_focus_link_entry
  /* 040F54 800A2204 00000000 */       nop 
  /* 040F58 800A2208 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040F5C 800A220C 1000FE8D */         b .L800A1C44
  /* 040F60 800A2210 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2214
  /* 040F64 800A2214 3C04800A */       lui $a0, %hi(D_800A35C8)
  /* 040F68 800A2218 0C000AF9 */       jal load_overlay
  /* 040F6C 800A221C 248435C8 */     addiu $a0, $a0, %lo(D_800A35C8)
  /* 040F70 800A2220 0C063832 */       jal intro_focus_samus_entry
  /* 040F74 800A2224 00000000 */       nop 
  /* 040F78 800A2228 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040F7C 800A222C 1000FE85 */         b .L800A1C44
  /* 040F80 800A2230 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2234
  /* 040F84 800A2234 3C04800A */       lui $a0, %hi(D_800A35EC)
  /* 040F88 800A2238 0C000AF9 */       jal load_overlay
  /* 040F8C 800A223C 248435EC */     addiu $a0, $a0, %lo(D_800A35EC)
  /* 040F90 800A2240 0C06380B */       jal intro_focus_fox_entry
  /* 040F94 800A2244 00000000 */       nop 
  /* 040F98 800A2248 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040F9C 800A224C 1000FE7D */         b .L800A1C44
  /* 040FA0 800A2250 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2254
  /* 040FA4 800A2254 3C04800A */       lui $a0, %hi(D_800A3610)
  /* 040FA8 800A2258 0C000AF9 */       jal load_overlay
  /* 040FAC 800A225C 24843610 */     addiu $a0, $a0, %lo(D_800A3610)
  /* 040FB0 800A2260 0C063806 */       jal func_multiple_8018E018 # possible labels: intro_focus_dk_entry, intro_focus_link_entry
  /* 040FB4 800A2264 00000000 */       nop 
  /* 040FB8 800A2268 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040FBC 800A226C 1000FE75 */         b .L800A1C44
  /* 040FC0 800A2270 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2274
  /* 040FC4 800A2274 3C04800A */       lui $a0, %hi(D_800A3634)
  /* 040FC8 800A2278 0C000AF9 */       jal load_overlay
  /* 040FCC 800A227C 24843634 */     addiu $a0, $a0, %lo(D_800A3634)
  /* 040FD0 800A2280 0C063817 */       jal func_multiple_8018E05C # possible labels: intro_focus_yoshi_entry, intro_focus_pikachu_entry
  /* 040FD4 800A2284 00000000 */       nop 
  /* 040FD8 800A2288 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040FDC 800A228C 1000FE6D */         b .L800A1C44
  /* 040FE0 800A2290 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2294
  /* 040FE4 800A2294 3C04800A */       lui $a0, %hi(D_800A3658)
  /* 040FE8 800A2298 0C000AF9 */       jal load_overlay
  /* 040FEC 800A229C 24843658 */     addiu $a0, $a0, %lo(D_800A3658)
  /* 040FF0 800A22A0 0C063817 */       jal func_multiple_8018E05C # possible labels: intro_focus_yoshi_entry, intro_focus_pikachu_entry
  /* 040FF4 800A22A4 00000000 */       nop 
  /* 040FF8 800A22A8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040FFC 800A22AC 1000FE65 */         b .L800A1C44
  /* 041000 800A22B0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A22B4
  /* 041004 800A22B4 3C04800A */       lui $a0, %hi(D_800A367C)
  /* 041008 800A22B8 0C000AF9 */       jal load_overlay
  /* 04100C 800A22BC 2484367C */     addiu $a0, $a0, %lo(D_800A367C)
  /* 041010 800A22C0 0C063816 */       jal intro_focus_kirby_entry
  /* 041014 800A22C4 00000000 */       nop 
  /* 041018 800A22C8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04101C 800A22CC 1000FE5D */         b .L800A1C44
  /* 041020 800A22D0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A22D4
  /* 041024 800A22D4 3C04800A */       lui $a0, %hi(D_800A36A0)
  /* 041028 800A22D8 0C000AF9 */       jal load_overlay
  /* 04102C 800A22DC 248436A0 */     addiu $a0, $a0, %lo(D_800A36A0)
  /* 041030 800A22E0 0C04C95B */       jal intro_chars_running_entry
  /* 041034 800A22E4 00000000 */       nop 
  /* 041038 800A22E8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04103C 800A22EC 1000FE55 */         b .L800A1C44
  /* 041040 800A22F0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A22F4
  /* 041044 800A22F4 3C04800A */       lui $a0, %hi(D_800A36C4)
  /* 041048 800A22F8 0C000AF9 */       jal load_overlay
  /* 04104C 800A22FC 248436C4 */     addiu $a0, $a0, %lo(D_800A36C4)
  /* 041050 800A2300 0C04C8B3 */       jal intro_yoshi_nest_entry
  /* 041054 800A2304 00000000 */       nop 
  /* 041058 800A2308 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04105C 800A230C 1000FE4D */         b .L800A1C44
  /* 041060 800A2310 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2314
  /* 041064 800A2314 3C04800A */       lui $a0, %hi(D_800A36E8)
  /* 041068 800A2318 0C000AF9 */       jal load_overlay
  /* 04106C 800A231C 248436E8 */     addiu $a0, $a0, %lo(D_800A36E8)
  /* 041070 800A2320 0C04C99D */       jal func_multiple_80132674 # possible labels: intro_link_hill_entry, func_ovl61_80132674
  /* 041074 800A2324 00000000 */       nop 
  /* 041078 800A2328 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04107C 800A232C 1000FE45 */         b .L800A1C44
  /* 041080 800A2330 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2334
  /* 041084 800A2334 3C04800A */       lui $a0, %hi(D_800A370C)
  /* 041088 800A2338 0C000AF9 */       jal load_overlay
  /* 04108C 800A233C 2484370C */     addiu $a0, $a0, %lo(D_800A370C)
  /* 041090 800A2340 0C04CA1B */       jal func_multiple_8013286C # possible labels: func_ovl33_8013286C, intro_mario_vs_kirby_entry
  /* 041094 800A2344 00000000 */       nop 
  /* 041098 800A2348 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04109C 800A234C 1000FE3D */         b .L800A1C44
  /* 0410A0 800A2350 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2354
  /* 0410A4 800A2354 3C04800A */       lui $a0, %hi(D_800A3730)
  /* 0410A8 800A2358 0C000AF9 */       jal load_overlay
  /* 0410AC 800A235C 24843730 */     addiu $a0, $a0, %lo(D_800A3730)
  /* 0410B0 800A2360 0C04C8D1 */       jal intro_pika_pokeball_entry
  /* 0410B4 800A2364 00000000 */       nop 
  /* 0410B8 800A2368 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0410BC 800A236C 1000FE35 */         b .L800A1C44
  /* 0410C0 800A2370 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2374
  /* 0410C4 800A2374 3C04800A */       lui $a0, %hi(D_800A3754)
  /* 0410C8 800A2378 0C000AF9 */       jal load_overlay
  /* 0410CC 800A237C 24843754 */     addiu $a0, $a0, %lo(D_800A3754)
  /* 0410D0 800A2380 0C04CA1D */       jal func_multiple_80132874 # possible labels: intro_sex_kicks_entry, func_ovl61_80132874
  /* 0410D4 800A2384 00000000 */       nop 
  /* 0410D8 800A2388 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0410DC 800A238C 1000FE2D */         b .L800A1C44
  /* 0410E0 800A2390 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2394
  /* 0410E4 800A2394 3C04800A */       lui $a0, %hi(D_800A3778)
  /* 0410E8 800A2398 0C000AF9 */       jal load_overlay
  /* 0410EC 800A239C 24843778 */     addiu $a0, $a0, %lo(D_800A3778)
  /* 0410F0 800A23A0 0C04CA26 */       jal intro_great_fox_entry
  /* 0410F4 800A23A4 00000000 */       nop 
  /* 0410F8 800A23A8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0410FC 800A23AC 1000FE25 */         b .L800A1C44
  /* 041100 800A23B0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A23B4
  /* 041104 800A23B4 0C000AF9 */       jal load_overlay
  /* 041108 800A23B8 02402025 */        or $a0, $s2, $zero
  /* 04110C 800A23BC 3C04800A */       lui $a0, %hi(D_800A379C)
  /* 041110 800A23C0 0C000AF9 */       jal load_overlay
  /* 041114 800A23C4 2484379C */     addiu $a0, $a0, %lo(D_800A379C)
  /* 041118 800A23C8 0C063606 */       jal intro_dk_vs_samus_entry
  /* 04111C 800A23CC 00000000 */       nop 
  /* 041120 800A23D0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041124 800A23D4 1000FE1B */         b .L800A1C44
  /* 041128 800A23D8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A23DC
  /* 04112C 800A23DC 3C04800A */       lui $a0, %hi(D_800A37C0)
  /* 041130 800A23E0 0C000AF9 */       jal load_overlay
  /* 041134 800A23E4 248437C0 */     addiu $a0, $a0, %lo(D_800A37C0)
  /* 041138 800A23E8 0C04C978 */       jal intro_hidden_chars_entry
  /* 04113C 800A23EC 00000000 */       nop 
  /* 041140 800A23F0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041144 800A23F4 1000FE13 */         b .L800A1C44
  /* 041148 800A23F8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A23FC
  /* 04114C 800A23FC 0C000AF9 */       jal load_overlay
  /* 041150 800A2400 02202025 */        or $a0, $s1, $zero
  /* 041154 800A2404 0C000AF9 */       jal load_overlay
  /* 041158 800A2408 02002025 */        or $a0, $s0, $zero
  /* 04115C 800A240C 3C04800A */       lui $a0, %hi(D_800A343C)
  /* 041160 800A2410 0C000AF9 */       jal load_overlay
  /* 041164 800A2414 2484343C */     addiu $a0, $a0, %lo(D_800A343C)
  /* 041168 800A2418 0C04E156 */       jal classic_css_entry
  /* 04116C 800A241C 00000000 */       nop 
  /* 041170 800A2420 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041174 800A2424 1000FE07 */         b .L800A1C44
  /* 041178 800A2428 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A242C
  /* 04117C 800A242C 0C000AF9 */       jal load_overlay
  /* 041180 800A2430 02202025 */        or $a0, $s1, $zero
  /* 041184 800A2434 0C000AF9 */       jal load_overlay
  /* 041188 800A2438 02002025 */        or $a0, $s0, $zero
  /* 04118C 800A243C 3C04800A */       lui $a0, %hi(D_800A3460)
  /* 041190 800A2440 0C000AF9 */       jal load_overlay
  /* 041194 800A2444 24843460 */     addiu $a0, $a0, %lo(D_800A3460)
  /* 041198 800A2448 0C04DFC0 */       jal training_css_entry
  /* 04119C 800A244C 00000000 */       nop 
  /* 0411A0 800A2450 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0411A4 800A2454 1000FDFB */         b .L800A1C44
  /* 0411A8 800A2458 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A245C
  /* 0411AC 800A245C 0C000AF9 */       jal load_overlay
  /* 0411B0 800A2460 02202025 */        or $a0, $s1, $zero
  /* 0411B4 800A2464 0C000AF9 */       jal load_overlay
  /* 0411B8 800A2468 02002025 */        or $a0, $s0, $zero
  /* 0411BC 800A246C 3C04800A */       lui $a0, %hi(D_800A3484)
  /* 0411C0 800A2470 0C000AF9 */       jal load_overlay
  /* 0411C4 800A2474 24843484 */     addiu $a0, $a0, %lo(D_800A3484)
  /* 0411C8 800A2478 0C04DBBD */       jal bonus_css_entry
  /* 0411CC 800A247C 00000000 */       nop 
  /* 0411D0 800A2480 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0411D4 800A2484 1000FDEF */         b .L800A1C44
  /* 0411D8 800A2488 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A248C
  /* 0411DC 800A248C 0C000AF9 */       jal load_overlay
  /* 0411E0 800A2490 02202025 */        or $a0, $s1, $zero
  /* 0411E4 800A2494 0C000AF9 */       jal load_overlay
  /* 0411E8 800A2498 02002025 */        or $a0, $s0, $zero
  /* 0411EC 800A249C 3C04800A */       lui $a0, %hi(D_800A3484)
  /* 0411F0 800A24A0 0C000AF9 */       jal load_overlay
  /* 0411F4 800A24A4 24843484 */     addiu $a0, $a0, %lo(D_800A3484)
  /* 0411F8 800A24A8 0C04DBBD */       jal bonus_css_entry
  /* 0411FC 800A24AC 00000000 */       nop 
  /* 041200 800A24B0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041204 800A24B4 1000FDE3 */         b .L800A1C44
  /* 041208 800A24B8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A24BC
  /* 04120C 800A24BC 0C000AF9 */       jal load_overlay
  /* 041210 800A24C0 02202025 */        or $a0, $s1, $zero
  /* 041214 800A24C4 0C000AF9 */       jal load_overlay
  /* 041218 800A24C8 02002025 */        or $a0, $s0, $zero
  /* 04121C 800A24CC 3C04800A */       lui $a0, %hi(D_800A37E4)
  /* 041220 800A24D0 0C000AF9 */       jal load_overlay
  /* 041224 800A24D4 248437E4 */     addiu $a0, $a0, %lo(D_800A37E4)
  /* 041228 800A24D8 0C04CB8A */       jal menu_backup_clear_entry
  /* 04122C 800A24DC 00000000 */       nop 
  /* 041230 800A24E0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041234 800A24E4 1000FDD7 */         b .L800A1C44
  /* 041238 800A24E8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A24EC
  /* 04123C 800A24EC 0C000AF9 */       jal load_overlay
  /* 041240 800A24F0 02202025 */        or $a0, $s1, $zero
  /* 041244 800A24F4 0C000AF9 */       jal load_overlay
  /* 041248 800A24F8 02002025 */        or $a0, $s0, $zero
  /* 04124C 800A24FC 3C04800A */       lui $a0, %hi(D_800A3808)
  /* 041250 800A2500 0C000AF9 */       jal load_overlay
  /* 041254 800A2504 24843808 */     addiu $a0, $a0, %lo(D_800A3808)
  /* 041258 800A2508 0C04CA9E */       jal overlay_set48_entry
  /* 04125C 800A250C 00000000 */       nop 
  /* 041260 800A2510 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041264 800A2514 1000FDCB */         b .L800A1C44
  /* 041268 800A2518 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A251C
  /* 04126C 800A251C 0C000AF9 */       jal load_overlay
  /* 041270 800A2520 02202025 */        or $a0, $s1, $zero
  /* 041274 800A2524 0C000AF9 */       jal load_overlay
  /* 041278 800A2528 02002025 */        or $a0, $s0, $zero
  /* 04127C 800A252C 3C04800A */       lui $a0, %hi(D_800A382C)
  /* 041280 800A2530 0C000AF9 */       jal load_overlay
  /* 041284 800A2534 2484382C */     addiu $a0, $a0, %lo(D_800A382C)
  /* 041288 800A2538 0C04D03F */       jal overlay_set49_entry
  /* 04128C 800A253C 00000000 */       nop 
  /* 041290 800A2540 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041294 800A2544 1000FDBF */         b .L800A1C44
  /* 041298 800A2548 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A254C
  /* 04129C 800A254C 0C000AF9 */       jal load_overlay
  /* 0412A0 800A2550 02202025 */        or $a0, $s1, $zero
  /* 0412A4 800A2554 0C000AF9 */       jal load_overlay
  /* 0412A8 800A2558 02002025 */        or $a0, $s0, $zero
  /* 0412AC 800A255C 3C04800A */       lui $a0, %hi(D_800A3850)
  /* 0412B0 800A2560 0C000AF9 */       jal load_overlay
  /* 0412B4 800A2564 24843850 */     addiu $a0, $a0, %lo(D_800A3850)
  /* 0412B8 800A2568 0C04D3A1 */       jal overlay_set50_51_entry
  /* 0412BC 800A256C 00000000 */       nop 
  /* 0412C0 800A2570 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0412C4 800A2574 1000FDB3 */         b .L800A1C44
  /* 0412C8 800A2578 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A257C
  /* 0412CC 800A257C 0C000AF9 */       jal load_overlay
  /* 0412D0 800A2580 02202025 */        or $a0, $s1, $zero
  /* 0412D4 800A2584 0C000AF9 */       jal load_overlay
  /* 0412D8 800A2588 02002025 */        or $a0, $s0, $zero
  /* 0412DC 800A258C 3C04800A */       lui $a0, %hi(D_800A3850)
  /* 0412E0 800A2590 0C000AF9 */       jal load_overlay
  /* 0412E4 800A2594 24843850 */     addiu $a0, $a0, %lo(D_800A3850)
  /* 0412E8 800A2598 0C04D3A1 */       jal overlay_set50_51_entry
  /* 0412EC 800A259C 00000000 */       nop 
  /* 0412F0 800A25A0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0412F4 800A25A4 1000FDA7 */         b .L800A1C44
  /* 0412F8 800A25A8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A25AC
  /* 0412FC 800A25AC 3C04800A */       lui $a0, %hi(D_800A38BC)
  /* 041300 800A25B0 0C000AF9 */       jal load_overlay
  /* 041304 800A25B4 248438BC */     addiu $a0, $a0, %lo(D_800A38BC)
  /* 041308 800A25B8 0C04D46E */       jal overlay_set56_entry
  /* 04130C 800A25BC 00000000 */       nop 
  /* 041310 800A25C0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041314 800A25C4 1000FD9F */         b .L800A1C44
  /* 041318 800A25C8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A25CC
  /* 04131C 800A25CC 3C04800A */       lui $a0, %hi(D_800A3874)
  /* 041320 800A25D0 0C000AF9 */       jal load_overlay
  /* 041324 800A25D4 24843874 */     addiu $a0, $a0, %lo(D_800A3874)
  /* 041328 800A25D8 0C04C803 */       jal overlay_set55_entry
  /* 04132C 800A25DC 00000000 */       nop 
  /* 041330 800A25E0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041334 800A25E4 1000FD97 */         b .L800A1C44
  /* 041338 800A25E8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A25EC
  /* 04133C 800A25EC 0C000AF9 */       jal load_overlay
  /* 041340 800A25F0 02002025 */        or $a0, $s0, $zero
  /* 041344 800A25F4 3C04800A */       lui $a0, %hi(D_800A3928)
  /* 041348 800A25F8 0C000AF9 */       jal load_overlay
  /* 04134C 800A25FC 24843928 */     addiu $a0, $a0, %lo(D_800A3928)
  /* 041350 800A2600 0C04CE62 */       jal overlay_set59_entry
  /* 041354 800A2604 00000000 */       nop 
  /* 041358 800A2608 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04135C 800A260C 1000FD8D */         b .L800A1C44
  /* 041360 800A2610 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2614
  /* 041364 800A2614 0C000AF9 */       jal load_overlay
  /* 041368 800A2618 02202025 */        or $a0, $s1, $zero
  /* 04136C 800A261C 0C000AF9 */       jal load_overlay
  /* 041370 800A2620 02402025 */        or $a0, $s2, $zero
  /* 041374 800A2624 3C04800A */       lui $a0, %hi(D_800A394C)
  /* 041378 800A2628 0C000AF9 */       jal load_overlay
  /* 04137C 800A262C 2484394C */     addiu $a0, $a0, %lo(D_800A394C)
  /* 041380 800A2630 0C063970 */       jal how_to_play_entry
  /* 041384 800A2634 00000000 */       nop 
  /* 041388 800A2638 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04138C 800A263C 1000FD81 */         b .L800A1C44
  /* 041390 800A2640 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel jtgt_800A2644
  /* 041394 800A2644 0C000AF9 */       jal load_overlay
  /* 041398 800A2648 02202025 */        or $a0, $s1, $zero
  /* 04139C 800A264C 0C000AF9 */       jal load_overlay
  /* 0413A0 800A2650 02402025 */        or $a0, $s2, $zero
  /* 0413A4 800A2654 3C04800A */       lui $a0, %hi(D_800A3970)
  /* 0413A8 800A2658 0C000AF9 */       jal load_overlay
  /* 0413AC 800A265C 24843970 */     addiu $a0, $a0, %lo(D_800A3970)
  /* 0413B0 800A2660 0C063805 */       jal func_multiple_8018E014 # possible labels: func_ovl7_8018E014, demo_battle_entry
  /* 0413B4 800A2664 00000000 */       nop 
  /* 0413B8 800A2668 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0413BC 800A266C 1000FD75 */         b .L800A1C44
  /* 0413C0 800A2670 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  /* 0413C4 800A2674 00000000 */       nop 
  /* 0413C8 800A2678 00000000 */       nop 
  /* 0413CC 800A267C 00000000 */       nop 
# Maybe start of new file
  /* 0413D0 800A2680 8FBF0024 */        lw $ra, 0x24($sp)
  /* 0413D4 800A2684 8FB00018 */        lw $s0, 0x18($sp)
  /* 0413D8 800A2688 8FB1001C */        lw $s1, 0x1c($sp)
  /* 0413DC 800A268C 8FB20020 */        lw $s2, 0x20($sp)
  /* 0413E0 800A2690 03E00008 */        jr $ra
  /* 0413E4 800A2694 27BD0418 */     addiu $sp, $sp, 0x418

glabel func_800A2698
  /* 0413E8 800A2698 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0413EC 800A269C AFBF0014 */        sw $ra, 0x14($sp)
  /* 0413F0 800A26A0 0C001A0F */       jal func_8000683C
  /* 0413F4 800A26A4 00000000 */       nop 
  /* 0413F8 800A26A8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0413FC 800A26AC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041400 800A26B0 03E00008 */        jr $ra
  /* 041404 800A26B4 00000000 */       nop 

glabel func_800A26B8
  /* 041408 800A26B8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04140C 800A26BC AFBF0014 */        sw $ra, 0x14($sp)
  /* 041410 800A26C0 0C0028D0 */       jal func_8000A340
  /* 041414 800A26C4 00000000 */       nop 
  /* 041418 800A26C8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04141C 800A26CC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041420 800A26D0 03E00008 */        jr $ra
  /* 041424 800A26D4 00000000 */       nop 

glabel func_800A26D8
  /* 041428 800A26D8 27BDFF88 */     addiu $sp, $sp, -0x78
  /* 04142C 800A26DC AFB10024 */        sw $s1, 0x24($sp)
  /* 041430 800A26E0 3C118004 */       lui $s1, %hi(D_800465B0)
  /* 041434 800A26E4 263165B0 */     addiu $s1, $s1, %lo(D_800465B0)
  /* 041438 800A26E8 AFBF002C */        sw $ra, 0x2c($sp)
  /* 04143C 800A26EC AFB20028 */        sw $s2, 0x28($sp)
  /* 041440 800A26F0 AFB00020 */        sw $s0, 0x20($sp)
  /* 041444 800A26F4 00803825 */        or $a3, $a0, $zero
  /* 041448 800A26F8 8CE50074 */        lw $a1, 0x74($a3)
  /* 04144C 800A26FC 02202025 */        or $a0, $s1, $zero
  /* 041450 800A2700 0C0058CE */       jal func_80016338
  /* 041454 800A2704 00003025 */        or $a2, $zero, $zero
  /* 041458 800A2708 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 04145C 800A270C 3C12E700 */       lui $s2, 0xe700
  /* 041460 800A2710 3C18E300 */       lui $t8, (0xE3000A01 >> 16) # 3808430593
  /* 041464 800A2714 260E0008 */     addiu $t6, $s0, 8
  /* 041468 800A2718 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04146C 800A271C AE000004 */        sw $zero, 4($s0)
  /* 041470 800A2720 AE120000 */        sw $s2, ($s0)
  /* 041474 800A2724 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 041478 800A2728 37180A01 */       ori $t8, $t8, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 04147C 800A272C 3C190030 */       lui $t9, 0x30
  /* 041480 800A2730 260F0008 */     addiu $t7, $s0, 8
  /* 041484 800A2734 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 041488 800A2738 AE190004 */        sw $t9, 4($s0)
  /* 04148C 800A273C AE180000 */        sw $t8, ($s0)
  /* 041490 800A2740 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 041494 800A2744 3C0CE200 */       lui $t4, (0xE200001C >> 16) # 3791650844
  /* 041498 800A2748 358C001C */       ori $t4, $t4, (0xE200001C & 0xFFFF) # 3791650844
  /* 04149C 800A274C 260B0008 */     addiu $t3, $s0, 8
  /* 0414A0 800A2750 AE2B0000 */        sw $t3, ($s1) # D_800465B0 + 0
  /* 0414A4 800A2754 3C0D800D */       lui $t5, %hi(D_ovl0_800D6448)
  /* 0414A8 800A2758 AE000004 */        sw $zero, 4($s0)
  /* 0414AC 800A275C AE0C0000 */        sw $t4, ($s0)
  /* 0414B0 800A2760 95AD6448 */       lhu $t5, %lo(D_ovl0_800D6448)($t5)
  /* 0414B4 800A2764 448D2000 */      mtc1 $t5, $f4
  /* 0414B8 800A2768 05A10005 */      bgez $t5, .L800A2780
  /* 0414BC 800A276C 468021A0 */   cvt.s.w $f6, $f4
  /* 0414C0 800A2770 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 0414C4 800A2774 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 0414C8 800A2778 00000000 */       nop 
  /* 0414CC 800A277C 46083180 */     add.s $f6, $f6, $f8
  .L800A2780:
  /* 0414D0 800A2780 3C0142E0 */       lui $at, (0x42E00000 >> 16) # 112.0
  /* 0414D4 800A2784 44815000 */      mtc1 $at, $f10 # 112.0 to cop1
  /* 0414D8 800A2788 3C014380 */       lui $at, (0x43800000 >> 16) # 256.0
  /* 0414DC 800A278C 44819000 */      mtc1 $at, $f18 # 256.0 to cop1
  /* 0414E0 800A2790 460A3403 */     div.s $f16, $f6, $f10
  /* 0414E4 800A2794 46128102 */     mul.s $f4, $f16, $f18
  /* 0414E8 800A2798 4600220D */ trunc.w.s $f8, $f4
  /* 0414EC 800A279C 44034000 */      mfc1 $v1, $f8
  /* 0414F0 800A27A0 00000000 */       nop 
  /* 0414F4 800A27A4 04630003 */     bgezl $v1, .L800A27B4
  /* 0414F8 800A27A8 28610101 */      slti $at, $v1, 0x101
  /* 0414FC 800A27AC 00001825 */        or $v1, $zero, $zero
  /* 041500 800A27B0 28610101 */      slti $at, $v1, 0x101
  .L800A27B4:
  /* 041504 800A27B4 54200003 */      bnel $at, $zero, .L800A27C4
  /* 041508 800A27B8 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 04150C 800A27BC 24030100 */     addiu $v1, $zero, 0x100
  /* 041510 800A27C0 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  .L800A27C4:
  /* 041514 800A27C4 3C18F700 */       lui $t8, 0xf700
  /* 041518 800A27C8 3404FFFF */       ori $a0, $zero, 0xffff
  /* 04151C 800A27CC 260F0008 */     addiu $t7, $s0, 8
  /* 041520 800A27D0 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 041524 800A27D4 AE180000 */        sw $t8, ($s0)
  /* 041528 800A27D8 AFA30074 */        sw $v1, 0x74($sp)
  /* 04152C 800A27DC 0C001B5C */       jal func_80006D70
  /* 041530 800A27E0 AFB0005C */        sw $s0, 0x5c($sp)
  /* 041534 800A27E4 8FA6005C */        lw $a2, 0x5c($sp)
  /* 041538 800A27E8 8FA30074 */        lw $v1, 0x74($sp)
  /* 04153C 800A27EC 3C01F600 */       lui $at, 0xf600
  /* 041540 800A27F0 ACC20004 */        sw $v0, 4($a2)
  /* 041544 800A27F4 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 041548 800A27F8 246B001E */     addiu $t3, $v1, 0x1e
  /* 04154C 800A27FC 316C03FF */      andi $t4, $t3, 0x3ff
  /* 041550 800A2800 000C6B80 */       sll $t5, $t4, 0xe
  /* 041554 800A2804 26190008 */     addiu $t9, $s0, 8
  /* 041558 800A2808 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04155C 800A280C 01A17025 */        or $t6, $t5, $at
  /* 041560 800A2810 3C180007 */       lui $t8, (0x7832C >> 16) # 492332
  /* 041564 800A2814 3718832C */       ori $t8, $t8, (0x7832C & 0xFFFF) # 492332
  /* 041568 800A2818 35CF0330 */       ori $t7, $t6, 0x330
  /* 04156C 800A281C AE0F0000 */        sw $t7, ($s0)
  /* 041570 800A2820 AE180004 */        sw $t8, 4($s0)
  /* 041574 800A2824 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 041578 800A2828 3C0B800D */       lui $t3, %hi(D_ovl0_800D644A)
  /* 04157C 800A282C 240700CD */     addiu $a3, $zero, 0xcd
  /* 041580 800A2830 26190008 */     addiu $t9, $s0, 8
  /* 041584 800A2834 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 041588 800A2838 AE000004 */        sw $zero, 4($s0)
  /* 04158C 800A283C AE120000 */        sw $s2, ($s0)
  /* 041590 800A2840 956B644A */       lhu $t3, %lo(D_ovl0_800D644A)($t3)
  /* 041594 800A2844 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 041598 800A2848 3C0EF700 */       lui $t6, 0xf700
  /* 04159C 800A284C 448B3000 */      mtc1 $t3, $f6
  /* 0415A0 800A2850 05610004 */      bgez $t3, .L800A2864
  /* 0415A4 800A2854 468032A0 */   cvt.s.w $f10, $f6
  /* 0415A8 800A2858 44818000 */      mtc1 $at, $f16 # 4294967300.0 to cop1
  /* 0415AC 800A285C 00000000 */       nop 
  /* 0415B0 800A2860 46105280 */     add.s $f10, $f10, $f16
  .L800A2864:
  /* 0415B4 800A2864 3C0141C0 */       lui $at, (0x41C00000 >> 16) # 24.0
  /* 0415B8 800A2868 44819000 */      mtc1 $at, $f18 # 24.0 to cop1
  /* 0415BC 800A286C 3C014380 */       lui $at, (0x43800000 >> 16) # 256.0
  /* 0415C0 800A2870 44814000 */      mtc1 $at, $f8 # 256.0 to cop1
  /* 0415C4 800A2874 46125103 */     div.s $f4, $f10, $f18
  /* 0415C8 800A2878 46082182 */     mul.s $f6, $f4, $f8
  /* 0415CC 800A287C 4600340D */ trunc.w.s $f16, $f6
  /* 0415D0 800A2880 44038000 */      mfc1 $v1, $f16
  /* 0415D4 800A2884 00000000 */       nop 
  /* 0415D8 800A2888 04630003 */     bgezl $v1, .L800A2898
  /* 0415DC 800A288C 28610101 */      slti $at, $v1, 0x101
  /* 0415E0 800A2890 00001825 */        or $v1, $zero, $zero
  /* 0415E4 800A2894 28610101 */      slti $at, $v1, 0x101
  .L800A2898:
  /* 0415E8 800A2898 54200003 */      bnel $at, $zero, .L800A28A8
  /* 0415EC 800A289C 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 0415F0 800A28A0 24030100 */     addiu $v1, $zero, 0x100
  /* 0415F4 800A28A4 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  .L800A28A8:
  /* 0415F8 800A28A8 3C04FF40 */       lui $a0, (0xFF4000FF >> 16) # 4282384639
  /* 0415FC 800A28AC 348400FF */       ori $a0, $a0, (0xFF4000FF & 0xFFFF) # 4282384639
  /* 041600 800A28B0 260D0008 */     addiu $t5, $s0, 8
  /* 041604 800A28B4 AE2D0000 */        sw $t5, ($s1) # D_800465B0 + 0
  /* 041608 800A28B8 AE0E0000 */        sw $t6, ($s0)
  /* 04160C 800A28BC AFA7006C */        sw $a3, 0x6c($sp)
  /* 041610 800A28C0 AFA30074 */        sw $v1, 0x74($sp)
  /* 041614 800A28C4 0C001B5C */       jal func_80006D70
  /* 041618 800A28C8 AFB00050 */        sw $s0, 0x50($sp)
  /* 04161C 800A28CC 8FA60050 */        lw $a2, 0x50($sp)
  /* 041620 800A28D0 8FA30074 */        lw $v1, 0x74($sp)
  /* 041624 800A28D4 8FA7006C */        lw $a3, 0x6c($sp)
  /* 041628 800A28D8 ACC20004 */        sw $v0, 4($a2)
  /* 04162C 800A28DC 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 041630 800A28E0 2478001E */     addiu $t8, $v1, 0x1e
  /* 041634 800A28E4 331903FF */      andi $t9, $t8, 0x3ff
  /* 041638 800A28E8 00195B80 */       sll $t3, $t9, 0xe
  /* 04163C 800A28EC 3C01F600 */       lui $at, 0xf600
  /* 041640 800A28F0 01616025 */        or $t4, $t3, $at
  /* 041644 800A28F4 24ED0001 */     addiu $t5, $a3, 1
  /* 041648 800A28F8 260F0008 */     addiu $t7, $s0, 8
  /* 04164C 800A28FC AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 041650 800A2900 31AE03FF */      andi $t6, $t5, 0x3ff
  /* 041654 800A2904 3C010007 */       lui $at, (0x78000 >> 16) # 491520
  /* 041658 800A2908 30F903FF */      andi $t9, $a3, 0x3ff
  /* 04165C 800A290C 00195880 */       sll $t3, $t9, 2
  /* 041660 800A2910 34218000 */       ori $at, $at, (0x78000 & 0xFFFF) # 491520
  /* 041664 800A2914 000E7880 */       sll $t7, $t6, 2
  /* 041668 800A2918 018FC025 */        or $t8, $t4, $t7
  /* 04166C 800A291C 01616825 */        or $t5, $t3, $at
  /* 041670 800A2920 AE0D0004 */        sw $t5, 4($s0)
  /* 041674 800A2924 AE180000 */        sw $t8, ($s0)
  /* 041678 800A2928 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 04167C 800A292C 3C0C800D */       lui $t4, %hi(D_ovl0_800D644C)
  /* 041680 800A2930 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 041684 800A2934 260E0008 */     addiu $t6, $s0, 8
  /* 041688 800A2938 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04168C 800A293C AE000004 */        sw $zero, 4($s0)
  /* 041690 800A2940 AE120000 */        sw $s2, ($s0)
  /* 041694 800A2944 958C644C */       lhu $t4, %lo(D_ovl0_800D644C)($t4)
  /* 041698 800A2948 24E70002 */     addiu $a3, $a3, 2
  /* 04169C 800A294C 448C5000 */      mtc1 $t4, $f10
  /* 0416A0 800A2950 05810004 */      bgez $t4, .L800A2964
  /* 0416A4 800A2954 468054A0 */   cvt.s.w $f18, $f10
  /* 0416A8 800A2958 44812000 */      mtc1 $at, $f4 # 4294967300.0 to cop1
  /* 0416AC 800A295C 00000000 */       nop 
  /* 0416B0 800A2960 46049480 */     add.s $f18, $f18, $f4
  .L800A2964:
  /* 0416B4 800A2964 3C0142A0 */       lui $at, (0x42A00000 >> 16) # 80.0
  /* 0416B8 800A2968 44814000 */      mtc1 $at, $f8 # 80.0 to cop1
  /* 0416BC 800A296C 3C014380 */       lui $at, (0x43800000 >> 16) # 256.0
  /* 0416C0 800A2970 44818000 */      mtc1 $at, $f16 # 256.0 to cop1
  /* 0416C4 800A2974 46089183 */     div.s $f6, $f18, $f8
  /* 0416C8 800A2978 46103282 */     mul.s $f10, $f6, $f16
  /* 0416CC 800A297C 4600510D */ trunc.w.s $f4, $f10
  /* 0416D0 800A2980 44032000 */      mfc1 $v1, $f4
  /* 0416D4 800A2984 00000000 */       nop 
  /* 0416D8 800A2988 04630003 */     bgezl $v1, .L800A2998
  /* 0416DC 800A298C 28610101 */      slti $at, $v1, 0x101
  /* 0416E0 800A2990 00001825 */        or $v1, $zero, $zero
  /* 0416E4 800A2994 28610101 */      slti $at, $v1, 0x101
  .L800A2998:
  /* 0416E8 800A2998 54200003 */      bnel $at, $zero, .L800A29A8
  /* 0416EC 800A299C 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 0416F0 800A29A0 24030100 */     addiu $v1, $zero, 0x100
  /* 0416F4 800A29A4 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  .L800A29A8:
  /* 0416F8 800A29A8 3C19F700 */       lui $t9, 0xf700
  /* 0416FC 800A29AC 2404FFFF */     addiu $a0, $zero, -1
  /* 041700 800A29B0 26180008 */     addiu $t8, $s0, 8
  /* 041704 800A29B4 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 041708 800A29B8 AE190000 */        sw $t9, ($s0)
  /* 04170C 800A29BC AFA7006C */        sw $a3, 0x6c($sp)
  /* 041710 800A29C0 AFA30074 */        sw $v1, 0x74($sp)
  /* 041714 800A29C4 0C001B5C */       jal func_80006D70
  /* 041718 800A29C8 AFB00044 */        sw $s0, 0x44($sp)
  /* 04171C 800A29CC 8FA80044 */        lw $t0, 0x44($sp)
  /* 041720 800A29D0 8FA30074 */        lw $v1, 0x74($sp)
  /* 041724 800A29D4 8FA7006C */        lw $a3, 0x6c($sp)
  /* 041728 800A29D8 AD020004 */        sw $v0, 4($t0)
  /* 04172C 800A29DC 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 041730 800A29E0 246D001E */     addiu $t5, $v1, 0x1e
  /* 041734 800A29E4 31AE03FF */      andi $t6, $t5, 0x3ff
  /* 041738 800A29E8 000E6380 */       sll $t4, $t6, 0xe
  /* 04173C 800A29EC 3C01F600 */       lui $at, 0xf600
  /* 041740 800A29F0 01817825 */        or $t7, $t4, $at
  /* 041744 800A29F4 24F80001 */     addiu $t8, $a3, 1
  /* 041748 800A29F8 260B0008 */     addiu $t3, $s0, 8
  /* 04174C 800A29FC AE2B0000 */        sw $t3, ($s1) # D_800465B0 + 0
  /* 041750 800A2A00 331903FF */      andi $t9, $t8, 0x3ff
  /* 041754 800A2A04 3C010007 */       lui $at, (0x78000 >> 16) # 491520
  /* 041758 800A2A08 30EE03FF */      andi $t6, $a3, 0x3ff
  /* 04175C 800A2A0C 000E6080 */       sll $t4, $t6, 2
  /* 041760 800A2A10 34218000 */       ori $at, $at, (0x78000 & 0xFFFF) # 491520
  /* 041764 800A2A14 00195880 */       sll $t3, $t9, 2
  /* 041768 800A2A18 01EB6825 */        or $t5, $t7, $t3
  /* 04176C 800A2A1C 0181C025 */        or $t8, $t4, $at
  /* 041770 800A2A20 AE180004 */        sw $t8, 4($s0)
  /* 041774 800A2A24 AE0D0000 */        sw $t5, ($s0)
  /* 041778 800A2A28 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 04177C 800A2A2C 3C0A8004 */       lui $t2, %hi(D_800465E8)
  /* 041780 800A2A30 254A65E8 */     addiu $t2, $t2, %lo(D_800465E8)
  /* 041784 800A2A34 26190008 */     addiu $t9, $s0, 8
  /* 041788 800A2A38 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04178C 800A2A3C AE120000 */        sw $s2, ($s0)
  /* 041790 800A2A40 AE000004 */        sw $zero, 4($s0)
  /* 041794 800A2A44 8D4B000C */        lw $t3, 0xc($t2) # D_800465E8 + 12
  /* 041798 800A2A48 8D4F0008 */        lw $t7, 8($t2) # D_800465E8 + 8
  /* 04179C 800A2A4C 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 0417A0 800A2A50 3C0CF700 */       lui $t4, 0xf700
  /* 0417A4 800A2A54 01EB6823 */      subu $t5, $t7, $t3
  /* 0417A8 800A2A58 260E0008 */     addiu $t6, $s0, 8
  /* 0417AC 800A2A5C AFAD0038 */        sw $t5, 0x38($sp)
  /* 0417B0 800A2A60 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 0417B4 800A2A64 AE0C0000 */        sw $t4, ($s0)
  /* 0417B8 800A2A68 2404FFFF */     addiu $a0, $zero, -1
  /* 0417BC 800A2A6C 0C001B5C */       jal func_80006D70
  /* 0417C0 800A2A70 AFB00034 */        sw $s0, 0x34($sp)
  /* 0417C4 800A2A74 8FA90034 */        lw $t1, 0x34($sp)
  /* 0417C8 800A2A78 24180001 */     addiu $t8, $zero, 1
  /* 0417CC 800A2A7C 24040014 */     addiu $a0, $zero, 0x14
  /* 0417D0 800A2A80 AD220004 */        sw $v0, 4($t1)
  /* 0417D4 800A2A84 AFB80010 */        sw $t8, 0x10($sp)
  /* 0417D8 800A2A88 8FA60038 */        lw $a2, 0x38($sp)
  /* 0417DC 800A2A8C 24050014 */     addiu $a1, $zero, 0x14
  /* 0417E0 800A2A90 0C008638 */       jal func_800218E0
  /* 0417E4 800A2A94 24070007 */     addiu $a3, $zero, 7
  /* 0417E8 800A2A98 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 0417EC 800A2A9C 3C0DE300 */       lui $t5, (0xE3000A01 >> 16) # 3808430593
  /* 0417F0 800A2AA0 35AD0A01 */       ori $t5, $t5, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 0417F4 800A2AA4 26190008 */     addiu $t9, $s0, 8
  /* 0417F8 800A2AA8 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 0417FC 800A2AAC AE000004 */        sw $zero, 4($s0)
  /* 041800 800A2AB0 AE120000 */        sw $s2, ($s0)
  /* 041804 800A2AB4 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 041808 800A2AB8 3C0CE200 */       lui $t4, (0xE200001C >> 16) # 3791650844
  /* 04180C 800A2ABC 3C180055 */       lui $t8, (0x552078 >> 16) # 5578872
  /* 041810 800A2AC0 260F0008 */     addiu $t7, $s0, 8
  /* 041814 800A2AC4 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 041818 800A2AC8 AE000004 */        sw $zero, 4($s0)
  /* 04181C 800A2ACC AE120000 */        sw $s2, ($s0)
  /* 041820 800A2AD0 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 041824 800A2AD4 37182078 */       ori $t8, $t8, (0x552078 & 0xFFFF) # 5578872
  /* 041828 800A2AD8 358C001C */       ori $t4, $t4, (0xE200001C & 0xFFFF) # 3791650844
  /* 04182C 800A2ADC 260B0008 */     addiu $t3, $s0, 8
  /* 041830 800A2AE0 AE2B0000 */        sw $t3, ($s1) # D_800465B0 + 0
  /* 041834 800A2AE4 AE000004 */        sw $zero, 4($s0)
  /* 041838 800A2AE8 AE0D0000 */        sw $t5, ($s0)
  /* 04183C 800A2AEC 8E300000 */        lw $s0, ($s1) # D_800465B0 + 0
  /* 041840 800A2AF0 260E0008 */     addiu $t6, $s0, 8
  /* 041844 800A2AF4 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 041848 800A2AF8 AE180004 */        sw $t8, 4($s0)
  /* 04184C 800A2AFC AE0C0000 */        sw $t4, ($s0)
  /* 041850 800A2B00 8FBF002C */        lw $ra, 0x2c($sp)
  /* 041854 800A2B04 8FB20028 */        lw $s2, 0x28($sp)
  /* 041858 800A2B08 8FB10024 */        lw $s1, 0x24($sp)
  /* 04185C 800A2B0C 8FB00020 */        lw $s0, 0x20($sp)
  /* 041860 800A2B10 03E00008 */        jr $ra
  /* 041864 800A2B14 27BD0078 */     addiu $sp, $sp, 0x78

glabel func_800A2B18
  /* 041868 800A2B18 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 04186C 800A2B1C AFA40040 */        sw $a0, 0x40($sp)
  /* 041870 800A2B20 AFBF003C */        sw $ra, 0x3c($sp)
  /* 041874 800A2B24 3C04EFFF */       lui $a0, (0xEFFFFFFF >> 16) # 4026531839
  /* 041878 800A2B28 AFA50044 */        sw $a1, 0x44($sp)
  /* 04187C 800A2B2C AFA60048 */        sw $a2, 0x48($sp)
  /* 041880 800A2B30 0C002C66 */       jal func_8000B198
  /* 041884 800A2B34 3484FFFF */       ori $a0, $a0, (0xEFFFFFFF & 0xFFFF) # 4026531839
  /* 041888 800A2B38 10400003 */      beqz $v0, .L800A2B48
  /* 04188C 800A2B3C 3C04EFFF */       lui $a0, (0xEFFFFFFF >> 16) # 4026531839
  /* 041890 800A2B40 10000015 */         b .L800A2B98
  /* 041894 800A2B44 00001025 */        or $v0, $zero, $zero
  .L800A2B48:
  /* 041898 800A2B48 8FAF0048 */        lw $t7, 0x48($sp)
  /* 04189C 800A2B4C 3C0E800A */       lui $t6, %hi(func_800A26D8)
  /* 0418A0 800A2B50 25CE26D8 */     addiu $t6, $t6, %lo(func_800A26D8)
  /* 0418A4 800A2B54 24180000 */     addiu $t8, $zero, 0
  /* 0418A8 800A2B58 24190000 */     addiu $t9, $zero, 0
  /* 0418AC 800A2B5C AFB9001C */        sw $t9, 0x1c($sp)
  /* 0418B0 800A2B60 AFB80018 */        sw $t8, 0x18($sp)
  /* 0418B4 800A2B64 AFAE0010 */        sw $t6, 0x10($sp)
  /* 0418B8 800A2B68 3484FFFF */       ori $a0, $a0, (0xEFFFFFFF & 0xFFFF) # 4026531839
  /* 0418BC 800A2B6C 00002825 */        or $a1, $zero, $zero
  /* 0418C0 800A2B70 8FA60040 */        lw $a2, 0x40($sp)
  /* 0418C4 800A2B74 8FA70044 */        lw $a3, 0x44($sp)
  /* 0418C8 800A2B78 AFA00020 */        sw $zero, 0x20($sp)
  /* 0418CC 800A2B7C AFA00024 */        sw $zero, 0x24($sp)
  /* 0418D0 800A2B80 AFA00028 */        sw $zero, 0x28($sp)
  /* 0418D4 800A2B84 AFA0002C */        sw $zero, 0x2c($sp)
  /* 0418D8 800A2B88 AFA00030 */        sw $zero, 0x30($sp)
  /* 0418DC 800A2B8C AFA00034 */        sw $zero, 0x34($sp)
  /* 0418E0 800A2B90 0C002E4F */       jal func_8000B93C
  /* 0418E4 800A2B94 AFAF0014 */        sw $t7, 0x14($sp)
  .L800A2B98:
  /* 0418E8 800A2B98 8FBF003C */        lw $ra, 0x3c($sp)
  /* 0418EC 800A2B9C 27BD0040 */     addiu $sp, $sp, 0x40
  /* 0418F0 800A2BA0 03E00008 */        jr $ra
  /* 0418F4 800A2BA4 00000000 */       nop 

  /* 0418F8 800A2BA8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0418FC 800A2BAC AFBF0014 */        sw $ra, 0x14($sp)
  /* 041900 800A2BB0 AFA40018 */        sw $a0, 0x18($sp)
  /* 041904 800A2BB4 AFA5001C */        sw $a1, 0x1c($sp)
  /* 041908 800A2BB8 AFA60020 */        sw $a2, 0x20($sp)
  /* 04190C 800A2BBC 0C002C66 */       jal func_8000B198
  /* 041910 800A2BC0 2404FFFE */     addiu $a0, $zero, -2
  /* 041914 800A2BC4 10400005 */      beqz $v0, .L800A2BDC
  /* 041918 800A2BC8 00402025 */        or $a0, $v0, $zero
  /* 04191C 800A2BCC 0C0026A1 */       jal func_80009A84
  /* 041920 800A2BD0 00000000 */       nop 
  /* 041924 800A2BD4 10000006 */         b .L800A2BF0
  /* 041928 800A2BD8 3C04EFFF */       lui $a0, 0xefff
  .L800A2BDC:
  /* 04192C 800A2BDC 8FA40018 */        lw $a0, 0x18($sp)
  /* 041930 800A2BE0 8FA5001C */        lw $a1, 0x1c($sp)
  /* 041934 800A2BE4 0C0088DA */       jal func_80022368
  /* 041938 800A2BE8 8FA60020 */        lw $a2, 0x20($sp)
  /* 04193C 800A2BEC 3C04EFFF */       lui $a0, (0xEFFFFFFF >> 16) # 4026531839
  .L800A2BF0:
  /* 041940 800A2BF0 0C002C66 */       jal func_8000B198
  /* 041944 800A2BF4 3484FFFF */       ori $a0, $a0, (0xEFFFFFFF & 0xFFFF) # 4026531839
  /* 041948 800A2BF8 10400005 */      beqz $v0, .L800A2C10
  /* 04194C 800A2BFC 00402025 */        or $a0, $v0, $zero
  /* 041950 800A2C00 0C0026A1 */       jal func_80009A84
  /* 041954 800A2C04 00000000 */       nop 
  /* 041958 800A2C08 10000006 */         b .L800A2C24
  /* 04195C 800A2C0C 8FBF0014 */        lw $ra, 0x14($sp)
  .L800A2C10:
  /* 041960 800A2C10 8FA40018 */        lw $a0, 0x18($sp)
  /* 041964 800A2C14 8FA5001C */        lw $a1, 0x1c($sp)
  /* 041968 800A2C18 0C028AC6 */       jal func_800A2B18
  /* 04196C 800A2C1C 8FA60020 */        lw $a2, 0x20($sp)
  /* 041970 800A2C20 8FBF0014 */        lw $ra, 0x14($sp)
  .L800A2C24:
  /* 041974 800A2C24 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041978 800A2C28 03E00008 */        jr $ra
  /* 04197C 800A2C2C 00000000 */       nop 

glabel func_800A2C30
  /* 041980 800A2C30 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 041984 800A2C34 00803025 */        or $a2, $a0, $zero
  /* 041988 800A2C38 AFBF001C */        sw $ra, 0x1c($sp)
  /* 04198C 800A2C3C AFB00018 */        sw $s0, 0x18($sp)
  /* 041990 800A2C40 8CC50000 */        lw $a1, ($a2)
  /* 041994 800A2C44 3C04800A */       lui $a0, %hi(D_800A41E0)
  /* 041998 800A2C48 248441E0 */     addiu $a0, $a0, %lo(D_800A41E0)
  /* 04199C 800A2C4C 0C008C55 */       jal func_80023154
  /* 0419A0 800A2C50 AFA60028 */        sw $a2, 0x28($sp)
  /* 0419A4 800A2C54 8FA60028 */        lw $a2, 0x28($sp)
  /* 0419A8 800A2C58 240103E8 */     addiu $at, $zero, 0x3e8
  /* 0419AC 800A2C5C 3C04800A */       lui $a0, 0x800a
  /* 0419B0 800A2C60 8CC20000 */        lw $v0, ($a2)
  /* 0419B4 800A2C64 1041000A */       beq $v0, $at, .L800A2C90
  /* 0419B8 800A2C68 240103F3 */     addiu $at, $zero, 0x3f3
  /* 0419BC 800A2C6C 10410064 */       beq $v0, $at, .L800A2E00
  /* 0419C0 800A2C70 240103F4 */     addiu $at, $zero, 0x3f4
  /* 0419C4 800A2C74 1041001E */       beq $v0, $at, .L800A2CF0
  /* 0419C8 800A2C78 3C04800A */       lui $a0, 0x800a
  /* 0419CC 800A2C7C 240103F5 */     addiu $at, $zero, 0x3f5
  /* 0419D0 800A2C80 1041002D */       beq $v0, $at, .L800A2D38
  /* 0419D4 800A2C84 3C04800A */       lui $a0, 0x800a
  /* 0419D8 800A2C88 10000077 */         b .L800A2E68
  /* 0419DC 800A2C8C 3C04800A */       lui $a0, %hi(D_800A41EC)
  .L800A2C90:
  /* 0419E0 800A2C90 8CC20084 */        lw $v0, 0x84($a2)
  /* 0419E4 800A2C94 248441EC */     addiu $a0, $a0, %lo(D_800A41EC)
  /* 0419E8 800A2C98 0C008C55 */       jal func_80023154
  /* 0419EC 800A2C9C AFA20024 */        sw $v0, 0x24($sp)
  /* 0419F0 800A2CA0 8FA20024 */        lw $v0, 0x24($sp)
  /* 0419F4 800A2CA4 3C04800A */       lui $a0, %hi(D_800A41F8)
  /* 0419F8 800A2CA8 248441F8 */     addiu $a0, $a0, %lo(D_800A41F8)
  /* 0419FC 800A2CAC 8C450008 */        lw $a1, 8($v0)
  /* 041A00 800A2CB0 9046000D */       lbu $a2, 0xd($v0)
  /* 041A04 800A2CB4 0C008C55 */       jal func_80023154
  /* 041A08 800A2CB8 8C470020 */        lw $a3, 0x20($v0)
  /* 041A0C 800A2CBC 8FA20024 */        lw $v0, 0x24($sp)
  /* 041A10 800A2CC0 3C04800A */       lui $a0, %hi(D_800A4218)
  /* 041A14 800A2CC4 24844218 */     addiu $a0, $a0, %lo(D_800A4218)
  /* 041A18 800A2CC8 8C450024 */        lw $a1, 0x24($v0)
  /* 041A1C 800A2CCC 0C008C55 */       jal func_80023154
  /* 041A20 800A2CD0 8C460028 */        lw $a2, 0x28($v0)
  /* 041A24 800A2CD4 8FA20024 */        lw $v0, 0x24($sp)
  /* 041A28 800A2CD8 3C04800A */       lui $a0, %hi(D_800A422C)
  /* 041A2C 800A2CDC 2484422C */     addiu $a0, $a0, %lo(D_800A422C)
  /* 041A30 800A2CE0 0C008C55 */       jal func_80023154
  /* 041A34 800A2CE4 8C45014C */        lw $a1, 0x14c($v0)
  /* 041A38 800A2CE8 10000062 */         b .L800A2E74
  /* 041A3C 800A2CEC 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2CF0:
  /* 041A40 800A2CF0 8CD00084 */        lw $s0, 0x84($a2)
  /* 041A44 800A2CF4 0C008C55 */       jal func_80023154
  /* 041A48 800A2CF8 24844234 */     addiu $a0, $a0, 0x4234
  /* 041A4C 800A2CFC 3C04800A */       lui $a0, %hi(D_800A423C)
  /* 041A50 800A2D00 2484423C */     addiu $a0, $a0, %lo(D_800A423C)
  /* 041A54 800A2D04 8E05000C */        lw $a1, 0xc($s0)
  /* 041A58 800A2D08 0C008C55 */       jal func_80023154
  /* 041A5C 800A2D0C 92060011 */       lbu $a2, 0x11($s0)
  /* 041A60 800A2D10 3C04800A */       lui $a0, %hi(D_800A4250)
  /* 041A64 800A2D14 24844250 */     addiu $a0, $a0, %lo(D_800A4250)
  /* 041A68 800A2D18 0C008C55 */       jal func_80023154
  /* 041A6C 800A2D1C 8E050100 */        lw $a1, 0x100($s0)
  /* 041A70 800A2D20 3C04800A */       lui $a0, %hi(D_800A4260)
  /* 041A74 800A2D24 24844260 */     addiu $a0, $a0, %lo(D_800A4260)
  /* 041A78 800A2D28 0C008C55 */       jal func_80023154
  /* 041A7C 800A2D2C 8E0500FC */        lw $a1, 0xfc($s0)
  /* 041A80 800A2D30 10000050 */         b .L800A2E74
  /* 041A84 800A2D34 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2D38:
  /* 041A88 800A2D38 8CD00084 */        lw $s0, 0x84($a2)
  /* 041A8C 800A2D3C 0C008C55 */       jal func_80023154
  /* 041A90 800A2D40 24844268 */     addiu $a0, $a0, 0x4268
  /* 041A94 800A2D44 3C04800A */       lui $a0, %hi(D_800A4270)
  /* 041A98 800A2D48 24844270 */     addiu $a0, $a0, %lo(D_800A4270)
  /* 041A9C 800A2D4C 8E05000C */        lw $a1, 0xc($s0)
  /* 041AA0 800A2D50 0C008C55 */       jal func_80023154
  /* 041AA4 800A2D54 92060015 */       lbu $a2, 0x15($s0)
  /* 041AA8 800A2D58 3C04800A */       lui $a0, %hi(D_800A4284)
  /* 041AAC 800A2D5C 24844284 */     addiu $a0, $a0, %lo(D_800A4284)
  /* 041AB0 800A2D60 0C008C55 */       jal func_80023154
  /* 041AB4 800A2D64 8E05010C */        lw $a1, 0x10c($s0)
  /* 041AB8 800A2D68 3C04800A */       lui $a0, %hi(D_800A4294)
  /* 041ABC 800A2D6C 24844294 */     addiu $a0, $a0, %lo(D_800A4294)
  /* 041AC0 800A2D70 0C008C55 */       jal func_80023154
  /* 041AC4 800A2D74 8E050108 */        lw $a1, 0x108($s0)
  /* 041AC8 800A2D78 3C04800A */       lui $a0, %hi(D_800A429C)
  /* 041ACC 800A2D7C 2484429C */     addiu $a0, $a0, %lo(D_800A429C)
  /* 041AD0 800A2D80 0C008C55 */       jal func_80023154
  /* 041AD4 800A2D84 8E050378 */        lw $a1, 0x378($s0)
  /* 041AD8 800A2D88 3C04800A */       lui $a0, %hi(D_800A42AC)
  /* 041ADC 800A2D8C 248442AC */     addiu $a0, $a0, %lo(D_800A42AC)
  /* 041AE0 800A2D90 0C008C55 */       jal func_80023154
  /* 041AE4 800A2D94 8E05037C */        lw $a1, 0x37c($s0)
  /* 041AE8 800A2D98 3C04800A */       lui $a0, %hi(D_800A42BC)
  /* 041AEC 800A2D9C 248442BC */     addiu $a0, $a0, %lo(D_800A42BC)
  /* 041AF0 800A2DA0 0C008C55 */       jal func_80023154
  /* 041AF4 800A2DA4 8E050380 */        lw $a1, 0x380($s0)
  /* 041AF8 800A2DA8 3C04800A */       lui $a0, %hi(D_800A42CC)
  /* 041AFC 800A2DAC 248442CC */     addiu $a0, $a0, %lo(D_800A42CC)
  /* 041B00 800A2DB0 0C008C55 */       jal func_80023154
  /* 041B04 800A2DB4 8E050384 */        lw $a1, 0x384($s0)
  /* 041B08 800A2DB8 3C04800A */       lui $a0, %hi(D_800A42DC)
  /* 041B0C 800A2DBC 248442DC */     addiu $a0, $a0, %lo(D_800A42DC)
  /* 041B10 800A2DC0 0C008C55 */       jal func_80023154
  /* 041B14 800A2DC4 8E050388 */        lw $a1, 0x388($s0)
  /* 041B18 800A2DC8 3C04800A */       lui $a0, %hi(D_800A42EC)
  /* 041B1C 800A2DCC 248442EC */     addiu $a0, $a0, %lo(D_800A42EC)
  /* 041B20 800A2DD0 0C008C55 */       jal func_80023154
  /* 041B24 800A2DD4 8E05038C */        lw $a1, 0x38c($s0)
  /* 041B28 800A2DD8 3C04800A */       lui $a0, %hi(D_800A42FC)
  /* 041B2C 800A2DDC 248442FC */     addiu $a0, $a0, %lo(D_800A42FC)
  /* 041B30 800A2DE0 0C008C55 */       jal func_80023154
  /* 041B34 800A2DE4 8E050390 */        lw $a1, 0x390($s0)
  /* 041B38 800A2DE8 3C04800A */       lui $a0, %hi(D_800A4310)
  /* 041B3C 800A2DEC 24844310 */     addiu $a0, $a0, %lo(D_800A4310)
  /* 041B40 800A2DF0 0C008C55 */       jal func_80023154
  /* 041B44 800A2DF4 8E050394 */        lw $a1, 0x394($s0)
  /* 041B48 800A2DF8 1000001E */         b .L800A2E74
  /* 041B4C 800A2DFC 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2E00:
  /* 041B50 800A2E00 8CD00084 */        lw $s0, 0x84($a2)
  /* 041B54 800A2E04 3C018000 */       lui $at, 0x8000
  /* 041B58 800A2E08 3C04800A */       lui $a0, 0x800a
  /* 041B5C 800A2E0C 0201082B */      sltu $at, $s0, $at
  /* 041B60 800A2E10 14200011 */      bnez $at, .L800A2E58
  /* 041B64 800A2E14 3C018080 */       lui $at, 0x8080
  /* 041B68 800A2E18 0201082B */      sltu $at, $s0, $at
  /* 041B6C 800A2E1C 1020000E */      beqz $at, .L800A2E58
  /* 041B70 800A2E20 00000000 */       nop 
  /* 041B74 800A2E24 3C04800A */       lui $a0, %hi(D_800A4320)
  /* 041B78 800A2E28 0C008C55 */       jal func_80023154
  /* 041B7C 800A2E2C 24844320 */     addiu $a0, $a0, %lo(D_800A4320)
  /* 041B80 800A2E30 3C04800A */       lui $a0, %hi(D_800A4328)
  /* 041B84 800A2E34 24844328 */     addiu $a0, $a0, %lo(D_800A4328)
  /* 041B88 800A2E38 0C008C55 */       jal func_80023154
  /* 041B8C 800A2E3C 8E050004 */        lw $a1, 4($s0)
  /* 041B90 800A2E40 3C04800A */       lui $a0, %hi(D_800A4334)
  /* 041B94 800A2E44 24844334 */     addiu $a0, $a0, %lo(D_800A4334)
  /* 041B98 800A2E48 0C008C55 */       jal func_80023154
  /* 041B9C 800A2E4C 8E050014 */        lw $a1, 0x14($s0)
  /* 041BA0 800A2E50 10000008 */         b .L800A2E74
  /* 041BA4 800A2E54 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2E58:
  /* 041BA8 800A2E58 0C008C55 */       jal func_80023154
  /* 041BAC 800A2E5C 24844344 */     addiu $a0, $a0, 0x4344
  /* 041BB0 800A2E60 10000004 */         b .L800A2E74
  /* 041BB4 800A2E64 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2E68:
  /* 041BB8 800A2E68 0C008C55 */       jal func_80023154
  /* 041BBC 800A2E6C 24844348 */     addiu $a0, $a0, 0x4348
  /* 041BC0 800A2E70 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2E74:
  /* 041BC4 800A2E74 8FB00018 */        lw $s0, 0x18($sp)
  /* 041BC8 800A2E78 27BD0028 */     addiu $sp, $sp, 0x28
  /* 041BCC 800A2E7C 03E00008 */        jr $ra
  /* 041BD0 800A2E80 00000000 */       nop 

glabel maybe_print_info_debug
  /* 041BD4 800A2E84 3C0E8004 */       lui $t6, %hi(D_8003B874)
  /* 041BD8 800A2E88 8DCEB874 */        lw $t6, %lo(D_8003B874)($t6)
  /* 041BDC 800A2E8C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 041BE0 800A2E90 AFBF0014 */        sw $ra, 0x14($sp)
  /* 041BE4 800A2E94 2DC10005 */     sltiu $at, $t6, 5
  /* 041BE8 800A2E98 10200065 */      beqz $at, .L800A3030
  /* 041BEC 800A2E9C 000E7080 */       sll $t6, $t6, 2
  /* 041BF0 800A2EA0 3C01800A */       lui $at, %hi(D_800A44B4)
  /* 041BF4 800A2EA4 002E0821 */      addu $at, $at, $t6
  /* 041BF8 800A2EA8 8C2E44B4 */        lw $t6, %lo(D_800A44B4)($at)
  /* 041BFC 800A2EAC 01C00008 */        jr $t6
  /* 041C00 800A2EB0 00000000 */       nop 
  glabel jtgt_800A2EB4
  /* 041C04 800A2EB4 3C04800A */       lui $a0, %hi(D_800A434C)
  /* 041C08 800A2EB8 0C008C55 */       jal func_80023154
  /* 041C0C 800A2EBC 2484434C */     addiu $a0, $a0, %lo(D_800A434C)
  /* 041C10 800A2EC0 1000005C */         b .L800A3034
  /* 041C14 800A2EC4 8FBF0014 */        lw $ra, 0x14($sp)
  glabel jtgt_800A2EC8
  /* 041C18 800A2EC8 3C04800A */       lui $a0, %hi(D_800A4354)
  /* 041C1C 800A2ECC 0C008C55 */       jal func_80023154
  /* 041C20 800A2ED0 24844354 */     addiu $a0, $a0, %lo(D_800A4354)
  /* 041C24 800A2ED4 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 041C28 800A2ED8 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  /* 041C2C 800A2EDC 3C04800A */       lui $a0, %hi(D_800A4358)
  /* 041C30 800A2EE0 24844358 */     addiu $a0, $a0, %lo(D_800A4358)
  /* 041C34 800A2EE4 50C00053 */      beql $a2, $zero, .L800A3034
  /* 041C38 800A2EE8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041C3C 800A2EEC 0C008C55 */       jal func_80023154
  /* 041C40 800A2EF0 8CC50014 */        lw $a1, 0x14($a2)
  /* 041C44 800A2EF4 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 041C48 800A2EF8 0C028B0C */       jal func_800A2C30
  /* 041C4C 800A2EFC 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  /* 041C50 800A2F00 1000004C */         b .L800A3034
  /* 041C54 800A2F04 8FBF0014 */        lw $ra, 0x14($sp)
  glabel jtgt_800A2F08
  /* 041C58 800A2F08 3C04800A */       lui $a0, %hi(D_800A4364)
  /* 041C5C 800A2F0C 0C008C55 */       jal func_80023154
  /* 041C60 800A2F10 24844364 */     addiu $a0, $a0, %lo(D_800A4364)
  /* 041C64 800A2F14 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 041C68 800A2F18 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  /* 041C6C 800A2F1C 3C028004 */       lui $v0, %hi(D_80046A60)
  /* 041C70 800A2F20 50C00044 */      beql $a2, $zero, .L800A3034
  /* 041C74 800A2F24 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041C78 800A2F28 8C426A60 */        lw $v0, %lo(D_80046A60)($v0)
  /* 041C7C 800A2F2C 10400016 */      beqz $v0, .L800A2F88
  /* 041C80 800A2F30 00000000 */       nop 
  /* 041C84 800A2F34 90430014 */       lbu $v1, 0x14($v0)
  /* 041C88 800A2F38 24010001 */     addiu $at, $zero, 1
  /* 041C8C 800A2F3C 3C04800A */       lui $a0, 0x800a
  /* 041C90 800A2F40 50600006 */      beql $v1, $zero, .L800A2F5C
  /* 041C94 800A2F44 8C4F001C */        lw $t7, 0x1c($v0)
  /* 041C98 800A2F48 1061000A */       beq $v1, $at, .L800A2F74
  /* 041C9C 800A2F4C 3C04800A */       lui $a0, %hi(D_800A4368)
  /* 041CA0 800A2F50 1000000D */         b .L800A2F88
  /* 041CA4 800A2F54 00000000 */       nop 
  /* 041CA8 800A2F58 8C4F001C */        lw $t7, 0x1c($v0)
  .L800A2F5C:
  /* 041CAC 800A2F5C 24844368 */     addiu $a0, $a0, %lo(D_800A4368)
  /* 041CB0 800A2F60 0C008C55 */       jal func_80023154
  /* 041CB4 800A2F64 8DE50124 */        lw $a1, 0x124($t7)
  /* 041CB8 800A2F68 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 041CBC 800A2F6C 10000006 */         b .L800A2F88
  /* 041CC0 800A2F70 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  .L800A2F74:
  /* 041CC4 800A2F74 24844374 */     addiu $a0, $a0, 0x4374
  /* 041CC8 800A2F78 0C008C55 */       jal func_80023154
  /* 041CCC 800A2F7C 8C45001C */        lw $a1, 0x1c($v0)
  /* 041CD0 800A2F80 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 041CD4 800A2F84 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  .L800A2F88:
  /* 041CD8 800A2F88 0C028B0C */       jal func_800A2C30
  /* 041CDC 800A2F8C 00C02025 */        or $a0, $a2, $zero
  /* 041CE0 800A2F90 10000028 */         b .L800A3034
  /* 041CE4 800A2F94 8FBF0014 */        lw $ra, 0x14($sp)
  glabel jtgt_800A2F98
  /* 041CE8 800A2F98 3C04800A */       lui $a0, %hi(D_800A4380)
  /* 041CEC 800A2F9C 0C008C55 */       jal func_80023154
  /* 041CF0 800A2FA0 24844380 */     addiu $a0, $a0, %lo(D_800A4380)
  /* 041CF4 800A2FA4 3C028004 */       lui $v0, %hi(D_80046A58)
  /* 041CF8 800A2FA8 8C426A58 */        lw $v0, %lo(D_80046A58)($v0)
  /* 041CFC 800A2FAC 3C04800A */       lui $a0, %hi(D_800A4388)
  /* 041D00 800A2FB0 24844388 */     addiu $a0, $a0, %lo(D_800A4388)
  /* 041D04 800A2FB4 5040001F */      beql $v0, $zero, .L800A3034
  /* 041D08 800A2FB8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041D0C 800A2FBC 0C008C55 */       jal func_80023154
  /* 041D10 800A2FC0 8C45002C */        lw $a1, 0x2c($v0)
  /* 041D14 800A2FC4 3C048004 */       lui $a0, %hi(D_80046A58)
  /* 041D18 800A2FC8 0C028B0C */       jal func_800A2C30
  /* 041D1C 800A2FCC 8C846A58 */        lw $a0, %lo(D_80046A58)($a0)
  /* 041D20 800A2FD0 10000018 */         b .L800A3034
  /* 041D24 800A2FD4 8FBF0014 */        lw $ra, 0x14($sp)
  glabel jtgt_800A2FD8
  /* 041D28 800A2FD8 3C04800A */       lui $a0, %hi(D_800A4394)
  /* 041D2C 800A2FDC 0C008C55 */       jal func_80023154
  /* 041D30 800A2FE0 24844394 */     addiu $a0, $a0, %lo(D_800A4394)
  /* 041D34 800A2FE4 3C028004 */       lui $v0, %hi(D_80046A58)
  /* 041D38 800A2FE8 8C426A58 */        lw $v0, %lo(D_80046A58)($v0)
  /* 041D3C 800A2FEC 3C04800A */       lui $a0, %hi(D_800A439C)
  /* 041D40 800A2FF0 2484439C */     addiu $a0, $a0, %lo(D_800A439C)
  /* 041D44 800A2FF4 10400003 */      beqz $v0, .L800A3004
  /* 041D48 800A2FF8 00000000 */       nop 
  /* 041D4C 800A2FFC 0C008C55 */       jal func_80023154
  /* 041D50 800A3000 8C45002C */        lw $a1, 0x2c($v0)
  .L800A3004:
  /* 041D54 800A3004 3C028004 */       lui $v0, %hi(D_80046A5C)
  /* 041D58 800A3008 8C426A5C */        lw $v0, %lo(D_80046A5C)($v0)
  /* 041D5C 800A300C 3C04800A */       lui $a0, %hi(D_800A43AC)
  /* 041D60 800A3010 248443AC */     addiu $a0, $a0, %lo(D_800A43AC)
  /* 041D64 800A3014 50400007 */      beql $v0, $zero, .L800A3034
  /* 041D68 800A3018 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041D6C 800A301C 0C008C55 */       jal func_80023154
  /* 041D70 800A3020 8C45002C */        lw $a1, 0x2c($v0)
  /* 041D74 800A3024 3C048004 */       lui $a0, %hi(D_80046A5C)
  /* 041D78 800A3028 0C028B0C */       jal func_800A2C30
  /* 041D7C 800A302C 8C846A5C */        lw $a0, %lo(D_80046A5C)($a0)
  .L800A3030:
  /* 041D80 800A3030 8FBF0014 */        lw $ra, 0x14($sp)
  .L800A3034:
  /* 041D84 800A3034 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041D88 800A3038 03E00008 */        jr $ra
  /* 041D8C 800A303C 00000000 */       nop 

glabel func_800A3040
  /* 041D90 800A3040 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 041D94 800A3044 AFBF0014 */        sw $ra, 0x14($sp)
  /* 041D98 800A3048 3C04800A */       lui $a0, %hi(maybe_print_info_debug)
  /* 041D9C 800A304C 0C008DDE */       jal func_80023778
  /* 041DA0 800A3050 24842E84 */     addiu $a0, $a0, %lo(maybe_print_info_debug)
  /* 041DA4 800A3054 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041DA8 800A3058 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041DAC 800A305C 03E00008 */        jr $ra
  /* 041DB0 800A3060 00000000 */       nop 

  /* 041DB4 800A3064 00000000 */       nop 
  /* 041DB8 800A3068 00000000 */       nop 
  /* 041DBC 800A306C 00000000 */       nop 
