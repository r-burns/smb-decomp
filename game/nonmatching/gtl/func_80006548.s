.section .text
glabel func_80006548
  /* 007148 80006548 27BDFF78 */     addiu $sp, $sp, -0x88
  /* 00714C 8000654C AFBF002C */        sw $ra, 0x2c($sp)
  /* 007150 80006550 AFB50028 */        sw $s5, 0x28($sp)
  /* 007154 80006554 AFB40024 */        sw $s4, 0x24($sp)
  /* 007158 80006558 AFB30020 */        sw $s3, 0x20($sp)
  /* 00715C 8000655C AFB2001C */        sw $s2, 0x1c($sp)
  /* 007160 80006560 AFB10018 */        sw $s1, 0x18($sp)
  /* 007164 80006564 AFB00014 */        sw $s0, 0x14($sp)
  /* 007168 80006568 AFA5008C */        sw $a1, 0x8c($sp)
  /* 00716C 8000656C 8C8E0018 */        lw $t6, 0x18($a0)
  /* 007170 80006570 3C158004 */       lui $s5, %hi(D_80046640)
  /* 007174 80006574 26B56640 */     addiu $s5, $s5, %lo(D_80046640)
  /* 007178 80006578 AEAE0000 */        sw $t6, ($s5) # D_80046640 + 0
  /* 00717C 8000657C 948F0000 */       lhu $t7, ($a0)
  /* 007180 80006580 3C028004 */       lui $v0, %hi(D_800465F8)
  /* 007184 80006584 244265F8 */     addiu $v0, $v0, %lo(D_800465F8)
  /* 007188 80006588 A44F0000 */        sh $t7, ($v0) # D_800465F8 + 0
  /* 00718C 8000658C 8C980004 */        lw $t8, 4($a0)
  /* 007190 80006590 00809025 */        or $s2, $a0, $zero
  /* 007194 80006594 24050008 */     addiu $a1, $zero, 8
  /* 007198 80006598 AC580004 */        sw $t8, 4($v0) # D_800465F8 + 4
  /* 00719C 8000659C 8C990008 */        lw $t9, 8($a0)
  /* 0071A0 800065A0 AC59000C */        sw $t9, 0xc($v0) # D_800465F8 + 12
  /* 0071A4 800065A4 8C880014 */        lw $t0, 0x14($a0)
  /* 0071A8 800065A8 00084900 */       sll $t1, $t0, 4
  /* 0071AC 800065AC 01284821 */      addu $t1, $t1, $t0
  /* 0071B0 800065B0 000948C0 */       sll $t1, $t1, 3
  /* 0071B4 800065B4 012E0019 */     multu $t1, $t6
  /* 0071B8 800065B8 00002012 */      mflo $a0
  /* 0071BC 800065BC 0C001260 */       jal func_80004980
  /* 0071C0 800065C0 00000000 */       nop 
  /* 0071C4 800065C4 8EA40000 */        lw $a0, ($s5) # D_80046640 + 0
  /* 0071C8 800065C8 00408025 */        or $s0, $v0, $zero
  /* 0071CC 800065CC 24050008 */     addiu $a1, $zero, 8
  /* 0071D0 800065D0 00800821 */      addu $at, $a0, $zero
  /* 0071D4 800065D4 00042080 */       sll $a0, $a0, 2
  /* 0071D8 800065D8 00812023 */      subu $a0, $a0, $at
  /* 0071DC 800065DC 00042080 */       sll $a0, $a0, 2
  /* 0071E0 800065E0 00812023 */      subu $a0, $a0, $at
  /* 0071E4 800065E4 0C001260 */       jal func_80004980
  /* 0071E8 800065E8 00042080 */       sll $a0, $a0, 2
  /* 0071EC 800065EC 8EA40000 */        lw $a0, ($s5) # D_80046640 + 0
  /* 0071F0 800065F0 00408825 */        or $s1, $v0, $zero
  /* 0071F4 800065F4 24050008 */     addiu $a1, $zero, 8
  /* 0071F8 800065F8 00800821 */      addu $at, $a0, $zero
  /* 0071FC 800065FC 000420C0 */       sll $a0, $a0, 3
  /* 007200 80006600 00812023 */      subu $a0, $a0, $at
  /* 007204 80006604 0C001260 */       jal func_80004980
  /* 007208 80006608 000420C0 */       sll $a0, $a0, 3
  /* 00720C 8000660C 02002025 */        or $a0, $s0, $zero
  /* 007210 80006610 8E450014 */        lw $a1, 0x14($s2)
  /* 007214 80006614 02203025 */        or $a2, $s1, $zero
  /* 007218 80006618 0C00136D */       jal func_80004DB4
  /* 00721C 8000661C 00403825 */        or $a3, $v0, $zero
  /* 007220 80006620 8EAB0000 */        lw $t3, ($s5) # D_80046640 + 0
  /* 007224 80006624 00009825 */        or $s3, $zero, $zero
  /* 007228 80006628 1960001F */      blez $t3, .L800066A8
  /* 00722C 8000662C 27B00044 */     addiu $s0, $sp, 0x44
  .L80006630:
  /* 007230 80006630 8E44001C */        lw $a0, 0x1c($s2)
  /* 007234 80006634 0C001260 */       jal func_80004980
  /* 007238 80006638 24050008 */     addiu $a1, $zero, 8
  /* 00723C 8000663C AE020000 */        sw $v0, ($s0)
  /* 007240 80006640 8E4C001C */        lw $t4, 0x1c($s2)
  /* 007244 80006644 24050008 */     addiu $a1, $zero, 8
  /* 007248 80006648 AE0C0004 */        sw $t4, 4($s0)
  /* 00724C 8000664C 0C001260 */       jal func_80004980
  /* 007250 80006650 8E440020 */        lw $a0, 0x20($s2)
  /* 007254 80006654 AE020008 */        sw $v0, 8($s0)
  /* 007258 80006658 8E4D0020 */        lw $t5, 0x20($s2)
  /* 00725C 8000665C 24050008 */     addiu $a1, $zero, 8
  /* 007260 80006660 AE0D000C */        sw $t5, 0xc($s0)
  /* 007264 80006664 0C001260 */       jal func_80004980
  /* 007268 80006668 8E440024 */        lw $a0, 0x24($s2)
  /* 00726C 8000666C AE020010 */        sw $v0, 0x10($s0)
  /* 007270 80006670 8E4E0024 */        lw $t6, 0x24($s2)
  /* 007274 80006674 24050008 */     addiu $a1, $zero, 8
  /* 007278 80006678 AE0E0014 */        sw $t6, 0x14($s0)
  /* 00727C 8000667C 0C001260 */       jal func_80004980
  /* 007280 80006680 8E440028 */        lw $a0, 0x28($s2)
  /* 007284 80006684 8EB80000 */        lw $t8, ($s5) # D_80046640 + 0
  /* 007288 80006688 AE020018 */        sw $v0, 0x18($s0)
  /* 00728C 8000668C 8E4F0028 */        lw $t7, 0x28($s2)
  /* 007290 80006690 26730001 */     addiu $s3, $s3, 1
  /* 007294 80006694 0278082A */       slt $at, $s3, $t8
  /* 007298 80006698 26100020 */     addiu $s0, $s0, 0x20
  /* 00729C 8000669C 1420FFE4 */      bnez $at, .L80006630
  /* 0072A0 800066A0 AE0FFFFC */        sw $t7, -4($s0)
  /* 0072A4 800066A4 00009825 */        or $s3, $zero, $zero
  .L800066A8:
  /* 0072A8 800066A8 0C001283 */       jal func_80004A0C
  /* 0072AC 800066AC 27A40044 */     addiu $a0, $sp, 0x44
  /* 0072B0 800066B0 8EB90000 */        lw $t9, ($s5) # D_80046640 + 0
  /* 0072B4 800066B4 3C108004 */       lui $s0, %hi(D_80046648)
  /* 0072B8 800066B8 26106648 */     addiu $s0, $s0, %lo(D_80046648)
  /* 0072BC 800066BC 1B200019 */      blez $t9, .L80006724
  /* 0072C0 800066C0 3C140001 */       lui $s4, (0x10002 >> 16) # 65538
  /* 0072C4 800066C4 3C118004 */       lui $s1, %hi(D_800465D8)
  /* 0072C8 800066C8 263165D8 */     addiu $s1, $s1, %lo(D_800465D8)
  /* 0072CC 800066CC 36940002 */       ori $s4, $s4, (0x10002 & 0xFFFF) # 65538
  .L800066D0:
  /* 0072D0 800066D0 8E44002C */        lw $a0, 0x2c($s2)
  /* 0072D4 800066D4 0C001260 */       jal func_80004980
  /* 0072D8 800066D8 24050008 */     addiu $a1, $zero, 8
  /* 0072DC 800066DC 02202025 */        or $a0, $s1, $zero
  /* 0072E0 800066E0 02802825 */        or $a1, $s4, $zero
  /* 0072E4 800066E4 00403025 */        or $a2, $v0, $zero
  /* 0072E8 800066E8 0C001B55 */       jal func_80006D54
  /* 0072EC 800066EC 8E47002C */        lw $a3, 0x2c($s2)
  /* 0072F0 800066F0 8EAC0000 */        lw $t4, ($s5) # D_80046640 + 0
  /* 0072F4 800066F4 8E280000 */        lw $t0, ($s1) # D_800465D8 + 0
  /* 0072F8 800066F8 8E290004 */        lw $t1, 4($s1) # D_800465D8 + 4
  /* 0072FC 800066FC 8E2A0008 */        lw $t2, 8($s1) # D_800465D8 + 8
  /* 007300 80006700 8E2B000C */        lw $t3, 0xc($s1) # D_800465D8 + 12
  /* 007304 80006704 26730001 */     addiu $s3, $s3, 1
  /* 007308 80006708 026C082A */       slt $at, $s3, $t4
  /* 00730C 8000670C 26100010 */     addiu $s0, $s0, 0x10
  /* 007310 80006710 AE08FFF0 */        sw $t0, -0x10($s0) # D_80046648 + -16
  /* 007314 80006714 AE09FFF4 */        sw $t1, -0xc($s0) # D_80046648 + -12
  /* 007318 80006718 AE0AFFF8 */        sw $t2, -8($s0) # D_80046648 + -8
  /* 00731C 8000671C 1420FFEC */      bnez $at, .L800066D0
  /* 007320 80006720 AE0BFFFC */        sw $t3, -4($s0) # D_80046648 + -4
  .L80006724:
  /* 007324 80006724 8E420034 */        lw $v0, 0x34($s2)
  /* 007328 80006728 240D0002 */     addiu $t5, $zero, 2
  /* 00732C 8000672C A64D0030 */        sh $t5, 0x30($s2)
  /* 007330 80006730 14400003 */      bnez $v0, .L80006740
  /* 007334 80006734 24050010 */     addiu $a1, $zero, 0x10
  /* 007338 80006738 24021000 */     addiu $v0, $zero, 0x1000
  /* 00733C 8000673C AE420034 */        sw $v0, 0x34($s2)
  .L80006740:
  /* 007340 80006740 0C001260 */       jal func_80004980
  /* 007344 80006744 00402025 */        or $a0, $v0, $zero
  /* 007348 80006748 96440030 */       lhu $a0, 0x30($s2)
  /* 00734C 8000674C 00402825 */        or $a1, $v0, $zero
  /* 007350 80006750 0C00132D */       jal func_80004CB4
  /* 007354 80006754 8E460034 */        lw $a2, 0x34($s2)
  /* 007358 80006758 0C001C5A */       jal func_80007168
  /* 00735C 8000675C 8E440038 */        lw $a0, 0x38($s2)
  /* 007360 80006760 8E4F003C */        lw $t7, 0x3c($s2)
  /* 007364 80006764 3C028004 */       lui $v0, %hi(D_80046668)
  /* 007368 80006768 3C198000 */       lui $t9, %hi(schedule_contread)
  /* 00736C 8000676C 24426668 */     addiu $v0, $v0, %lo(D_80046668)
  /* 007370 80006770 273942E8 */     addiu $t9, $t9, %lo(schedule_contread)
  /* 007374 80006774 11F90003 */       beq $t7, $t9, .L80006784
  /* 007378 80006778 AC4F0000 */        sw $t7, ($v0) # D_80046668 + 0
  /* 00737C 8000677C 10000002 */         b .L80006788
  /* 007380 80006780 24040001 */     addiu $a0, $zero, 1
  .L80006784:
  /* 007384 80006784 00002025 */        or $a0, $zero, $zero
  .L80006788:
  /* 007388 80006788 0C0010DA */       jal enable_auto_contread
  /* 00738C 8000678C 00000000 */       nop 
  /* 007390 80006790 8FA3008C */        lw $v1, 0x8c($sp)
  /* 007394 80006794 3C028004 */       lui $v0, %hi(D_8003B6E8)
  /* 007398 80006798 2442B6E8 */     addiu $v0, $v0, %lo(D_8003B6E8)
  /* 00739C 8000679C AC400000 */        sw $zero, ($v0) # D_8003B6E8 + 0
  /* 0073A0 800067A0 3C018004 */       lui $at, %hi(D_8003B6E4)
  /* 0073A4 800067A4 10600003 */      beqz $v1, .L800067B4
  /* 0073A8 800067A8 AC20B6E4 */        sw $zero, %lo(D_8003B6E4)($at)
  /* 0073AC 800067AC 0060F809 */      jalr $v1
  /* 0073B0 800067B0 00000000 */       nop 
  .L800067B4:
  /* 0073B4 800067B4 3C048004 */       lui $a0, %hi(D_800465F8)
  /* 0073B8 800067B8 0C001768 */       jal func_80005DA0
  /* 0073BC 800067BC 248465F8 */     addiu $a0, $a0, %lo(D_800465F8)
  /* 0073C0 800067C0 8FBF002C */        lw $ra, 0x2c($sp)
  /* 0073C4 800067C4 8FB00014 */        lw $s0, 0x14($sp)
  /* 0073C8 800067C8 8FB10018 */        lw $s1, 0x18($sp)
  /* 0073CC 800067CC 8FB2001C */        lw $s2, 0x1c($sp)
  /* 0073D0 800067D0 8FB30020 */        lw $s3, 0x20($sp)
  /* 0073D4 800067D4 8FB40024 */        lw $s4, 0x24($sp)
  /* 0073D8 800067D8 8FB50028 */        lw $s5, 0x28($sp)
  /* 0073DC 800067DC 03E00008 */        jr $ra
  /* 0073E0 800067E0 27BD0088 */     addiu $sp, $sp, 0x88

  /* 0073E4 800067E4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0073E8 800067E8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0073EC 800067EC 00803025 */        or $a2, $a0, $zero
  /* 0073F0 800067F0 8CC50010 */        lw $a1, 0x10($a2)
  /* 0073F4 800067F4 8C84000C */        lw $a0, 0xc($a0)
  /* 0073F8 800067F8 0C001254 */       jal func_80004950
  /* 0073FC 800067FC AFA60018 */        sw $a2, 0x18($sp)
  /* 007400 80006800 3C028004 */       lui $v0, %hi(D_800465F8)
  /* 007404 80006804 3C0E8000 */       lui $t6, %hi(func_800062B4)
  /* 007408 80006808 3C0F8000 */       lui $t7, %hi(func_800062EC)
  /* 00740C 8000680C 244265F8 */     addiu $v0, $v0, %lo(D_800465F8)
  /* 007410 80006810 25CE62B4 */     addiu $t6, $t6, %lo(func_800062B4)
  /* 007414 80006814 25EF62EC */     addiu $t7, $t7, %lo(func_800062EC)
  /* 007418 80006818 8FA40018 */        lw $a0, 0x18($sp)
  /* 00741C 8000681C AC4E0008 */        sw $t6, 8($v0) # D_800465F8 + 8
  /* 007420 80006820 AC4F0010 */        sw $t7, 0x10($v0) # D_800465F8 + 16
  /* 007424 80006824 0C001952 */       jal func_80006548
  /* 007428 80006828 00002825 */        or $a1, $zero, $zero
  /* 00742C 8000682C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 007430 80006830 27BD0018 */     addiu $sp, $sp, 0x18
  /* 007434 80006834 03E00008 */        jr $ra
  /* 007438 80006838 00000000 */       nop 

