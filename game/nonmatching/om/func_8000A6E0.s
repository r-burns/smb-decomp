.section .text
glabel func_8000A6E0
  /* 00B2E0 8000A6E0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00B2E4 8000A6E4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00B2E8 8000A6E8 8C8E0008 */        lw $t6, 8($a0)
  /* 00B2EC 8000A6EC 3C088004 */       lui $t0, %hi(D_800466BC)
  /* 00B2F0 8000A6F0 250866BC */     addiu $t0, $t0, %lo(D_800466BC)
  /* 00B2F4 8000A6F4 AD0E0000 */        sw $t6, ($t0) # D_800466BC + 0
  /* 00B2F8 8000A6F8 8C8F0014 */        lw $t7, 0x14($a0)
  /* 00B2FC 8000A6FC 3C018004 */       lui $at, %hi(D_800466C0)
  /* 00B300 8000A700 00803825 */        or $a3, $a0, $zero
  /* 00B304 8000A704 AC2F66C0 */        sw $t7, %lo(D_800466C0)($at)
  /* 00B308 8000A708 8C980004 */        lw $t8, 4($a0)
  /* 00B30C 8000A70C 3C018004 */       lui $at, 0x8004
  /* 00B310 8000A710 00003025 */        or $a2, $zero, $zero
  /* 00B314 8000A714 13000014 */      beqz $t8, .L8000A768
  /* 00B318 8000A718 00000000 */       nop 
  /* 00B31C 8000A71C 8C830000 */        lw $v1, ($a0)
  /* 00B320 8000A720 3C018004 */       lui $at, %hi(D_800466B0)
  /* 00B324 8000A724 00003025 */        or $a2, $zero, $zero
  /* 00B328 8000A728 AC2366B0 */        sw $v1, %lo(D_800466B0)($at)
  /* 00B32C 8000A72C 8C990004 */        lw $t9, 4($a0)
  /* 00B330 8000A730 272BFFFF */     addiu $t3, $t9, -1
  /* 00B334 8000A734 1960000A */      blez $t3, .L8000A760
  /* 00B338 8000A738 246201C0 */     addiu $v0, $v1, 0x1c0
  .L8000A73C:
  /* 00B33C 8000A73C AC620000 */        sw $v0, ($v1)
  /* 00B340 8000A740 8CEC0004 */        lw $t4, 4($a3)
  /* 00B344 8000A744 24C60001 */     addiu $a2, $a2, 1
  /* 00B348 8000A748 00401825 */        or $v1, $v0, $zero
  /* 00B34C 8000A74C 258DFFFF */     addiu $t5, $t4, -1
  /* 00B350 8000A750 00CD082A */       slt $at, $a2, $t5
  /* 00B354 8000A754 5420FFF9 */      bnel $at, $zero, .L8000A73C
  /* 00B358 8000A758 246201C0 */     addiu $v0, $v1, 0x1c0
  /* 00B35C 8000A75C 00003025 */        or $a2, $zero, $zero
  .L8000A760:
  /* 00B360 8000A760 10000002 */         b .L8000A76C
  /* 00B364 8000A764 AC600000 */        sw $zero, ($v1)
  .L8000A768:
  /* 00B368 8000A768 AC2066B0 */        sw $zero, %lo(D_800466B0)($at)
  .L8000A76C:
  /* 00B36C 8000A76C 8CEE0010 */        lw $t6, 0x10($a3)
  /* 00B370 8000A770 11C0002E */      beqz $t6, .L8000A82C
  /* 00B374 8000A774 00000000 */       nop 
  /* 00B378 8000A778 8CEF0008 */        lw $t7, 8($a3)
  /* 00B37C 8000A77C 2404000C */     addiu $a0, $zero, 0xc
  /* 00B380 8000A780 24050004 */     addiu $a1, $zero, 4
  /* 00B384 8000A784 11E00029 */      beqz $t7, .L8000A82C
  /* 00B388 8000A788 00000000 */       nop 
  /* 00B38C 8000A78C AFA6001C */        sw $a2, 0x1c($sp)
  /* 00B390 8000A790 0C001260 */       jal func_80004980
  /* 00B394 8000A794 AFA70020 */        sw $a3, 0x20($sp)
  /* 00B398 8000A798 3C048004 */       lui $a0, %hi(D_800466C4)
  /* 00B39C 8000A79C 248466C4 */     addiu $a0, $a0, %lo(D_800466C4)
  /* 00B3A0 8000A7A0 8FA70020 */        lw $a3, 0x20($sp)
  /* 00B3A4 8000A7A4 AC820000 */        sw $v0, ($a0) # D_800466C4 + 0
  /* 00B3A8 8000A7A8 8FA6001C */        lw $a2, 0x1c($sp)
  /* 00B3AC 8000A7AC 3C088004 */       lui $t0, %hi(D_800466BC)
  /* 00B3B0 8000A7B0 AC400000 */        sw $zero, ($v0)
  /* 00B3B4 8000A7B4 250866BC */     addiu $t0, $t0, %lo(D_800466BC)
  /* 00B3B8 8000A7B8 8D190000 */        lw $t9, ($t0) # D_800466BC + 0
  /* 00B3BC 8000A7BC 8C8B0000 */        lw $t3, ($a0) # D_800466C4 + 0
  /* 00B3C0 8000A7C0 AD790008 */        sw $t9, 8($t3)
  /* 00B3C4 8000A7C4 8C8C0000 */        lw $t4, ($a0) # D_800466C4 + 0
  /* 00B3C8 8000A7C8 8CE3000C */        lw $v1, 0xc($a3)
  /* 00B3CC 8000A7CC AD830004 */        sw $v1, 4($t4)
  /* 00B3D0 8000A7D0 8CED0010 */        lw $t5, 0x10($a3)
  /* 00B3D4 8000A7D4 25AEFFFF */     addiu $t6, $t5, -1
  /* 00B3D8 8000A7D8 51C00011 */      beql $t6, $zero, .L8000A820
  /* 00B3DC 8000A7DC 8D0D0000 */        lw $t5, ($t0) # D_800466BC + 0
  /* 00B3E0 8000A7E0 8D020000 */        lw $v0, ($t0) # D_800466BC + 0
  .L8000A7E4:
  /* 00B3E4 8000A7E4 00627821 */      addu $t7, $v1, $v0
  /* 00B3E8 8000A7E8 25F80008 */     addiu $t8, $t7, 8
  /* 00B3EC 8000A7EC AC780000 */        sw $t8, ($v1)
  /* 00B3F0 8000A7F0 8D190000 */        lw $t9, ($t0) # D_800466BC + 0
  /* 00B3F4 8000A7F4 24C60001 */     addiu $a2, $a2, 1
  /* 00B3F8 8000A7F8 AC790004 */        sw $t9, 4($v1)
  /* 00B3FC 8000A7FC 8CEB0010 */        lw $t3, 0x10($a3)
  /* 00B400 8000A800 8D020000 */        lw $v0, ($t0) # D_800466BC + 0
  /* 00B404 8000A804 256CFFFF */     addiu $t4, $t3, -1
  /* 00B408 8000A808 00CC082B */      sltu $at, $a2, $t4
  /* 00B40C 8000A80C 00621821 */      addu $v1, $v1, $v0
  /* 00B410 8000A810 1420FFF4 */      bnez $at, .L8000A7E4
  /* 00B414 8000A814 24630008 */     addiu $v1, $v1, 8
  /* 00B418 8000A818 00003025 */        or $a2, $zero, $zero
  /* 00B41C 8000A81C 8D0D0000 */        lw $t5, ($t0) # D_800466BC + 0
  .L8000A820:
  /* 00B420 8000A820 AC600000 */        sw $zero, ($v1)
  /* 00B424 8000A824 10000004 */         b .L8000A838
  /* 00B428 8000A828 AC6D0004 */        sw $t5, 4($v1)
  .L8000A82C:
  /* 00B42C 8000A82C 3C048004 */       lui $a0, %hi(D_800466C4)
  /* 00B430 8000A830 248466C4 */     addiu $a0, $a0, %lo(D_800466C4)
  /* 00B434 8000A834 AC800000 */        sw $zero, ($a0) # D_800466C4 + 0
  .L8000A838:
  /* 00B438 8000A838 8CEE001C */        lw $t6, 0x1c($a3)
  /* 00B43C 8000A83C 3C048004 */       lui $a0, %hi(D_80046774)
  /* 00B440 8000A840 24846774 */     addiu $a0, $a0, %lo(D_80046774)
  /* 00B444 8000A844 11C00012 */      beqz $t6, .L8000A890
  /* 00B448 8000A848 00000000 */       nop 
  /* 00B44C 8000A84C 8CE30018 */        lw $v1, 0x18($a3)
  /* 00B450 8000A850 3C018004 */       lui $at, %hi(D_800466CC)
  /* 00B454 8000A854 AC2366CC */        sw $v1, %lo(D_800466CC)($at)
  /* 00B458 8000A858 8CEF001C */        lw $t7, 0x1c($a3)
  /* 00B45C 8000A85C 25F8FFFF */     addiu $t8, $t7, -1
  /* 00B460 8000A860 1B000009 */      blez $t8, .L8000A888
  /* 00B464 8000A864 24620024 */     addiu $v0, $v1, 0x24
  .L8000A868:
  /* 00B468 8000A868 AC620000 */        sw $v0, ($v1)
  /* 00B46C 8000A86C 8CF9001C */        lw $t9, 0x1c($a3)
  /* 00B470 8000A870 24C60001 */     addiu $a2, $a2, 1
  /* 00B474 8000A874 00401825 */        or $v1, $v0, $zero
  /* 00B478 8000A878 272BFFFF */     addiu $t3, $t9, -1
  /* 00B47C 8000A87C 00CB082A */       slt $at, $a2, $t3
  /* 00B480 8000A880 5420FFF9 */      bnel $at, $zero, .L8000A868
  /* 00B484 8000A884 24620024 */     addiu $v0, $v1, 0x24
  .L8000A888:
  /* 00B488 8000A888 10000003 */         b .L8000A898
  /* 00B48C 8000A88C AC600000 */        sw $zero, ($v1)
  .L8000A890:
  /* 00B490 8000A890 3C018004 */       lui $at, %hi(D_800466CC)
  /* 00B494 8000A894 AC2066CC */        sw $zero, %lo(D_800466CC)($at)
  .L8000A898:
  /* 00B498 8000A898 3C028004 */       lui $v0, %hi(D_800466D0)
  /* 00B49C 8000A89C 3C038004 */       lui $v1, %hi(D_800466E8)
  /* 00B4A0 8000A8A0 246366E8 */     addiu $v1, $v1, %lo(D_800466E8)
  /* 00B4A4 8000A8A4 244266D0 */     addiu $v0, $v0, %lo(D_800466D0)
  .L8000A8A8:
  /* 00B4A8 8000A8A8 24420004 */     addiu $v0, $v0, 4
  /* 00B4AC 8000A8AC 0043082B */      sltu $at, $v0, $v1
  /* 00B4B0 8000A8B0 1420FFFD */      bnez $at, .L8000A8A8
  /* 00B4B4 8000A8B4 AC40FFFC */        sw $zero, -4($v0) # D_800466D0 + -4
  /* 00B4B8 8000A8B8 8CEC0024 */        lw $t4, 0x24($a3)
  /* 00B4BC 8000A8BC 11800016 */      beqz $t4, .L8000A918
  /* 00B4C0 8000A8C0 00000000 */       nop 
  /* 00B4C4 8000A8C4 8CE20020 */        lw $v0, 0x20($a3)
  /* 00B4C8 8000A8C8 3C018004 */       lui $at, %hi(D_800467FC)
  /* 00B4CC 8000A8CC 00003025 */        or $a2, $zero, $zero
  /* 00B4D0 8000A8D0 AC2267FC */        sw $v0, %lo(D_800467FC)($at)
  /* 00B4D4 8000A8D4 8CED0024 */        lw $t5, 0x24($a3)
  /* 00B4D8 8000A8D8 25AEFFFF */     addiu $t6, $t5, -1
  /* 00B4DC 8000A8DC 19C0000C */      blez $t6, .L8000A910
  /* 00B4E0 8000A8E0 00000000 */       nop 
  /* 00B4E4 8000A8E4 8CEF0028 */        lw $t7, 0x28($a3)
  .L8000A8E8:
  /* 00B4E8 8000A8E8 24C60001 */     addiu $a2, $a2, 1
  /* 00B4EC 8000A8EC 004FC021 */      addu $t8, $v0, $t7
  /* 00B4F0 8000A8F0 AC580004 */        sw $t8, 4($v0)
  /* 00B4F4 8000A8F4 8CF90024 */        lw $t9, 0x24($a3)
  /* 00B4F8 8000A8F8 03001025 */        or $v0, $t8, $zero
  /* 00B4FC 8000A8FC 272BFFFF */     addiu $t3, $t9, -1
  /* 00B500 8000A900 00CB082A */       slt $at, $a2, $t3
  /* 00B504 8000A904 5420FFF8 */      bnel $at, $zero, .L8000A8E8
  /* 00B508 8000A908 8CEF0028 */        lw $t7, 0x28($a3)
  /* 00B50C 8000A90C 00003025 */        or $a2, $zero, $zero
  .L8000A910:
  /* 00B510 8000A910 10000004 */         b .L8000A924
  /* 00B514 8000A914 AC400004 */        sw $zero, 4($v0)
  .L8000A918:
  /* 00B518 8000A918 3C018004 */       lui $at, %hi(D_800467FC)
  /* 00B51C 8000A91C AC2067FC */        sw $zero, %lo(D_800467FC)($at)
  /* 00B520 8000A920 00003025 */        or $a2, $zero, $zero
  .L8000A924:
  /* 00B524 8000A924 8CEC0028 */        lw $t4, 0x28($a3)
  /* 00B528 8000A928 3C018004 */       lui $at, %hi(D_80046A10)
  /* 00B52C 8000A92C 240DFFFF */     addiu $t5, $zero, -1
  /* 00B530 8000A930 A42C6A10 */        sh $t4, %lo(D_80046A10)($at)
  /* 00B534 8000A934 3C018004 */       lui $at, %hi(D_80046A12)
  /* 00B538 8000A938 A42D6A12 */        sh $t5, %lo(D_80046A12)($at)
  /* 00B53C 8000A93C 8CEE0034 */        lw $t6, 0x34($a3)
  /* 00B540 8000A940 3C018004 */       lui $at, %hi(D_80046A1C)
  /* 00B544 8000A944 AC2E6A1C */        sw $t6, %lo(D_80046A1C)($at)
  /* 00B548 8000A948 8CEF0030 */        lw $t7, 0x30($a3)
  /* 00B54C 8000A94C 11E00013 */      beqz $t7, .L8000A99C
  /* 00B550 8000A950 00000000 */       nop 
  /* 00B554 8000A954 8CE3002C */        lw $v1, 0x2c($a3)
  /* 00B558 8000A958 3C018004 */       lui $at, %hi(D_80046A14)
  /* 00B55C 8000A95C AC236A14 */        sw $v1, %lo(D_80046A14)($at)
  /* 00B560 8000A960 8CF80030 */        lw $t8, 0x30($a3)
  /* 00B564 8000A964 2719FFFF */     addiu $t9, $t8, -1
  /* 00B568 8000A968 1B20000A */      blez $t9, .L8000A994
  /* 00B56C 8000A96C 24620048 */     addiu $v0, $v1, 0x48
  .L8000A970:
  /* 00B570 8000A970 AC620000 */        sw $v0, ($v1)
  /* 00B574 8000A974 8CEB0030 */        lw $t3, 0x30($a3)
  /* 00B578 8000A978 24C60001 */     addiu $a2, $a2, 1
  /* 00B57C 8000A97C 00401825 */        or $v1, $v0, $zero
  /* 00B580 8000A980 256CFFFF */     addiu $t4, $t3, -1
  /* 00B584 8000A984 00CC082A */       slt $at, $a2, $t4
  /* 00B588 8000A988 5420FFF9 */      bnel $at, $zero, .L8000A970
  /* 00B58C 8000A98C 24620048 */     addiu $v0, $v1, 0x48
  /* 00B590 8000A990 00003025 */        or $a2, $zero, $zero
  .L8000A994:
  /* 00B594 8000A994 10000003 */         b .L8000A9A4
  /* 00B598 8000A998 AC600000 */        sw $zero, ($v1)
  .L8000A99C:
  /* 00B59C 8000A99C 3C018004 */       lui $at, %hi(D_80046A14)
  /* 00B5A0 8000A9A0 AC206A14 */        sw $zero, %lo(D_80046A14)($at)
  .L8000A9A4:
  /* 00B5A4 8000A9A4 8CED003C */        lw $t5, 0x3c($a3)
  /* 00B5A8 8000A9A8 3C018004 */       lui $at, 0x8004
  /* 00B5AC 8000A9AC 11A00013 */      beqz $t5, .L8000A9FC
  /* 00B5B0 8000A9B0 00000000 */       nop 
  /* 00B5B4 8000A9B4 8CE30038 */        lw $v1, 0x38($a3)
  /* 00B5B8 8000A9B8 3C018004 */       lui $at, %hi(D_80046A20)
  /* 00B5BC 8000A9BC AC236A20 */        sw $v1, %lo(D_80046A20)($at)
  /* 00B5C0 8000A9C0 8CEE003C */        lw $t6, 0x3c($a3)
  /* 00B5C4 8000A9C4 25CFFFFF */     addiu $t7, $t6, -1
  /* 00B5C8 8000A9C8 19E0000A */      blez $t7, .L8000A9F4
  /* 00B5CC 8000A9CC 24620024 */     addiu $v0, $v1, 0x24
  .L8000A9D0:
  /* 00B5D0 8000A9D0 AC620000 */        sw $v0, ($v1)
  /* 00B5D4 8000A9D4 8CF8003C */        lw $t8, 0x3c($a3)
  /* 00B5D8 8000A9D8 24C60001 */     addiu $a2, $a2, 1
  /* 00B5DC 8000A9DC 00401825 */        or $v1, $v0, $zero
  /* 00B5E0 8000A9E0 2719FFFF */     addiu $t9, $t8, -1
  /* 00B5E4 8000A9E4 00D9082A */       slt $at, $a2, $t9
  /* 00B5E8 8000A9E8 5420FFF9 */      bnel $at, $zero, .L8000A9D0
  /* 00B5EC 8000A9EC 24620024 */     addiu $v0, $v1, 0x24
  /* 00B5F0 8000A9F0 00003025 */        or $a2, $zero, $zero
  .L8000A9F4:
  /* 00B5F4 8000A9F4 10000002 */         b .L8000AA00
  /* 00B5F8 8000A9F8 AC600000 */        sw $zero, ($v1)
  .L8000A9FC:
  /* 00B5FC 8000A9FC AC206A20 */        sw $zero, %lo(D_80046A20)($at)
  .L8000AA00:
  /* 00B600 8000AA00 8CEB0044 */        lw $t3, 0x44($a3)
  /* 00B604 8000AA04 3C018004 */       lui $at, 0x8004
  /* 00B608 8000AA08 11600013 */      beqz $t3, .L8000AA58
  /* 00B60C 8000AA0C 00000000 */       nop 
  /* 00B610 8000AA10 8CE30040 */        lw $v1, 0x40($a3)
  /* 00B614 8000AA14 3C018004 */       lui $at, %hi(D_80046A28)
  /* 00B618 8000AA18 AC236A28 */        sw $v1, %lo(D_80046A28)($at)
  /* 00B61C 8000AA1C 8CEC0044 */        lw $t4, 0x44($a3)
  /* 00B620 8000AA20 258DFFFF */     addiu $t5, $t4, -1
  /* 00B624 8000AA24 19A0000A */      blez $t5, .L8000AA50
  /* 00B628 8000AA28 246200A8 */     addiu $v0, $v1, 0xa8
  .L8000AA2C:
  /* 00B62C 8000AA2C AC620000 */        sw $v0, ($v1)
  /* 00B630 8000AA30 8CEE0044 */        lw $t6, 0x44($a3)
  /* 00B634 8000AA34 24C60001 */     addiu $a2, $a2, 1
  /* 00B638 8000AA38 00401825 */        or $v1, $v0, $zero
  /* 00B63C 8000AA3C 25CFFFFF */     addiu $t7, $t6, -1
  /* 00B640 8000AA40 00CF082A */       slt $at, $a2, $t7
  /* 00B644 8000AA44 5420FFF9 */      bnel $at, $zero, .L8000AA2C
  /* 00B648 8000AA48 246200A8 */     addiu $v0, $v1, 0xa8
  /* 00B64C 8000AA4C 00003025 */        or $a2, $zero, $zero
  .L8000AA50:
  /* 00B650 8000AA50 10000002 */         b .L8000AA5C
  /* 00B654 8000AA54 AC600000 */        sw $zero, ($v1)
  .L8000AA58:
  /* 00B658 8000AA58 AC206A28 */        sw $zero, %lo(D_80046A28)($at)
  .L8000AA5C:
  /* 00B65C 8000AA5C 8CF8004C */        lw $t8, 0x4c($a3)
  /* 00B660 8000AA60 3C038004 */       lui $v1, %hi(D_80046778)
  /* 00B664 8000AA64 3C018004 */       lui $at, 0x8004
  /* 00B668 8000AA68 13000015 */      beqz $t8, .L8000AAC0
  /* 00B66C 8000AA6C 24636778 */     addiu $v1, $v1, %lo(D_80046778)
  /* 00B670 8000AA70 8CE20048 */        lw $v0, 0x48($a3)
  /* 00B674 8000AA74 3C018004 */       lui $at, %hi(D_80046A30)
  /* 00B678 8000AA78 AC226A30 */        sw $v0, %lo(D_80046A30)($at)
  /* 00B67C 8000AA7C 8CF9004C */        lw $t9, 0x4c($a3)
  /* 00B680 8000AA80 272BFFFF */     addiu $t3, $t9, -1
  /* 00B684 8000AA84 1960000C */      blez $t3, .L8000AAB8
  /* 00B688 8000AA88 00000000 */       nop 
  /* 00B68C 8000AA8C 8CEC0050 */        lw $t4, 0x50($a3)
  .L8000AA90:
  /* 00B690 8000AA90 24C60001 */     addiu $a2, $a2, 1
  /* 00B694 8000AA94 004C6821 */      addu $t5, $v0, $t4
  /* 00B698 8000AA98 AC4D0000 */        sw $t5, ($v0)
  /* 00B69C 8000AA9C 8CEE004C */        lw $t6, 0x4c($a3)
  /* 00B6A0 8000AAA0 01A01025 */        or $v0, $t5, $zero
  /* 00B6A4 8000AAA4 25CFFFFF */     addiu $t7, $t6, -1
  /* 00B6A8 8000AAA8 00CF082A */       slt $at, $a2, $t7
  /* 00B6AC 8000AAAC 5420FFF8 */      bnel $at, $zero, .L8000AA90
  /* 00B6B0 8000AAB0 8CEC0050 */        lw $t4, 0x50($a3)
  /* 00B6B4 8000AAB4 00003025 */        or $a2, $zero, $zero
  .L8000AAB8:
  /* 00B6B8 8000AAB8 10000002 */         b .L8000AAC4
  /* 00B6BC 8000AABC AC400000 */        sw $zero, ($v0)
  .L8000AAC0:
  /* 00B6C0 8000AAC0 AC206A30 */        sw $zero, %lo(D_80046A30)($at)
  .L8000AAC4:
  /* 00B6C4 8000AAC4 8CF80050 */        lw $t8, 0x50($a3)
  /* 00B6C8 8000AAC8 3C018004 */       lui $at, %hi(D_80046A38)
  /* 00B6CC 8000AACC A4386A38 */        sh $t8, %lo(D_80046A38)($at)
  /* 00B6D0 8000AAD0 8CF90058 */        lw $t9, 0x58($a3)
  /* 00B6D4 8000AAD4 3C018004 */       lui $at, 0x8004
  /* 00B6D8 8000AAD8 13200015 */      beqz $t9, .L8000AB30
  /* 00B6DC 8000AADC 00000000 */       nop 
  /* 00B6E0 8000AAE0 8CE20054 */        lw $v0, 0x54($a3)
  /* 00B6E4 8000AAE4 3C018004 */       lui $at, %hi(D_80046A3C)
  /* 00B6E8 8000AAE8 AC226A3C */        sw $v0, %lo(D_80046A3C)($at)
  /* 00B6EC 8000AAEC 8CEB0058 */        lw $t3, 0x58($a3)
  /* 00B6F0 8000AAF0 256CFFFF */     addiu $t4, $t3, -1
  /* 00B6F4 8000AAF4 1980000C */      blez $t4, .L8000AB28
  /* 00B6F8 8000AAF8 00000000 */       nop 
  /* 00B6FC 8000AAFC 8CED005C */        lw $t5, 0x5c($a3)
  .L8000AB00:
  /* 00B700 8000AB00 24C60001 */     addiu $a2, $a2, 1
  /* 00B704 8000AB04 004D7021 */      addu $t6, $v0, $t5
  /* 00B708 8000AB08 AC4E0000 */        sw $t6, ($v0)
  /* 00B70C 8000AB0C 8CEF0058 */        lw $t7, 0x58($a3)
  /* 00B710 8000AB10 01C01025 */        or $v0, $t6, $zero
  /* 00B714 8000AB14 25F8FFFF */     addiu $t8, $t7, -1
  /* 00B718 8000AB18 00D8082A */       slt $at, $a2, $t8
  /* 00B71C 8000AB1C 5420FFF8 */      bnel $at, $zero, .L8000AB00
  /* 00B720 8000AB20 8CED005C */        lw $t5, 0x5c($a3)
  /* 00B724 8000AB24 00003025 */        or $a2, $zero, $zero
  .L8000AB28:
  /* 00B728 8000AB28 10000002 */         b .L8000AB34
  /* 00B72C 8000AB2C AC400000 */        sw $zero, ($v0)
  .L8000AB30:
  /* 00B730 8000AB30 AC206A3C */        sw $zero, %lo(D_80046A3C)($at)
  .L8000AB34:
  /* 00B734 8000AB34 8CF9005C */        lw $t9, 0x5c($a3)
  /* 00B738 8000AB38 3C018004 */       lui $at, %hi(D_80046A44)
  /* 00B73C 8000AB3C A4396A44 */        sh $t9, %lo(D_80046A44)($at)
  /* 00B740 8000AB40 8CEB0064 */        lw $t3, 0x64($a3)
  /* 00B744 8000AB44 3C018004 */       lui $at, 0x8004
  /* 00B748 8000AB48 11600014 */      beqz $t3, .L8000AB9C
  /* 00B74C 8000AB4C 00000000 */       nop 
  /* 00B750 8000AB50 8CE20060 */        lw $v0, 0x60($a3)
  /* 00B754 8000AB54 3C018004 */       lui $at, %hi(D_80046A48)
  /* 00B758 8000AB58 AC226A48 */        sw $v0, %lo(D_80046A48)($at)
  /* 00B75C 8000AB5C 8CEC0064 */        lw $t4, 0x64($a3)
  /* 00B760 8000AB60 258DFFFF */     addiu $t5, $t4, -1
  /* 00B764 8000AB64 19A0000B */      blez $t5, .L8000AB94
  /* 00B768 8000AB68 00000000 */       nop 
  /* 00B76C 8000AB6C 8CEE0068 */        lw $t6, 0x68($a3)
  .L8000AB70:
  /* 00B770 8000AB70 24C60001 */     addiu $a2, $a2, 1
  /* 00B774 8000AB74 004E7821 */      addu $t7, $v0, $t6
  /* 00B778 8000AB78 AC4F0000 */        sw $t7, ($v0)
  /* 00B77C 8000AB7C 8CF80064 */        lw $t8, 0x64($a3)
  /* 00B780 8000AB80 01E01025 */        or $v0, $t7, $zero
  /* 00B784 8000AB84 2719FFFF */     addiu $t9, $t8, -1
  /* 00B788 8000AB88 00D9082A */       slt $at, $a2, $t9
  /* 00B78C 8000AB8C 5420FFF8 */      bnel $at, $zero, .L8000AB70
  /* 00B790 8000AB90 8CEE0068 */        lw $t6, 0x68($a3)
  .L8000AB94:
  /* 00B794 8000AB94 10000002 */         b .L8000ABA0
  /* 00B798 8000AB98 AC400000 */        sw $zero, ($v0)
  .L8000AB9C:
  /* 00B79C 8000AB9C AC206A48 */        sw $zero, %lo(D_80046A48)($at)
  .L8000ABA0:
  /* 00B7A0 8000ABA0 8CEB0068 */        lw $t3, 0x68($a3)
  /* 00B7A4 8000ABA4 3C018004 */       lui $at, %hi(D_80046A50)
  /* 00B7A8 8000ABA8 3C028004 */       lui $v0, %hi(D_800466F0)
  /* 00B7AC 8000ABAC 244266F0 */     addiu $v0, $v0, %lo(D_800466F0)
  /* 00B7B0 8000ABB0 A42B6A50 */        sh $t3, %lo(D_80046A50)($at)
  .L8000ABB4:
  /* 00B7B4 8000ABB4 24420004 */     addiu $v0, $v0, 4
  /* 00B7B8 8000ABB8 0044082B */      sltu $at, $v0, $a0
  /* 00B7BC 8000ABBC 24630004 */     addiu $v1, $v1, 4
  /* 00B7C0 8000ABC0 AC60FFFC */        sw $zero, -4($v1) # D_80046778 + -4
  /* 00B7C4 8000ABC4 1420FFFB */      bnez $at, .L8000ABB4
  /* 00B7C8 8000ABC8 AC40FFFC */        sw $zero, -4($v0) # D_800466F0 + -4
  /* 00B7CC 8000ABCC 3C018004 */       lui $at, %hi(D_80046908)
  /* 00B7D0 8000ABD0 AC206908 */        sw $zero, %lo(D_80046908)($at)
  /* 00B7D4 8000ABD4 3C018004 */       lui $at, %hi(D_80046800)
  /* 00B7D8 8000ABD8 3C038004 */       lui $v1, %hi(D_8004690C)
  /* 00B7DC 8000ABDC 3C028004 */       lui $v0, %hi(D_80046804)
  /* 00B7E0 8000ABE0 3C048004 */       lui $a0, %hi(D_80046904)
  /* 00B7E4 8000ABE4 24846904 */     addiu $a0, $a0, %lo(D_80046904)
  /* 00B7E8 8000ABE8 24426804 */     addiu $v0, $v0, %lo(D_80046804)
  /* 00B7EC 8000ABEC 2463690C */     addiu $v1, $v1, %lo(D_8004690C)
  /* 00B7F0 8000ABF0 AC206800 */        sw $zero, %lo(D_80046800)($at)
  .L8000ABF4:
  /* 00B7F4 8000ABF4 24420010 */     addiu $v0, $v0, 0x10
  /* 00B7F8 8000ABF8 AC600004 */        sw $zero, 4($v1) # D_8004690C + 4
  /* 00B7FC 8000ABFC AC40FFF4 */        sw $zero, -0xc($v0) # D_80046804 + -12
  /* 00B800 8000AC00 AC600008 */        sw $zero, 8($v1) # D_8004690C + 8
  /* 00B804 8000AC04 AC40FFF8 */        sw $zero, -8($v0) # D_80046804 + -8
  /* 00B808 8000AC08 AC60000C */        sw $zero, 0xc($v1) # D_8004690C + 12
  /* 00B80C 8000AC0C AC40FFFC */        sw $zero, -4($v0) # D_80046804 + -4
  /* 00B810 8000AC10 24630010 */     addiu $v1, $v1, 0x10
  /* 00B814 8000AC14 AC60FFF0 */        sw $zero, -0x10($v1) # D_8004690C + -16
  /* 00B818 8000AC18 1444FFF6 */       bne $v0, $a0, .L8000ABF4
  /* 00B81C 8000AC1C AC40FFF0 */        sw $zero, -0x10($v0) # D_80046804 + -16
  /* 00B820 8000AC20 0C00510C */       jal func_80014430
  /* 00B824 8000AC24 00000000 */       nop 
  /* 00B828 8000AC28 3C048004 */       lui $a0, %hi(D_80046A70)
  /* 00B82C 8000AC2C 3C058004 */       lui $a1, %hi(D_80046A68)
  /* 00B830 8000AC30 24A56A68 */     addiu $a1, $a1, %lo(D_80046A68)
  /* 00B834 8000AC34 24846A70 */     addiu $a0, $a0, %lo(D_80046A70)
  /* 00B838 8000AC38 0C00D120 */       jal osCreateMesgQueue
  /* 00B83C 8000AC3C 24060001 */     addiu $a2, $zero, 1
  /* 00B840 8000AC40 3C028004 */       lui $v0, %hi(D_80046A4C)
  /* 00B844 8000AC44 3C038004 */       lui $v1, %hi(D_80046A40)
  /* 00B848 8000AC48 3C058004 */       lui $a1, %hi(D_80046A34)
  /* 00B84C 8000AC4C 3C068004 */       lui $a2, %hi(D_80046A24)
  /* 00B850 8000AC50 3C078004 */       lui $a3, %hi(D_80046A18)
  /* 00B854 8000AC54 3C088004 */       lui $t0, %hi(D_80046A0C)
  /* 00B858 8000AC58 3C098004 */       lui $t1, %hi(D_800466E8)
  /* 00B85C 8000AC5C 3C0A8004 */       lui $t2, %hi(D_800466B4)
  /* 00B860 8000AC60 254A66B4 */     addiu $t2, $t2, %lo(D_800466B4)
  /* 00B864 8000AC64 252966E8 */     addiu $t1, $t1, %lo(D_800466E8)
  /* 00B868 8000AC68 25086A0C */     addiu $t0, $t0, %lo(D_80046A0C)
  /* 00B86C 8000AC6C 24E76A18 */     addiu $a3, $a3, %lo(D_80046A18)
  /* 00B870 8000AC70 24C66A24 */     addiu $a2, $a2, %lo(D_80046A24)
  /* 00B874 8000AC74 24A56A34 */     addiu $a1, $a1, %lo(D_80046A34)
  /* 00B878 8000AC78 24636A40 */     addiu $v1, $v1, %lo(D_80046A40)
  /* 00B87C 8000AC7C 24426A4C */     addiu $v0, $v0, %lo(D_80046A4C)
  /* 00B880 8000AC80 AC400000 */        sw $zero, ($v0) # D_80046A4C + 0
  /* 00B884 8000AC84 AC600000 */        sw $zero, ($v1) # D_80046A40 + 0
  /* 00B888 8000AC88 ACA00000 */        sw $zero, ($a1) # D_80046A34 + 0
  /* 00B88C 8000AC8C ACC00000 */        sw $zero, ($a2) # D_80046A24 + 0
  /* 00B890 8000AC90 ACE00000 */        sw $zero, ($a3) # D_80046A18 + 0
  /* 00B894 8000AC94 AD000000 */        sw $zero, ($t0) # D_80046A0C + 0
  /* 00B898 8000AC98 AD200000 */        sw $zero, ($t1) # D_800466E8 + 0
  /* 00B89C 8000AC9C AD400000 */        sw $zero, ($t2) # D_800466B4 + 0
  /* 00B8A0 8000ACA0 3C018004 */       lui $at, %hi(D_800466B8)
  /* 00B8A4 8000ACA4 AC2066B8 */        sw $zero, %lo(D_800466B8)($at)
  /* 00B8A8 8000ACA8 3C018004 */       lui $at, %hi(D_800466C8)
  /* 00B8AC 8000ACAC AC2066C8 */        sw $zero, %lo(D_800466C8)($at)
  /* 00B8B0 8000ACB0 0C005E0C */       jal func_80017830
  /* 00B8B4 8000ACB4 00002025 */        or $a0, $zero, $zero
  /* 00B8B8 8000ACB8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00B8BC 8000ACBC 3C018004 */       lui $at, %hi(D_8003B874)
  /* 00B8C0 8000ACC0 AC20B874 */        sw $zero, %lo(D_8003B874)($at)
  /* 00B8C4 8000ACC4 03E00008 */        jr $ra
  /* 00B8C8 8000ACC8 27BD0020 */     addiu $sp, $sp, 0x20

  /* 00B8CC 8000ACCC 00000000 */       nop 
