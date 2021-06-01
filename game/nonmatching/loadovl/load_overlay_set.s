.section .late_rodata
glabel jtbl_800A43BC
  /* 2A3C 04310C 800A43BC */  .word L800A1C68
  /* 2A40 043110 800A43C0 */  .word L800A1C88
  /* 2A44 043114 800A43C4 */  .word L800A1CC8
  /* 2A48 043118 800A43C8 */  .word L800A1D00
  /* 2A4C 04311C 800A43CC */  .word L800A1D40
  /* 2A50 043120 800A43D0 */  .word L800A1D88
  /* 2A54 043124 800A43D4 */  .word L800A1DA8
  /* 2A58 043128 800A43D8 */  .word L800A1DC8
  /* 2A5C 04312C 800A43DC */  .word L800A1DF0
  /* 2A60 043130 800A43E0 */  .word L800A1E68
  /* 2A64 043134 800A43E4 */  .word L800A1E90
  /* 2A68 043138 800A43E8 */  .word L800A1EB8
  /* 2A6C 04313C 800A43EC */  .word L800A1EE0
  /* 2A70 043140 800A43F0 */  .word L800A1F10
  /* 2A74 043144 800A43F4 */  .word L800A1F40
  /* 2A78 043148 800A43F8 */  .word L800A1F70
  /* 2A7C 04314C 800A43FC */  .word L800A1FA0
  /* 2A80 043150 800A4400 */  .word L800A23FC
  /* 2A84 043154 800A4404 */  .word L800A242C
  /* 2A88 043158 800A4408 */  .word L800A245C
  /* 2A8C 04315C 800A440C */  .word L800A248C
  /* 2A90 043160 800A4410 */  .word L800A1FD0
  /* 2A94 043164 800A4414 */  .word L800A1FF8
  /* 2A98 043168 800A4418 */  .word L800A2028
  /* 2A9C 04316C 800A441C */  .word L800A20D4
  /* 2AA0 043170 800A4420 */  .word L800A2104
  /* 2AA4 043174 800A4424 */  .word L800A212C
  /* 2AA8 043178 800A4428 */  .word L800A215C
  /* 2AAC 04317C 800A442C */  .word L800A2184
  /* 2AB0 043180 800A4430 */  .word L800A21AC
  /* 2AB4 043184 800A4434 */  .word L800A21CC
  /* 2AB8 043188 800A4438 */  .word L800A21F4
  /* 2ABC 04318C 800A443C */  .word L800A2214
  /* 2AC0 043190 800A4440 */  .word L800A2234
  /* 2AC4 043194 800A4444 */  .word L800A2254
  /* 2AC8 043198 800A4448 */  .word L800A2274
  /* 2ACC 04319C 800A444C */  .word L800A2294
  /* 2AD0 0431A0 800A4450 */  .word L800A22B4
  /* 2AD4 0431A4 800A4454 */  .word L800A22D4
  /* 2AD8 0431A8 800A4458 */  .word L800A22F4
  /* 2ADC 0431AC 800A445C */  .word L800A2314
  /* 2AE0 0431B0 800A4460 */  .word L800A2334
  /* 2AE4 0431B4 800A4464 */  .word L800A2354
  /* 2AE8 0431B8 800A4468 */  .word L800A2374
  /* 2AEC 0431BC 800A446C */  .word L800A2394
  /* 2AF0 0431C0 800A4470 */  .word L800A23B4
  /* 2AF4 0431C4 800A4474 */  .word L800A23DC
  /* 2AF8 0431C8 800A4478 */  .word L800A24BC
  /* 2AFC 0431CC 800A447C */  .word L800A24EC
  /* 2B00 0431D0 800A4480 */  .word L800A251C
  /* 2B04 0431D4 800A4484 */  .word L800A254C
  /* 2B08 0431D8 800A4488 */  .word L800A257C
  /* 2B0C 0431DC 800A448C */  .word L800A2060
  /* 2B10 0431E0 800A4490 */  .word L800A2074
  /* 2B14 0431E4 800A4494 */  .word L800A20A4
  /* 2B18 0431E8 800A4498 */  .word L800A25CC
  /* 2B1C 0431EC 800A449C */  .word L800A25AC
  /* 2B20 0431F0 800A44A0 */  .word L800A1E18
  /* 2B24 0431F4 800A44A4 */  .word L800A1E40
  /* 2B28 0431F8 800A44A8 */  .word L800A25EC
  /* 2B2C 0431FC 800A44AC */  .word L800A2614
  /* 2B30 043200 800A44B0 */  .word L800A2644


