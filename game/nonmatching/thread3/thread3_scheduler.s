glabel thread3_scheduler
  /* 003118 80002518 3C018004 */       lui $at, %hi(D_80044EC0)
  /* 00311C 8000251C AC204EC0 */        sw $zero, %lo(D_80044EC0)($at)
  /* 003120 80002520 27BDFF78 */     addiu $sp, $sp, -0x88
  /* 003124 80002524 AFA40088 */        sw $a0, 0x88($sp)
  /* 003128 80002528 3C048004 */       lui $a0, %hi(D_80044ED4)
  /* 00312C 8000252C 3C038004 */       lui $v1, %hi(D_80044ED8)
  /* 003130 80002530 3C058004 */       lui $a1, %hi(D_80044ED0)
  /* 003134 80002534 3C068004 */       lui $a2, %hi(D_80044ECC)
  /* 003138 80002538 3C078004 */       lui $a3, %hi(D_80044EC8)
  /* 00313C 8000253C 24E74EC8 */     addiu $a3, $a3, %lo(D_80044EC8)
  /* 003140 80002540 24C64ECC */     addiu $a2, $a2, %lo(D_80044ECC)
  /* 003144 80002544 24A54ED0 */     addiu $a1, $a1, %lo(D_80044ED0)
  /* 003148 80002548 24634ED8 */     addiu $v1, $v1, %lo(D_80044ED8)
  /* 00314C 8000254C 24844ED4 */     addiu $a0, $a0, %lo(D_80044ED4)
  /* 003150 80002550 AC800000 */        sw $zero, ($a0) # D_80044ED4 + 0
  /* 003154 80002554 AC600000 */        sw $zero, ($v1) # D_80044ED8 + 0
  /* 003158 80002558 ACA00000 */        sw $zero, ($a1) # D_80044ED0 + 0
  /* 00315C 8000255C ACC00000 */        sw $zero, ($a2) # D_80044ECC + 0
  /* 003160 80002560 ACE00000 */        sw $zero, ($a3) # D_80044EC8 + 0
  /* 003164 80002564 3C018004 */       lui $at, %hi(D_80044EC4)
  /* 003168 80002568 AC204EC4 */        sw $zero, %lo(D_80044EC4)($at)
  /* 00316C 8000256C 3C088004 */       lui $t0, %hi(D_80044EE0)
  /* 003170 80002570 3C098004 */       lui $t1, %hi(D_80044EDC)
  /* 003174 80002574 25294EDC */     addiu $t1, $t1, %lo(D_80044EDC)
  /* 003178 80002578 25084EE0 */     addiu $t0, $t0, %lo(D_80044EE0)
  /* 00317C 8000257C AD000000 */        sw $zero, ($t0) # D_80044EE0 + 0
  /* 003180 80002580 AD200000 */        sw $zero, ($t1) # D_80044EDC + 0
  /* 003184 80002584 3C018004 */       lui $at, %hi(D_80044EE4)
  /* 003188 80002588 AC204EE4 */        sw $zero, %lo(D_80044EE4)($at)
  /* 00318C 8000258C 3C018004 */       lui $at, %hi(D_80044F88)
  /* 003190 80002590 AC204F88 */        sw $zero, %lo(D_80044F88)($at)
  /* 003194 80002594 3C0A8004 */       lui $t2, %hi(D_80044FA0)
  /* 003198 80002598 3C0B8004 */       lui $t3, %hi(D_80044F9C)
  /* 00319C 8000259C 256B4F9C */     addiu $t3, $t3, %lo(D_80044F9C)
  /* 0031A0 800025A0 254A4FA0 */     addiu $t2, $t2, %lo(D_80044FA0)
  /* 0031A4 800025A4 AD400000 */        sw $zero, ($t2) # D_80044FA0 + 0
  /* 0031A8 800025A8 AD600000 */        sw $zero, ($t3) # D_80044F9C + 0
  /* 0031AC 800025AC 3C018004 */       lui $at, %hi(D_80044FA8)
  /* 0031B0 800025B0 AC204FA8 */        sw $zero, %lo(D_80044FA8)($at)
  /* 0031B4 800025B4 3C018004 */       lui $at, %hi(D_80045010)
  /* 0031B8 800025B8 AC205010 */        sw $zero, %lo(D_80045010)($at)
  /* 0031BC 800025BC 3C0D8000 */       lui $t5, %hi(func_800029D8)
  /* 0031C0 800025C0 25AD29D8 */     addiu $t5, $t5, %lo(func_800029D8)
  /* 0031C4 800025C4 3C018004 */       lui $at, %hi(D_80045018)
  /* 0031C8 800025C8 AFB1001C */        sw $s1, 0x1c($sp)
  /* 0031CC 800025CC AFB00018 */        sw $s0, 0x18($sp)
  /* 0031D0 800025D0 AC2D5018 */        sw $t5, %lo(D_80045018)($at)
  /* 0031D4 800025D4 3C108004 */       lui $s0, %hi(D_80045020)
  /* 0031D8 800025D8 3C118004 */       lui $s1, %hi(D_80045024)
  /* 0031DC 800025DC 26315024 */     addiu $s1, $s1, %lo(D_80045024)
  /* 0031E0 800025E0 26105020 */     addiu $s0, $s0, %lo(D_80045020)
  /* 0031E4 800025E4 240EFFFF */     addiu $t6, $zero, -1
  /* 0031E8 800025E8 3C0C8004 */       lui $t4, %hi(D_80045035)
  /* 0031EC 800025EC AE000000 */        sw $zero, ($s0) # D_80045020 + 0
  /* 0031F0 800025F0 AE2E0000 */        sw $t6, ($s1) # D_80045024 + 0
  /* 0031F4 800025F4 3C018004 */       lui $at, %hi(D_8004501C)
  /* 0031F8 800025F8 258C5035 */     addiu $t4, $t4, %lo(D_80045035)
  /* 0031FC 800025FC AC20501C */        sw $zero, %lo(D_8004501C)($at)
  /* 003200 80002600 A1800000 */        sb $zero, ($t4) # D_80045035 + 0
  /* 003204 80002604 3C028000 */       lui $v0, %hi(D_NF_80000300)
  /* 003208 80002608 8C420300 */        lw $v0, %lo(D_NF_80000300)($v0)
  /* 00320C 8000260C 3C018004 */       lui $at, %hi(D_80045034)
  /* 003210 80002610 AFBF0024 */        sw $ra, 0x24($sp)
  /* 003214 80002614 AFB20020 */        sw $s2, 0x20($sp)
  /* 003218 80002618 1040003F */      beqz $v0, .L80002718
  /* 00321C 8000261C A0205034 */        sb $zero, %lo(D_80045034)($at)
  /* 003220 80002620 24010001 */     addiu $at, $zero, 1
  /* 003224 80002624 10410007 */       beq $v0, $at, .L80002644
  /* 003228 80002628 3C048004 */       lui $a0, 0x8004
  /* 00322C 8000262C 24010002 */     addiu $at, $zero, 2
  /* 003230 80002630 1041003B */       beq $v0, $at, .L80002720
  /* 003234 80002634 3C048004 */       lui $a0, 0x8004
  /* 003238 80002638 3C048004 */       lui $a0, %hi(D_80044EE8)
  /* 00323C 8000263C 1000006C */         b .L800027F0
  /* 003240 80002640 24844EE8 */     addiu $a0, $a0, %lo(D_80044EE8)
  .L80002644:
  /* 003244 80002644 3C188004 */       lui $t8, %hi(D_8003D4B0)
  /* 003248 80002648 27A20030 */     addiu $v0, $sp, 0x30
  /* 00324C 8000264C 2718D4B0 */     addiu $t8, $t8, %lo(D_8003D4B0)
  /* 003250 80002650 24844EE8 */     addiu $a0, $a0, 0x4ee8
  /* 003254 80002654 270F0048 */     addiu $t7, $t8, 0x48
  /* 003258 80002658 00407025 */        or $t6, $v0, $zero
  .L8000265C:
  /* 00325C 8000265C 8F0D0000 */        lw $t5, ($t8) # D_8003D4B0 + 0
  /* 003260 80002660 2718000C */     addiu $t8, $t8, 0xc
  /* 003264 80002664 25CE000C */     addiu $t6, $t6, 0xc
  /* 003268 80002668 ADCDFFF4 */        sw $t5, -0xc($t6)
  /* 00326C 8000266C 8F19FFF8 */        lw $t9, -8($t8) # D_8003D4B0 + -8
  /* 003270 80002670 ADD9FFF8 */        sw $t9, -8($t6)
  /* 003274 80002674 8F0DFFFC */        lw $t5, -4($t8) # D_8003D4B0 + -4
  /* 003278 80002678 170FFFF8 */       bne $t8, $t7, .L8000265C
  /* 00327C 8000267C ADCDFFFC */        sw $t5, -4($t6)
  /* 003280 80002680 8F0D0000 */        lw $t5, ($t8) # D_8003D4B0 + 0
  /* 003284 80002684 ADCD0000 */        sw $t5, ($t6)
  /* 003288 80002688 8F190004 */        lw $t9, 4($t8) # D_8003D4B0 + 4
  /* 00328C 8000268C 244D0048 */     addiu $t5, $v0, 0x48
  /* 003290 80002690 ADD90004 */        sw $t9, 4($t6)
  /* 003294 80002694 0080C825 */        or $t9, $a0, $zero
  /* 003298 80002698 00407025 */        or $t6, $v0, $zero
  .L8000269C:
  /* 00329C 8000269C 8DD80000 */        lw $t8, ($t6)
  /* 0032A0 800026A0 25CE000C */     addiu $t6, $t6, 0xc
  /* 0032A4 800026A4 2739000C */     addiu $t9, $t9, 0xc
  /* 0032A8 800026A8 AF38FFF4 */        sw $t8, -0xc($t9)
  /* 0032AC 800026AC 8DCFFFF8 */        lw $t7, -8($t6)
  /* 0032B0 800026B0 AF2FFFF8 */        sw $t7, -8($t9)
  /* 0032B4 800026B4 8DD8FFFC */        lw $t8, -4($t6)
  /* 0032B8 800026B8 15CDFFF8 */       bne $t6, $t5, .L8000269C
  /* 0032BC 800026BC AF38FFFC */        sw $t8, -4($t9)
  /* 0032C0 800026C0 8DD80000 */        lw $t8, ($t6)
  /* 0032C4 800026C4 3C0D8004 */       lui $t5, %hi(D_80044F38)
  /* 0032C8 800026C8 25AD4F38 */     addiu $t5, $t5, %lo(D_80044F38)
  /* 0032CC 800026CC AF380000 */        sw $t8, ($t9)
  /* 0032D0 800026D0 8DCF0004 */        lw $t7, 4($t6)
  /* 0032D4 800026D4 24580048 */     addiu $t8, $v0, 0x48
  /* 0032D8 800026D8 AF2F0004 */        sw $t7, 4($t9)
  /* 0032DC 800026DC 00407825 */        or $t7, $v0, $zero
  .L800026E0:
  /* 0032E0 800026E0 8DF90000 */        lw $t9, ($t7)
  /* 0032E4 800026E4 25EF000C */     addiu $t7, $t7, 0xc
  /* 0032E8 800026E8 25AD000C */     addiu $t5, $t5, 0xc
  /* 0032EC 800026EC ADB9FFF4 */        sw $t9, -0xc($t5) # D_80044F38 + -12
  /* 0032F0 800026F0 8DEEFFF8 */        lw $t6, -8($t7)
  /* 0032F4 800026F4 ADAEFFF8 */        sw $t6, -8($t5) # D_80044F38 + -8
  /* 0032F8 800026F8 8DF9FFFC */        lw $t9, -4($t7)
  /* 0032FC 800026FC 15F8FFF8 */       bne $t7, $t8, .L800026E0
  /* 003300 80002700 ADB9FFFC */        sw $t9, -4($t5) # D_80044F38 + -4
  /* 003304 80002704 8DF90000 */        lw $t9, ($t7)
  /* 003308 80002708 ADB90000 */        sw $t9, ($t5) # D_80044F38 + 0
  /* 00330C 8000270C 8DEE0004 */        lw $t6, 4($t7)
  /* 003310 80002710 10000037 */         b .L800027F0
  /* 003314 80002714 ADAE0004 */        sw $t6, 4($t5) # D_80044F38 + 4
  .L80002718:
  /* 003318 80002718 1000FFFF */         b .L80002718
  /* 00331C 8000271C 00000000 */       nop 
  .L80002720:
  /* 003320 80002720 3C188004 */       lui $t8, %hi(D_8003D500)
  /* 003324 80002724 27A20030 */     addiu $v0, $sp, 0x30
  /* 003328 80002728 2718D500 */     addiu $t8, $t8, %lo(D_8003D500)
  /* 00332C 8000272C 24844EE8 */     addiu $a0, $a0, 0x4ee8
  /* 003330 80002730 27190048 */     addiu $t9, $t8, 0x48
  /* 003334 80002734 00407025 */        or $t6, $v0, $zero
  .L80002738:
  /* 003338 80002738 8F0D0000 */        lw $t5, ($t8) # D_8003D500 + 0
  /* 00333C 8000273C 2718000C */     addiu $t8, $t8, 0xc
  /* 003340 80002740 25CE000C */     addiu $t6, $t6, 0xc
  /* 003344 80002744 ADCDFFF4 */        sw $t5, -0xc($t6)
  /* 003348 80002748 8F0FFFF8 */        lw $t7, -8($t8) # D_8003D500 + -8
  /* 00334C 8000274C ADCFFFF8 */        sw $t7, -8($t6)
  /* 003350 80002750 8F0DFFFC */        lw $t5, -4($t8) # D_8003D500 + -4
  /* 003354 80002754 1719FFF8 */       bne $t8, $t9, .L80002738
  /* 003358 80002758 ADCDFFFC */        sw $t5, -4($t6)
  /* 00335C 8000275C 8F0D0000 */        lw $t5, ($t8) # D_8003D500 + 0
  /* 003360 80002760 ADCD0000 */        sw $t5, ($t6)
  /* 003364 80002764 8F0F0004 */        lw $t7, 4($t8) # D_8003D500 + 4
  /* 003368 80002768 244D0048 */     addiu $t5, $v0, 0x48
  /* 00336C 8000276C ADCF0004 */        sw $t7, 4($t6)
  /* 003370 80002770 00807825 */        or $t7, $a0, $zero
  /* 003374 80002774 00407025 */        or $t6, $v0, $zero
  .L80002778:
  /* 003378 80002778 8DD80000 */        lw $t8, ($t6)
  /* 00337C 8000277C 25CE000C */     addiu $t6, $t6, 0xc
  /* 003380 80002780 25EF000C */     addiu $t7, $t7, 0xc
  /* 003384 80002784 ADF8FFF4 */        sw $t8, -0xc($t7)
  /* 003388 80002788 8DD9FFF8 */        lw $t9, -8($t6)
  /* 00338C 8000278C ADF9FFF8 */        sw $t9, -8($t7)
  /* 003390 80002790 8DD8FFFC */        lw $t8, -4($t6)
  /* 003394 80002794 15CDFFF8 */       bne $t6, $t5, .L80002778
  /* 003398 80002798 ADF8FFFC */        sw $t8, -4($t7)
  /* 00339C 8000279C 8DD80000 */        lw $t8, ($t6)
  /* 0033A0 800027A0 3C0D8004 */       lui $t5, %hi(D_80044F38)
  /* 0033A4 800027A4 25AD4F38 */     addiu $t5, $t5, %lo(D_80044F38)
  /* 0033A8 800027A8 ADF80000 */        sw $t8, ($t7)
  /* 0033AC 800027AC 8DD90004 */        lw $t9, 4($t6)
  /* 0033B0 800027B0 24580048 */     addiu $t8, $v0, 0x48
  /* 0033B4 800027B4 ADF90004 */        sw $t9, 4($t7)
  /* 0033B8 800027B8 0040C825 */        or $t9, $v0, $zero
  .L800027BC:
  /* 0033BC 800027BC 8F2F0000 */        lw $t7, ($t9)
  /* 0033C0 800027C0 2739000C */     addiu $t9, $t9, 0xc
  /* 0033C4 800027C4 25AD000C */     addiu $t5, $t5, 0xc
  /* 0033C8 800027C8 ADAFFFF4 */        sw $t7, -0xc($t5) # D_80044F38 + -12
  /* 0033CC 800027CC 8F2EFFF8 */        lw $t6, -8($t9)
  /* 0033D0 800027D0 ADAEFFF8 */        sw $t6, -8($t5) # D_80044F38 + -8
  /* 0033D4 800027D4 8F2FFFFC */        lw $t7, -4($t9)
  /* 0033D8 800027D8 1738FFF8 */       bne $t9, $t8, .L800027BC
  /* 0033DC 800027DC ADAFFFFC */        sw $t7, -4($t5) # D_80044F38 + -4
  /* 0033E0 800027E0 8F2F0000 */        lw $t7, ($t9)
  /* 0033E4 800027E4 ADAF0000 */        sw $t7, ($t5) # D_80044F38 + 0
  /* 0033E8 800027E8 8F2E0004 */        lw $t6, 4($t9)
  /* 0033EC 800027EC ADAE0004 */        sw $t6, 4($t5) # D_80044F38 + 4
  .L800027F0:
  /* 0033F0 800027F0 3C020001 */       lui $v0, (0x10016 >> 16) # 65558
  /* 0033F4 800027F4 34420016 */       ori $v0, $v0, (0x10016 & 0xFFFF) # 65558
  /* 0033F8 800027F8 AC820004 */        sw $v0, 4($a0) # D_80044EE8 + 4
  /* 0033FC 800027FC 3C018004 */       lui $at, %hi(D_80044F38 + 4)
  /* 003400 80002800 0C00CAEC */       jal osViSetMode
  /* 003404 80002804 AC224F3C */        sw $v0, %lo(D_80044F38 + 4)($at)
  /* 003408 80002808 0C00CA18 */       jal osViBlack
  /* 00340C 8000280C 24040001 */     addiu $a0, $zero, 1
  /* 003410 80002810 3C028004 */       lui $v0, %hi(D_80044FBC)
  /* 003414 80002814 24424FBC */     addiu $v0, $v0, %lo(D_80044FBC)
  /* 003418 80002818 90590000 */       lbu $t9, ($v0) # D_80044FBC + 0
  /* 00341C 8000281C 3C128004 */       lui $s2, %hi(D_80044FF8)
  /* 003420 80002820 26524FF8 */     addiu $s2, $s2, %lo(D_80044FF8)
  /* 003424 80002824 372E0080 */       ori $t6, $t9, 0x80
  /* 003428 80002828 31D800BF */      andi $t8, $t6, 0xbf
  /* 00342C 8000282C A04E0000 */        sb $t6, ($v0) # D_80044FBC + 0
  /* 003430 80002830 A0580000 */        sb $t8, ($v0) # D_80044FBC + 0
  /* 003434 80002834 330D00DF */      andi $t5, $t8, 0xdf
  /* 003438 80002838 A04D0000 */        sb $t5, ($v0) # D_80044FBC + 0
  /* 00343C 8000283C 31B800EF */      andi $t8, $t5, 0xef
  /* 003440 80002840 A0580000 */        sb $t8, ($v0) # D_80044FBC + 0
  /* 003444 80002844 370D0008 */       ori $t5, $t8, 8
  /* 003448 80002848 90590001 */       lbu $t9, 1($v0) # D_80044FBC + 1
  /* 00344C 8000284C 31B800FB */      andi $t8, $t5, 0xfb
  /* 003450 80002850 A04D0000 */        sb $t5, ($v0) # D_80044FBC + 0
  /* 003454 80002854 370E0002 */       ori $t6, $t8, 2
  /* 003458 80002858 A0580000 */        sb $t8, ($v0) # D_80044FBC + 0
  /* 00345C 8000285C A04E0000 */        sb $t6, ($v0) # D_80044FBC + 0
  /* 003460 80002860 35CF0001 */       ori $t7, $t6, 1
  /* 003464 80002864 3C058004 */       lui $a1, %hi(D_80044FD8)
  /* 003468 80002868 372D0080 */       ori $t5, $t9, 0x80
  /* 00346C 8000286C A04F0000 */        sb $t7, ($v0) # D_80044FBC + 0
  /* 003470 80002870 A04D0001 */        sb $t5, 1($v0) # D_80044FBC + 1
  /* 003474 80002874 24A54FD8 */     addiu $a1, $a1, %lo(D_80044FD8)
  /* 003478 80002878 02402025 */        or $a0, $s2, $zero
  /* 00347C 8000287C 0C00D120 */       jal osCreateMesgQueue
  /* 003480 80002880 24060008 */     addiu $a2, $zero, 8
  /* 003484 80002884 02402025 */        or $a0, $s2, $zero
  /* 003488 80002888 24050001 */     addiu $a1, $zero, 1
  /* 00348C 8000288C 0C00D79C */       jal osViSetEvent
  /* 003490 80002890 24060001 */     addiu $a2, $zero, 1
  /* 003494 80002894 24040004 */     addiu $a0, $zero, 4
  /* 003498 80002898 02402825 */        or $a1, $s2, $zero
  /* 00349C 8000289C 0C00CD28 */       jal osSetEventMesg
  /* 0034A0 800028A0 24060002 */     addiu $a2, $zero, 2
  /* 0034A4 800028A4 24040009 */     addiu $a0, $zero, 9
  /* 0034A8 800028A8 02402825 */        or $a1, $s2, $zero
  /* 0034AC 800028AC 0C00CD28 */       jal osSetEventMesg
  /* 0034B0 800028B0 24060003 */     addiu $a2, $zero, 3
  /* 0034B4 800028B4 2404000E */     addiu $a0, $zero, 0xe
  /* 0034B8 800028B8 02402825 */        or $a1, $s2, $zero
  /* 0034BC 800028BC 0C00CD28 */       jal osSetEventMesg
  /* 0034C0 800028C0 24060063 */     addiu $a2, $zero, 0x63
  /* 0034C4 800028C4 3C048004 */       lui $a0, %hi(gThreadingQueue)
  /* 0034C8 800028C8 24844D48 */     addiu $a0, $a0, %lo(gThreadingQueue)
  /* 0034CC 800028CC 24050001 */     addiu $a1, $zero, 1
  /* 0034D0 800028D0 0C00C000 */       jal osSendMesg
  /* 0034D4 800028D4 00003025 */        or $a2, $zero, $zero
  .L800028D8:
  /* 0034D8 800028D8 02402025 */        or $a0, $s2, $zero
  .L800028DC:
  /* 0034DC 800028DC 27A50084 */     addiu $a1, $sp, 0x84
  /* 0034E0 800028E0 0C00C084 */       jal osRecvMesg
  /* 0034E4 800028E4 24060001 */     addiu $a2, $zero, 1
  /* 0034E8 800028E8 8FA40084 */        lw $a0, 0x84($sp)
  /* 0034EC 800028EC 24010001 */     addiu $at, $zero, 1
  /* 0034F0 800028F0 10810009 */       beq $a0, $at, .L80002918
  /* 0034F4 800028F4 24010002 */     addiu $at, $zero, 2
  /* 0034F8 800028F8 1081000B */       beq $a0, $at, .L80002928
  /* 0034FC 800028FC 24010003 */     addiu $at, $zero, 3
  /* 003500 80002900 10810017 */       beq $a0, $at, .L80002960
  /* 003504 80002904 24010063 */     addiu $at, $zero, 0x63
  /* 003508 80002908 10810019 */       beq $a0, $at, .L80002970
  /* 00350C 8000290C 3C028004 */       lui $v0, 0x8004
  /* 003510 80002910 1000001F */         b .L80002990
  /* 003514 80002914 8E180000 */        lw $t8, ($s0) # D_80045020 + 0
  .L80002918:
  /* 003518 80002918 0C000817 */       jal func_8000205C
  /* 00351C 8000291C 00000000 */       nop 
  /* 003520 80002920 1000FFEE */         b .L800028DC
  /* 003524 80002924 02402025 */        or $a0, $s2, $zero
  .L80002928:
  /* 003528 80002928 0C000834 */       jal func_800020D0
  /* 00352C 8000292C 00000000 */       nop 
  /* 003530 80002930 8E0E0000 */        lw $t6, ($s0) # D_80045020 + 0
  /* 003534 80002934 24010001 */     addiu $at, $zero, 1
  /* 003538 80002938 55C1FFE8 */      bnel $t6, $at, .L800028DC
  /* 00353C 8000293C 02402025 */        or $a0, $s2, $zero
  /* 003540 80002940 8E2F0000 */        lw $t7, ($s1) # D_80045024 + 0
  /* 003544 80002944 2401FFFF */     addiu $at, $zero, -1
  /* 003548 80002948 55E1FFE4 */      bnel $t7, $at, .L800028DC
  /* 00354C 8000294C 02402025 */        or $a0, $s2, $zero
  /* 003550 80002950 0C00CD48 */       jal osAfterPreNMI
  /* 003554 80002954 00000000 */       nop 
  /* 003558 80002958 1000FFDF */         b .L800028D8
  /* 00355C 8000295C AE220000 */        sw $v0, ($s1) # D_80045024 + 0
  .L80002960:
  /* 003560 80002960 0C0008D0 */       jal func_80002340
  /* 003564 80002964 00000000 */       nop 
  /* 003568 80002968 1000FFDC */         b .L800028DC
  /* 00356C 8000296C 02402025 */        or $a0, $s2, $zero
  .L80002970:
  /* 003570 80002970 8C425018 */        lw $v0, 0x5018($v0)
  /* 003574 80002974 5040FFD9 */      beql $v0, $zero, .L800028DC
  /* 003578 80002978 02402025 */        or $a0, $s2, $zero
  /* 00357C 8000297C 0040F809 */      jalr $v0
  /* 003580 80002980 00000000 */       nop 
  /* 003584 80002984 1000FFD5 */         b .L800028DC
  /* 003588 80002988 02402025 */        or $a0, $s2, $zero
  /* 00358C 8000298C 8E180000 */        lw $t8, ($s0) # D_80045020 + 0
  .L80002990:
  /* 003590 80002990 5700FFD2 */      bnel $t8, $zero, .L800028DC
  /* 003594 80002994 02402025 */        or $a0, $s2, $zero
  /* 003598 80002998 0C00093B */       jal func_800024EC
  /* 00359C 8000299C 00000000 */       nop 
  /* 0035A0 800029A0 1000FFCE */         b .L800028DC
  /* 0035A4 800029A4 02402025 */        or $a0, $s2, $zero
  /* 0035A8 800029A8 00000000 */       nop 
  /* 0035AC 800029AC 00000000 */       nop 
# Maybe start of new file
  /* 0035B0 800029B0 00000000 */       nop 
  /* 0035B4 800029B4 00000000 */       nop 
  /* 0035B8 800029B8 00000000 */       nop 
  /* 0035BC 800029BC 00000000 */       nop 
# Maybe start of new file
  /* 0035C0 800029C0 8FBF0024 */        lw $ra, 0x24($sp)
  /* 0035C4 800029C4 8FB00018 */        lw $s0, 0x18($sp)
  /* 0035C8 800029C8 8FB1001C */        lw $s1, 0x1c($sp)
  /* 0035CC 800029CC 8FB20020 */        lw $s2, 0x20($sp)
  /* 0035D0 800029D0 03E00008 */        jr $ra
  /* 0035D4 800029D4 27BD0088 */     addiu $sp, $sp, 0x88

