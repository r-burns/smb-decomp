.section .text
glabel func_8000683C
  /* 00743C 8000683C 27BDFF70 */     addiu $sp, $sp, -0x90
  /* 007440 80006840 AFBF001C */        sw $ra, 0x1c($sp)
  /* 007444 80006844 AFB00018 */        sw $s0, 0x18($sp)
  /* 007448 80006848 00808025 */        or $s0, $a0, $zero
  /* 00744C 8000684C 8E050010 */        lw $a1, 0x10($s0)
  /* 007450 80006850 0C001254 */       jal func_80004950
  /* 007454 80006854 8C84000C */        lw $a0, 0xc($a0)
  /* 007458 80006858 8E040040 */        lw $a0, 0x40($s0)
  /* 00745C 8000685C 24050008 */     addiu $a1, $zero, 8
  /* 007460 80006860 00800821 */      addu $at, $a0, $zero
  /* 007464 80006864 000420C0 */       sll $a0, $a0, 3
  /* 007468 80006868 00812023 */      subu $a0, $a0, $at
  /* 00746C 8000686C 0C001260 */       jal func_80004980
  /* 007470 80006870 00042180 */       sll $a0, $a0, 6
  /* 007474 80006874 AFA20024 */        sw $v0, 0x24($sp)
  /* 007478 80006878 8E0E0040 */        lw $t6, 0x40($s0)
  /* 00747C 8000687C AFAE0028 */        sw $t6, 0x28($sp)
  /* 007480 80006880 8E0F0044 */        lw $t7, 0x44($s0)
  /* 007484 80006884 AFAF002C */        sw $t7, 0x2c($sp)
  /* 007488 80006888 8E030044 */        lw $v1, 0x44($s0)
  /* 00748C 8000688C 5060000B */      beql $v1, $zero, .L800068BC
  /* 007490 80006890 AFA00030 */        sw $zero, 0x30($sp)
  /* 007494 80006894 8E190048 */        lw $t9, 0x48($s0)
  /* 007498 80006898 24780008 */     addiu $t8, $v1, 8
  /* 00749C 8000689C 24050008 */     addiu $a1, $zero, 8
  /* 0074A0 800068A0 03190019 */     multu $t8, $t9
  /* 0074A4 800068A4 00002012 */      mflo $a0
  /* 0074A8 800068A8 0C001260 */       jal func_80004980
  /* 0074AC 800068AC 00000000 */       nop 
  /* 0074B0 800068B0 10000002 */         b .L800068BC
  /* 0074B4 800068B4 AFA20030 */        sw $v0, 0x30($sp)
  /* 0074B8 800068B8 AFA00030 */        sw $zero, 0x30($sp)
  .L800068BC:
  /* 0074BC 800068BC 8E080048 */        lw $t0, 0x48($s0)
  /* 0074C0 800068C0 24050004 */     addiu $a1, $zero, 4
  /* 0074C4 800068C4 AFA80034 */        sw $t0, 0x34($sp)
  /* 0074C8 800068C8 8E09004C */        lw $t1, 0x4c($s0)
  /* 0074CC 800068CC AFA90038 */        sw $t1, 0x38($sp)
  /* 0074D0 800068D0 8E040050 */        lw $a0, 0x50($s0)
  /* 0074D4 800068D4 00800821 */      addu $at, $a0, $zero
  /* 0074D8 800068D8 000420C0 */       sll $a0, $a0, 3
  /* 0074DC 800068DC 00812021 */      addu $a0, $a0, $at
  /* 0074E0 800068E0 0C001260 */       jal func_80004980
  /* 0074E4 800068E4 00042080 */       sll $a0, $a0, 2
  /* 0074E8 800068E8 AFA2003C */        sw $v0, 0x3c($sp)
  /* 0074EC 800068EC 8E0A0050 */        lw $t2, 0x50($s0)
  /* 0074F0 800068F0 24050008 */     addiu $a1, $zero, 8
  /* 0074F4 800068F4 AFAA0040 */        sw $t2, 0x40($sp)
  /* 0074F8 800068F8 8E0C0054 */        lw $t4, 0x54($s0)
  /* 0074FC 800068FC 8E0B0058 */        lw $t3, 0x58($s0)
  /* 007500 80006900 016C0019 */     multu $t3, $t4
  /* 007504 80006904 00002012 */      mflo $a0
  /* 007508 80006908 0C001260 */       jal func_80004980
  /* 00750C 8000690C 00000000 */       nop 
  /* 007510 80006910 AFA20044 */        sw $v0, 0x44($sp)
  /* 007514 80006914 8E0D0054 */        lw $t5, 0x54($s0)
  /* 007518 80006918 24050008 */     addiu $a1, $zero, 8
  /* 00751C 8000691C AFAD0048 */        sw $t5, 0x48($sp)
  /* 007520 80006920 8E0E0058 */        lw $t6, 0x58($s0)
  /* 007524 80006924 AFAE004C */        sw $t6, 0x4c($sp)
  /* 007528 80006928 8E04005C */        lw $a0, 0x5c($s0)
  /* 00752C 8000692C 00800821 */      addu $at, $a0, $zero
  /* 007530 80006930 000420C0 */       sll $a0, $a0, 3
  /* 007534 80006934 00812021 */      addu $a0, $a0, $at
  /* 007538 80006938 0C001260 */       jal func_80004980
  /* 00753C 8000693C 000420C0 */       sll $a0, $a0, 3
  /* 007540 80006940 AFA20050 */        sw $v0, 0x50($sp)
  /* 007544 80006944 8E0F005C */        lw $t7, 0x5c($s0)
  /* 007548 80006948 AFAF0054 */        sw $t7, 0x54($sp)
  /* 00754C 8000694C 0C0041CD */       jal func_80010734
  /* 007550 80006950 8E040060 */        lw $a0, 0x60($s0)
  /* 007554 80006954 8E180064 */        lw $t8, 0x64($s0)
  /* 007558 80006958 24050004 */     addiu $a1, $zero, 4
  /* 00755C 8000695C AFB80058 */        sw $t8, 0x58($sp)
  /* 007560 80006960 8E040068 */        lw $a0, 0x68($s0)
  /* 007564 80006964 00800821 */      addu $at, $a0, $zero
  /* 007568 80006968 000420C0 */       sll $a0, $a0, 3
  /* 00756C 8000696C 00812021 */      addu $a0, $a0, $at
  /* 007570 80006970 0C001260 */       jal func_80004980
  /* 007574 80006974 00042080 */       sll $a0, $a0, 2
  /* 007578 80006978 AFA2005C */        sw $v0, 0x5c($sp)
  /* 00757C 8000697C 8E190068 */        lw $t9, 0x68($s0)
  /* 007580 80006980 24050004 */     addiu $a1, $zero, 4
  /* 007584 80006984 AFB90060 */        sw $t9, 0x60($sp)
  /* 007588 80006988 8E04006C */        lw $a0, 0x6c($s0)
  /* 00758C 8000698C 00800821 */      addu $at, $a0, $zero
  /* 007590 80006990 00042080 */       sll $a0, $a0, 2
  /* 007594 80006994 00812021 */      addu $a0, $a0, $at
  /* 007598 80006998 00042080 */       sll $a0, $a0, 2
  /* 00759C 8000699C 00812021 */      addu $a0, $a0, $at
  /* 0075A0 800069A0 0C001260 */       jal func_80004980
  /* 0075A4 800069A4 000420C0 */       sll $a0, $a0, 3
  /* 0075A8 800069A8 AFA20064 */        sw $v0, 0x64($sp)
  /* 0075AC 800069AC 8E08006C */        lw $t0, 0x6c($s0)
  /* 0075B0 800069B0 24050008 */     addiu $a1, $zero, 8
  /* 0075B4 800069B4 AFA80068 */        sw $t0, 0x68($sp)
  /* 0075B8 800069B8 8E0A0070 */        lw $t2, 0x70($s0)
  /* 0075BC 800069BC 8E090074 */        lw $t1, 0x74($s0)
  /* 0075C0 800069C0 012A0019 */     multu $t1, $t2
  /* 0075C4 800069C4 00002012 */      mflo $a0
  /* 0075C8 800069C8 0C001260 */       jal func_80004980
  /* 0075CC 800069CC 00000000 */       nop 
  /* 0075D0 800069D0 AFA2006C */        sw $v0, 0x6c($sp)
  /* 0075D4 800069D4 8E0B0070 */        lw $t3, 0x70($s0)
  /* 0075D8 800069D8 24050008 */     addiu $a1, $zero, 8
  /* 0075DC 800069DC AFAB0070 */        sw $t3, 0x70($sp)
  /* 0075E0 800069E0 8E0C0074 */        lw $t4, 0x74($s0)
  /* 0075E4 800069E4 AFAC0074 */        sw $t4, 0x74($sp)
  /* 0075E8 800069E8 8E0E0078 */        lw $t6, 0x78($s0)
  /* 0075EC 800069EC 8E0D007C */        lw $t5, 0x7c($s0)
  /* 0075F0 800069F0 01AE0019 */     multu $t5, $t6
  /* 0075F4 800069F4 00002012 */      mflo $a0
  /* 0075F8 800069F8 0C001260 */       jal func_80004980
  /* 0075FC 800069FC 00000000 */       nop 
  /* 007600 80006A00 AFA20078 */        sw $v0, 0x78($sp)
  /* 007604 80006A04 8E0F0078 */        lw $t7, 0x78($s0)
  /* 007608 80006A08 24050008 */     addiu $a1, $zero, 8
  /* 00760C 80006A0C AFAF007C */        sw $t7, 0x7c($sp)
  /* 007610 80006A10 8E18007C */        lw $t8, 0x7c($s0)
  /* 007614 80006A14 AFB80080 */        sw $t8, 0x80($sp)
  /* 007618 80006A18 8E080080 */        lw $t0, 0x80($s0)
  /* 00761C 80006A1C 8E190084 */        lw $t9, 0x84($s0)
  /* 007620 80006A20 03280019 */     multu $t9, $t0
  /* 007624 80006A24 00002012 */      mflo $a0
  /* 007628 80006A28 0C001260 */       jal func_80004980
  /* 00762C 80006A2C 00000000 */       nop 
  /* 007630 80006A30 AFA20084 */        sw $v0, 0x84($sp)
  /* 007634 80006A34 8E090080 */        lw $t1, 0x80($s0)
  /* 007638 80006A38 27A40024 */     addiu $a0, $sp, 0x24
  /* 00763C 80006A3C AFA90088 */        sw $t1, 0x88($sp)
  /* 007640 80006A40 8E0A0084 */        lw $t2, 0x84($s0)
  /* 007644 80006A44 0C0029B8 */       jal func_8000A6E0
  /* 007648 80006A48 AFAA008C */        sw $t2, 0x8c($sp)
  /* 00764C 80006A4C 3C028004 */       lui $v0, %hi(D_800465F8)
  /* 007650 80006A50 244265F8 */     addiu $v0, $v0, %lo(D_800465F8)
  /* 007654 80006A54 3C0B8000 */       lui $t3, %hi(func_80006350)
  /* 007658 80006A58 3C0C8000 */       lui $t4, %hi(func_800063A0)
  /* 00765C 80006A5C 256B6350 */     addiu $t3, $t3, %lo(func_80006350)
  /* 007660 80006A60 258C63A0 */     addiu $t4, $t4, %lo(func_800063A0)
  /* 007664 80006A64 AC4B0008 */        sw $t3, 8($v0) # D_800465F8 + 8
  /* 007668 80006A68 AC4C0010 */        sw $t4, 0x10($v0) # D_800465F8 + 16
  /* 00766C 80006A6C 8E050088 */        lw $a1, 0x88($s0)
  /* 007670 80006A70 0C001952 */       jal func_80006548
  /* 007674 80006A74 02002025 */        or $a0, $s0, $zero
  /* 007678 80006A78 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00767C 80006A7C 8FB00018 */        lw $s0, 0x18($sp)
  /* 007680 80006A80 27BD0090 */     addiu $sp, $sp, 0x90
  /* 007684 80006A84 03E00008 */        jr $ra
  /* 007688 80006A88 00000000 */       nop 

  /* 00768C 80006A8C 3C018004 */       lui $at, %hi(D_800454B8)
  /* 007690 80006A90 A42454B8 */        sh $a0, %lo(D_800454B8)($at)
  /* 007694 80006A94 3C018004 */       lui $at, %hi(D_800454BA)
  /* 007698 80006A98 AFA40000 */        sw $a0, ($sp)
  /* 00769C 80006A9C AFA50004 */        sw $a1, 4($sp)
  /* 0076A0 80006AA0 03E00008 */        jr $ra
  /* 0076A4 80006AA4 A42554BA */        sh $a1, %lo(D_800454BA)($at)

  /* 0076A8 80006AA8 3C028004 */       lui $v0, %hi(D_800454BC)
  /* 0076AC 80006AAC 244254BC */     addiu $v0, $v0, %lo(D_800454BC)
  /* 0076B0 80006AB0 8C4E0000 */        lw $t6, ($v0) # D_800454BC + 0
  /* 0076B4 80006AB4 24010002 */     addiu $at, $zero, 2
  /* 0076B8 80006AB8 240F0001 */     addiu $t7, $zero, 1
  /* 0076BC 80006ABC 11C10002 */       beq $t6, $at, .L80006AC8
  /* 0076C0 80006AC0 00000000 */       nop 
  /* 0076C4 80006AC4 AC4F0000 */        sw $t7, ($v0) # D_800454BC + 0
  .L80006AC8:
  /* 0076C8 80006AC8 03E00008 */        jr $ra
  /* 0076CC 80006ACC 00000000 */       nop 

  /* 0076D0 80006AD0 3C0E8004 */       lui $t6, %hi(D_800454BC)
  /* 0076D4 80006AD4 8DCE54BC */        lw $t6, %lo(D_800454BC)($t6)
  /* 0076D8 80006AD8 24010002 */     addiu $at, $zero, 2
  /* 0076DC 80006ADC 00001025 */        or $v0, $zero, $zero
  /* 0076E0 80006AE0 15C10003 */       bne $t6, $at, .L80006AF0
  /* 0076E4 80006AE4 00000000 */       nop 
  /* 0076E8 80006AE8 03E00008 */        jr $ra
  /* 0076EC 80006AEC 24020001 */     addiu $v0, $zero, 1

  .L80006AF0:
  /* 0076F0 80006AF0 03E00008 */        jr $ra
  /* 0076F4 80006AF4 00000000 */       nop 

  /* 0076F8 80006AF8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0076FC 80006AFC AFBF0014 */        sw $ra, 0x14($sp)
  /* 007700 80006B00 3C048004 */       lui $a0, %hi(D_800454C8)
  /* 007704 80006B04 248454C8 */     addiu $a0, $a0, %lo(D_800454C8)
  /* 007708 80006B08 00002825 */        or $a1, $zero, $zero
  /* 00770C 80006B0C 0C00C000 */       jal osSendMesg
  /* 007710 80006B10 00003025 */        or $a2, $zero, $zero
  /* 007714 80006B14 8FBF0014 */        lw $ra, 0x14($sp)
  /* 007718 80006B18 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00771C 80006B1C 03E00008 */        jr $ra
  /* 007720 80006B20 00000000 */       nop 

  /* 007724 80006B24 24010001 */     addiu $at, $zero, 1
  /* 007728 80006B28 10810002 */       beq $a0, $at, .L80006B34
  /* 00772C 80006B2C 24010002 */     addiu $at, $zero, 2
  /* 007730 80006B30 14810002 */       bne $a0, $at, .L80006B3C
  .L80006B34:
  /* 007734 80006B34 3C018004 */       lui $at, %hi(D_80046640)
  /* 007738 80006B38 AC246640 */        sw $a0, %lo(D_80046640)($at)
  .L80006B3C:
  /* 00773C 80006B3C 03E00008 */        jr $ra
  /* 007740 80006B40 00000000 */       nop 

  /* 007744 80006B44 24010001 */     addiu $at, $zero, 1
  /* 007748 80006B48 10810003 */       beq $a0, $at, .L80006B58
  /* 00774C 80006B4C 00047080 */       sll $t6, $a0, 2
  /* 007750 80006B50 24010002 */     addiu $at, $zero, 2
  /* 007754 80006B54 14810007 */       bne $a0, $at, .L80006B74
  .L80006B58:
  /* 007758 80006B58 3C0F8004 */       lui $t7, %hi(D_80046634)
  /* 00775C 80006B5C 01EE7821 */      addu $t7, $t7, $t6
  /* 007760 80006B60 8DEF6634 */        lw $t7, %lo(D_80046634)($t7)
  /* 007764 80006B64 55E00004 */      bnel $t7, $zero, .L80006B78
  /* 007768 80006B68 00001025 */        or $v0, $zero, $zero
  /* 00776C 80006B6C 03E00008 */        jr $ra
  /* 007770 80006B70 24020001 */     addiu $v0, $zero, 1

  .L80006B74:
  /* 007774 80006B74 00001025 */        or $v0, $zero, $zero
  .L80006B78:
  /* 007778 80006B78 03E00008 */        jr $ra
  /* 00777C 80006B7C 00000000 */       nop 