.section .text
glabel load_overlay_set
  /* 0406D0 800A1980 27BDFBE8 */     addiu $sp, $sp, -0x418
  /* 0406D4 800A1984 AFBF0024 */        sw $ra, 0x24($sp)
  /* 0406D8 800A1988 AFA40418 */        sw $a0, 0x418($sp)
  /* 0406DC 800A198C AFB20020 */        sw $s2, 0x20($sp)
  /* 0406E0 800A1990 AFB1001C */        sw $s1, 0x1c($sp)
  /* 0406E4 800A1994 AFB00018 */        sw $s0, 0x18($sp)
  /* 0406E8 800A1998 0C0010E5 */       jal set_contstatus_delay
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
  # copy D_800A3994 to D_800A44E0 (struct of 0x5EC bytes)
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
  # finish above, copy D_800A3F80 to D_800A4AD0 (48 bytes)
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
  # move 0x1F0 struct from D_800A3FC8 to sp30
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
  # from sp30 to D_800A4EF8 (0x1F0 bytes)
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
  # copy sp30 to sp220 (0x1F0)
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
  # sp220 to D_800A4D08 (0x1F0)
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
  # sp220 to D_800A4B18 (0x1F0 bytes)
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
  glabel L800A1C68
  /* 0409B8 800A1C68 3C04800A */       lui $a0, %hi(D_800A31FC)
  /* 0409BC 800A1C6C 0C000AF9 */       jal load_overlay
  /* 0409C0 800A1C70 248431FC */     addiu $a0, $a0, %lo(D_800A31FC)
  /* 0409C4 800A1C74 0C035981 */       jal n64_logo_entry
  /* 0409C8 800A1C78 00000000 */       nop 
  /* 0409CC 800A1C7C 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0409D0 800A1C80 1000FFF0 */         b .L800A1C44
  /* 0409D4 800A1C84 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A1C88
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
  glabel L800A1CC8
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
  glabel L800A1D00
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
  glabel L800A1D40
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
  glabel L800A1D88
  /* 040AD8 800A1D88 3C04800A */       lui $a0, %hi(D_800A328C)
  /* 040ADC 800A1D8C 0C000AF9 */       jal load_overlay
  /* 040AE0 800A1D90 2484328C */     addiu $a0, $a0, %lo(D_800A328C)
  /* 040AE4 800A1D94 0C0359A2 */       jal debug_falls_entry
  /* 040AE8 800A1D98 00000000 */       nop 
  /* 040AEC 800A1D9C 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040AF0 800A1DA0 1000FFA8 */         b .L800A1C44
  /* 040AF4 800A1DA4 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A1DA8
  /* 040AF8 800A1DA8 3C04800A */       lui $a0, %hi(D_800A32B0)
  /* 040AFC 800A1DAC 0C000AF9 */       jal load_overlay
  /* 040B00 800A1DB0 248432B0 */     addiu $a0, $a0, %lo(D_800A32B0)
  /* 040B04 800A1DB4 0C035BEC */       jal debug_button_test_entry
  /* 040B08 800A1DB8 00000000 */       nop 
  /* 040B0C 800A1DBC 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040B10 800A1DC0 1000FFA0 */         b .L800A1C44
  /* 040B14 800A1DC4 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A1DC8
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
  glabel L800A1DF0
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
  glabel L800A1E18
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
  glabel L800A1E40
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
  glabel L800A1E68
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
  glabel L800A1E90
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
  glabel L800A1EB8
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
  glabel L800A1EE0
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
  glabel L800A1F10
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
  glabel L800A1F40
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
  glabel L800A1F70
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
  glabel L800A1FA0
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
  glabel L800A1FD0
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
  glabel L800A1FF8
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
  glabel L800A2028
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
  glabel L800A2060
  /* 040DB0 800A2060 0C0359F7 */       jal func_unkmulti_800D67DC # located somewhere in: ovl2, ovl11, ovl12, ovl15, ovl16
  /* 040DB4 800A2064 00000000 */       nop 
  /* 040DB8 800A2068 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040DBC 800A206C 1000FEF5 */         b .L800A1C44
  /* 040DC0 800A2070 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2074
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
  glabel L800A20A4
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
  glabel L800A20D4
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
  glabel L800A2104
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
  glabel L800A212C
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
  glabel L800A215C
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
  glabel L800A2184
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
  glabel L800A21AC
  /* 040EFC 800A21AC 3C04800A */       lui $a0, %hi(D_800A355C)
  /* 040F00 800A21B0 0C000AF9 */       jal load_overlay
  /* 040F04 800A21B4 2484355C */     addiu $a0, $a0, %lo(D_800A355C)
  /* 040F08 800A21B8 0C04CA0F */       jal func_multiple_8013283C # possible labels: func_ovl24_8013283C, func_ovl27_8013283C, intro_portrait_wipes_entry
  /* 040F0C 800A21BC 00000000 */       nop 
  /* 040F10 800A21C0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040F14 800A21C4 1000FE9F */         b .L800A1C44
  /* 040F18 800A21C8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A21CC
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
  glabel L800A21F4
  /* 040F44 800A21F4 3C04800A */       lui $a0, %hi(D_800A35A4)
  /* 040F48 800A21F8 0C000AF9 */       jal load_overlay
  /* 040F4C 800A21FC 248435A4 */     addiu $a0, $a0, %lo(D_800A35A4)
  /* 040F50 800A2200 0C063806 */       jal func_multiple_8018E018 # possible labels: intro_focus_dk_entry, intro_focus_link_entry
  /* 040F54 800A2204 00000000 */       nop 
  /* 040F58 800A2208 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040F5C 800A220C 1000FE8D */         b .L800A1C44
  /* 040F60 800A2210 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2214
  /* 040F64 800A2214 3C04800A */       lui $a0, %hi(D_800A35C8)
  /* 040F68 800A2218 0C000AF9 */       jal load_overlay
  /* 040F6C 800A221C 248435C8 */     addiu $a0, $a0, %lo(D_800A35C8)
  /* 040F70 800A2220 0C063832 */       jal intro_focus_samus_entry
  /* 040F74 800A2224 00000000 */       nop 
  /* 040F78 800A2228 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040F7C 800A222C 1000FE85 */         b .L800A1C44
  /* 040F80 800A2230 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2234
  /* 040F84 800A2234 3C04800A */       lui $a0, %hi(D_800A35EC)
  /* 040F88 800A2238 0C000AF9 */       jal load_overlay
  /* 040F8C 800A223C 248435EC */     addiu $a0, $a0, %lo(D_800A35EC)
  /* 040F90 800A2240 0C06380B */       jal intro_focus_fox_entry
  /* 040F94 800A2244 00000000 */       nop 
  /* 040F98 800A2248 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040F9C 800A224C 1000FE7D */         b .L800A1C44
  /* 040FA0 800A2250 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2254
  /* 040FA4 800A2254 3C04800A */       lui $a0, %hi(D_800A3610)
  /* 040FA8 800A2258 0C000AF9 */       jal load_overlay
  /* 040FAC 800A225C 24843610 */     addiu $a0, $a0, %lo(D_800A3610)
  /* 040FB0 800A2260 0C063806 */       jal func_multiple_8018E018 # possible labels: intro_focus_dk_entry, intro_focus_link_entry
  /* 040FB4 800A2264 00000000 */       nop 
  /* 040FB8 800A2268 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040FBC 800A226C 1000FE75 */         b .L800A1C44
  /* 040FC0 800A2270 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2274
  /* 040FC4 800A2274 3C04800A */       lui $a0, %hi(D_800A3634)
  /* 040FC8 800A2278 0C000AF9 */       jal load_overlay
  /* 040FCC 800A227C 24843634 */     addiu $a0, $a0, %lo(D_800A3634)
  /* 040FD0 800A2280 0C063817 */       jal func_multiple_8018E05C # possible labels: intro_focus_yoshi_entry, intro_focus_pikachu_entry
  /* 040FD4 800A2284 00000000 */       nop 
  /* 040FD8 800A2288 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040FDC 800A228C 1000FE6D */         b .L800A1C44
  /* 040FE0 800A2290 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2294
  /* 040FE4 800A2294 3C04800A */       lui $a0, %hi(D_800A3658)
  /* 040FE8 800A2298 0C000AF9 */       jal load_overlay
  /* 040FEC 800A229C 24843658 */     addiu $a0, $a0, %lo(D_800A3658)
  /* 040FF0 800A22A0 0C063817 */       jal func_multiple_8018E05C # possible labels: intro_focus_yoshi_entry, intro_focus_pikachu_entry
  /* 040FF4 800A22A4 00000000 */       nop 
  /* 040FF8 800A22A8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 040FFC 800A22AC 1000FE65 */         b .L800A1C44
  /* 041000 800A22B0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A22B4
  /* 041004 800A22B4 3C04800A */       lui $a0, %hi(D_800A367C)
  /* 041008 800A22B8 0C000AF9 */       jal load_overlay
  /* 04100C 800A22BC 2484367C */     addiu $a0, $a0, %lo(D_800A367C)
  /* 041010 800A22C0 0C063816 */       jal intro_focus_kirby_entry
  /* 041014 800A22C4 00000000 */       nop 
  /* 041018 800A22C8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04101C 800A22CC 1000FE5D */         b .L800A1C44
  /* 041020 800A22D0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A22D4
  /* 041024 800A22D4 3C04800A */       lui $a0, %hi(D_800A36A0)
  /* 041028 800A22D8 0C000AF9 */       jal load_overlay
  /* 04102C 800A22DC 248436A0 */     addiu $a0, $a0, %lo(D_800A36A0)
  /* 041030 800A22E0 0C04C95B */       jal intro_chars_running_entry
  /* 041034 800A22E4 00000000 */       nop 
  /* 041038 800A22E8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04103C 800A22EC 1000FE55 */         b .L800A1C44
  /* 041040 800A22F0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A22F4
  /* 041044 800A22F4 3C04800A */       lui $a0, %hi(D_800A36C4)
  /* 041048 800A22F8 0C000AF9 */       jal load_overlay
  /* 04104C 800A22FC 248436C4 */     addiu $a0, $a0, %lo(D_800A36C4)
  /* 041050 800A2300 0C04C8B3 */       jal intro_yoshi_nest_entry
  /* 041054 800A2304 00000000 */       nop 
  /* 041058 800A2308 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04105C 800A230C 1000FE4D */         b .L800A1C44
  /* 041060 800A2310 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2314
  /* 041064 800A2314 3C04800A */       lui $a0, %hi(D_800A36E8)
  /* 041068 800A2318 0C000AF9 */       jal load_overlay
  /* 04106C 800A231C 248436E8 */     addiu $a0, $a0, %lo(D_800A36E8)
  /* 041070 800A2320 0C04C99D */       jal func_multiple_80132674 # possible labels: intro_link_hill_entry, func_ovl61_80132674
  /* 041074 800A2324 00000000 */       nop 
  /* 041078 800A2328 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04107C 800A232C 1000FE45 */         b .L800A1C44
  /* 041080 800A2330 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2334
  /* 041084 800A2334 3C04800A */       lui $a0, %hi(D_800A370C)
  /* 041088 800A2338 0C000AF9 */       jal load_overlay
  /* 04108C 800A233C 2484370C */     addiu $a0, $a0, %lo(D_800A370C)
  /* 041090 800A2340 0C04CA1B */       jal func_multiple_8013286C # possible labels: func_ovl33_8013286C, intro_mario_vs_kirby_entry
  /* 041094 800A2344 00000000 */       nop 
  /* 041098 800A2348 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 04109C 800A234C 1000FE3D */         b .L800A1C44
  /* 0410A0 800A2350 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2354
  /* 0410A4 800A2354 3C04800A */       lui $a0, %hi(D_800A3730)
  /* 0410A8 800A2358 0C000AF9 */       jal load_overlay
  /* 0410AC 800A235C 24843730 */     addiu $a0, $a0, %lo(D_800A3730)
  /* 0410B0 800A2360 0C04C8D1 */       jal intro_pika_pokeball_entry
  /* 0410B4 800A2364 00000000 */       nop 
  /* 0410B8 800A2368 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0410BC 800A236C 1000FE35 */         b .L800A1C44
  /* 0410C0 800A2370 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2374
  /* 0410C4 800A2374 3C04800A */       lui $a0, %hi(D_800A3754)
  /* 0410C8 800A2378 0C000AF9 */       jal load_overlay
  /* 0410CC 800A237C 24843754 */     addiu $a0, $a0, %lo(D_800A3754)
  /* 0410D0 800A2380 0C04CA1D */       jal func_multiple_80132874 # possible labels: intro_sex_kicks_entry, func_ovl61_80132874
  /* 0410D4 800A2384 00000000 */       nop 
  /* 0410D8 800A2388 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0410DC 800A238C 1000FE2D */         b .L800A1C44
  /* 0410E0 800A2390 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A2394
  /* 0410E4 800A2394 3C04800A */       lui $a0, %hi(D_800A3778)
  /* 0410E8 800A2398 0C000AF9 */       jal load_overlay
  /* 0410EC 800A239C 24843778 */     addiu $a0, $a0, %lo(D_800A3778)
  /* 0410F0 800A23A0 0C04CA26 */       jal intro_great_fox_entry
  /* 0410F4 800A23A4 00000000 */       nop 
  /* 0410F8 800A23A8 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 0410FC 800A23AC 1000FE25 */         b .L800A1C44
  /* 041100 800A23B0 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A23B4
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
  glabel L800A23DC
  /* 04112C 800A23DC 3C04800A */       lui $a0, %hi(D_800A37C0)
  /* 041130 800A23E0 0C000AF9 */       jal load_overlay
  /* 041134 800A23E4 248437C0 */     addiu $a0, $a0, %lo(D_800A37C0)
  /* 041138 800A23E8 0C04C978 */       jal intro_hidden_chars_entry
  /* 04113C 800A23EC 00000000 */       nop 
  /* 041140 800A23F0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041144 800A23F4 1000FE13 */         b .L800A1C44
  /* 041148 800A23F8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A23FC
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
  glabel L800A242C
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
  glabel L800A245C
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
  glabel L800A248C
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
  glabel L800A24BC
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
  glabel L800A24EC
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
  glabel L800A251C
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
  glabel L800A254C
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
  glabel L800A257C
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
  glabel L800A25AC
  /* 0412FC 800A25AC 3C04800A */       lui $a0, %hi(D_800A38BC)
  /* 041300 800A25B0 0C000AF9 */       jal load_overlay
  /* 041304 800A25B4 248438BC */     addiu $a0, $a0, %lo(D_800A38BC)
  /* 041308 800A25B8 0C04D46E */       jal overlay_set56_entry
  /* 04130C 800A25BC 00000000 */       nop 
  /* 041310 800A25C0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041314 800A25C4 1000FD9F */         b .L800A1C44
  /* 041318 800A25C8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A25CC
  /* 04131C 800A25CC 3C04800A */       lui $a0, %hi(D_800A3874)
  /* 041320 800A25D0 0C000AF9 */       jal load_overlay
  /* 041324 800A25D4 24843874 */     addiu $a0, $a0, %lo(D_800A3874)
  /* 041328 800A25D8 0C04C803 */       jal overlay_set55_entry
  /* 04132C 800A25DC 00000000 */       nop 
  /* 041330 800A25E0 3C02800A */       lui $v0, %hi(D_800A4AD0)
  /* 041334 800A25E4 1000FD97 */         b .L800A1C44
  /* 041338 800A25E8 90424AD0 */       lbu $v0, %lo(D_800A4AD0)($v0)
  glabel L800A25EC
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
  glabel L800A2614
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
  glabel L800A2644
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

