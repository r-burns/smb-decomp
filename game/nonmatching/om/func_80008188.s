.section .rodata

glabel D_8003DA2C
  /* 3D62C 03E62C 8003DA2C */
  .asciz "om : GObjProcess\'s priority is bad value\n"
  .balign 4
  /* 3D658 03E658 8003DA58 */
  .asciz "om : GObjProcess\'s kind is bad value\n"
  .balign 4

glabel D_8003DA80
  /* 3D680 03E680 8003DA80 */
  .asciz "om : GObjProcess\'s priority is bad value\n"
  .balign 4

.section .text
glabel func_80008188
  /* 008D88 80008188 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 008D8C 8000818C AFA60038 */        sw $a2, 0x38($sp)
  /* 008D90 80008190 30C600FF */      andi $a2, $a2, 0xff
  /* 008D94 80008194 AFBF001C */        sw $ra, 0x1c($sp)
  /* 008D98 80008198 14800003 */      bnez $a0, .L800081A8
  /* 008D9C 8000819C AFA50034 */        sw $a1, 0x34($sp)
  /* 008DA0 800081A0 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 008DA4 800081A4 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L800081A8:
  /* 008DA8 800081A8 AFA40030 */        sw $a0, 0x30($sp)
  /* 008DAC 800081AC A3A6003B */        sb $a2, 0x3b($sp)
  /* 008DB0 800081B0 0C001D81 */       jal func_80007604
  /* 008DB4 800081B4 AFA7003C */        sw $a3, 0x3c($sp)
  /* 008DB8 800081B8 8FA7003C */        lw $a3, 0x3c($sp)
  /* 008DBC 800081BC 93A6003B */       lbu $a2, 0x3b($sp)
  /* 008DC0 800081C0 AFA20024 */        sw $v0, 0x24($sp)
  /* 008DC4 800081C4 2CE10006 */     sltiu $at, $a3, 6
  /* 008DC8 800081C8 14200006 */      bnez $at, .L800081E4
  /* 008DCC 800081CC 8FA40034 */        lw $a0, 0x34($sp)
  /* 008DD0 800081D0 3C048004 */       lui $a0, %hi(D_8003DA2C)
  /* 008DD4 800081D4 0C008D89 */       jal fatal_printf
  /* 008DD8 800081D8 2484DA2C */     addiu $a0, $a0, %lo(D_8003DA2C)
  .L800081DC:
  /* 008DDC 800081DC 1000FFFF */         b .L800081DC
  /* 008DE0 800081E0 00000000 */       nop 
  .L800081E4:
  /* 008DE4 800081E4 AC470010 */        sw $a3, 0x10($v0)
  /* 008DE8 800081E8 A0460014 */        sb $a2, 0x14($v0)
  /* 008DEC 800081EC A0400015 */        sb $zero, 0x15($v0)
  /* 008DF0 800081F0 8FAE0030 */        lw $t6, 0x30($sp)
  /* 008DF4 800081F4 AC440020 */        sw $a0, 0x20($v0)
  /* 008DF8 800081F8 10C00006 */      beqz $a2, .L80008214
  /* 008DFC 800081FC AC4E0018 */        sw $t6, 0x18($v0)
  /* 008E00 80008200 24010001 */     addiu $at, $zero, 1
  /* 008E04 80008204 10C10032 */       beq $a2, $at, .L800082D0
  /* 008E08 80008208 00000000 */       nop 
  /* 008E0C 8000820C 10000032 */         b .L800082D8
  /* 008E10 80008210 3C048004 */       lui $a0, 0x8004
  .L80008214:
  /* 008E14 80008214 0C001CF8 */       jal func_800073E0
  /* 008E18 80008218 00000000 */       nop 
  /* 008E1C 8000821C 8FAF0024 */        lw $t7, 0x24($sp)
  /* 008E20 80008220 ADE2001C */        sw $v0, 0x1c($t7)
  /* 008E24 80008224 0C001D59 */       jal func_80007564
  /* 008E28 80008228 AFA20028 */        sw $v0, 0x28($sp)
  /* 008E2C 8000822C 8FA80028 */        lw $t0, 0x28($sp)
  /* 008E30 80008230 3C0A8004 */       lui $t2, %hi(D_800466BC)
  /* 008E34 80008234 24430008 */     addiu $v1, $v0, 8
  /* 008E38 80008238 254A66BC */     addiu $t2, $t2, %lo(D_800466BC)
  /* 008E3C 8000823C AD0301B8 */        sw $v1, 0x1b8($t0)
  /* 008E40 80008240 8D580000 */        lw $t8, ($t2) # D_800466BC + 0
  /* 008E44 80008244 3C098004 */       lui $t1, %hi(D_8003B870)
  /* 008E48 80008248 2529B870 */     addiu $t1, $t1, %lo(D_8003B870)
  /* 008E4C 8000824C AD1801BC */        sw $t8, 0x1bc($t0)
  /* 008E50 80008250 8D590000 */        lw $t9, ($t2) # D_800466BC + 0
  /* 008E54 80008254 8D250000 */        lw $a1, ($t1) # D_8003B870 + 0
  /* 008E58 80008258 240E0033 */     addiu $t6, $zero, 0x33
  /* 008E5C 8000825C 001958C2 */       srl $t3, $t9, 3
  /* 008E60 80008260 000B60C0 */       sll $t4, $t3, 3
  /* 008E64 80008264 006C6821 */      addu $t5, $v1, $t4
  /* 008E68 80008268 24AF0001 */     addiu $t7, $a1, 1
  /* 008E6C 8000826C AD2F0000 */        sw $t7, ($t1) # D_8003B870 + 0
  /* 008E70 80008270 AFAD0010 */        sw $t5, 0x10($sp)
  /* 008E74 80008274 AFAE0014 */        sw $t6, 0x14($sp)
  /* 008E78 80008278 8FA70030 */        lw $a3, 0x30($sp)
  /* 008E7C 8000827C 8FA60034 */        lw $a2, 0x34($sp)
  /* 008E80 80008280 0C00C788 */       jal osCreateThread
  /* 008E84 80008284 25040008 */     addiu $a0, $t0, 8
  /* 008E88 80008288 8FA80028 */        lw $t0, 0x28($sp)
  /* 008E8C 8000828C 3C19FEDC */       lui $t9, (0xFEDCBA98 >> 16) # 4275878552
  /* 008E90 80008290 3C098004 */       lui $t1, %hi(D_8003B870)
  /* 008E94 80008294 8D0B01B8 */        lw $t3, 0x1b8($t0)
  /* 008E98 80008298 3739BA98 */       ori $t9, $t9, (0xFEDCBA98 & 0xFFFF) # 4275878552
  /* 008E9C 8000829C 24180000 */     addiu $t8, $zero, 0
  /* 008EA0 800082A0 2529B870 */     addiu $t1, $t1, %lo(D_8003B870)
  /* 008EA4 800082A4 AD780038 */        sw $t8, 0x38($t3)
  /* 008EA8 800082A8 AD79003C */        sw $t9, 0x3c($t3)
  /* 008EAC 800082AC 8D2C0000 */        lw $t4, ($t1) # D_8003B870 + 0
  /* 008EB0 800082B0 3C010131 */       lui $at, (0x1312D00 >> 16) # 20000000
  /* 008EB4 800082B4 34212D00 */       ori $at, $at, (0x1312D00 & 0xFFFF) # 20000000
  /* 008EB8 800082B8 0181082A */       slt $at, $t4, $at
  /* 008EBC 800082BC 1420000A */      bnez $at, .L800082E8
  /* 008EC0 800082C0 3C0D0098 */       lui $t5, (0x989680 >> 16) # 10000000
  /* 008EC4 800082C4 35AD9680 */       ori $t5, $t5, (0x989680 & 0xFFFF) # 10000000
  /* 008EC8 800082C8 10000007 */         b .L800082E8
  /* 008ECC 800082CC AD2D0000 */        sw $t5, ($t1) # D_8003B870 + 0
  .L800082D0:
  /* 008ED0 800082D0 10000005 */         b .L800082E8
  /* 008ED4 800082D4 AC44001C */        sw $a0, 0x1c($v0)
  .L800082D8:
  /* 008ED8 800082D8 0C008D89 */       jal fatal_printf
  /* 008EDC 800082DC 2484DA58 */     addiu $a0, $a0, -0x25a8
  .L800082E0:
  /* 008EE0 800082E0 1000FFFF */         b .L800082E0
  /* 008EE4 800082E4 00000000 */       nop 
  .L800082E8:
  /* 008EE8 800082E8 0C001DA0 */       jal func_80007680
  /* 008EEC 800082EC 8FA40024 */        lw $a0, 0x24($sp)
  /* 008EF0 800082F0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 008EF4 800082F4 8FA20024 */        lw $v0, 0x24($sp)
  /* 008EF8 800082F8 27BD0030 */     addiu $sp, $sp, 0x30
  /* 008EFC 800082FC 03E00008 */        jr $ra
  /* 008F00 80008300 00000000 */       nop 

  /* 008F04 80008304 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 008F08 80008308 AFBF0024 */        sw $ra, 0x24($sp)
  /* 008F0C 8000830C AFB00020 */        sw $s0, 0x20($sp)
  /* 008F10 80008310 AFA50034 */        sw $a1, 0x34($sp)
  /* 008F14 80008314 14800003 */      bnez $a0, .L80008324
  /* 008F18 80008318 AFA7003C */        sw $a3, 0x3c($sp)
  /* 008F1C 8000831C 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 008F20 80008320 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80008324:
  /* 008F24 80008324 AFA40030 */        sw $a0, 0x30($sp)
  /* 008F28 80008328 0C001D81 */       jal func_80007604
  /* 008F2C 8000832C AFA60038 */        sw $a2, 0x38($sp)
  /* 008F30 80008330 8FA60038 */        lw $a2, 0x38($sp)
  /* 008F34 80008334 00408025 */        or $s0, $v0, $zero
  /* 008F38 80008338 3C048004 */       lui $a0, %hi(D_8003DA80)
  /* 008F3C 8000833C 2CC10006 */     sltiu $at, $a2, 6
  /* 008F40 80008340 54200006 */      bnel $at, $zero, .L8000835C
  /* 008F44 80008344 AE060010 */        sw $a2, 0x10($s0)
  /* 008F48 80008348 0C008D89 */       jal fatal_printf
  /* 008F4C 8000834C 2484DA80 */     addiu $a0, $a0, %lo(D_8003DA80)
  .L80008350:
  /* 008F50 80008350 1000FFFF */         b .L80008350
  /* 008F54 80008354 00000000 */       nop 
  /* 008F58 80008358 AE060010 */        sw $a2, 0x10($s0)
  .L8000835C:
  /* 008F5C 8000835C A2000015 */        sb $zero, 0x15($s0)
  /* 008F60 80008360 8FAE0030 */        lw $t6, 0x30($sp)
  /* 008F64 80008364 AE0E0018 */        sw $t6, 0x18($s0)
  /* 008F68 80008368 8FAF0034 */        lw $t7, 0x34($sp)
  /* 008F6C 8000836C 0C001CF8 */       jal func_800073E0
  /* 008F70 80008370 AE0F0020 */        sw $t7, 0x20($s0)
  /* 008F74 80008374 8FA40040 */        lw $a0, 0x40($sp)
  /* 008F78 80008378 AE02001C */        sw $v0, 0x1c($s0)
  /* 008F7C 8000837C 00401825 */        or $v1, $v0, $zero
  /* 008F80 80008380 14800005 */      bnez $a0, .L80008398
  /* 008F84 80008384 A2000014 */        sb $zero, 0x14($s0)
  /* 008F88 80008388 0C001D59 */       jal func_80007564
  /* 008F8C 8000838C AFA20028 */        sw $v0, 0x28($sp)
  /* 008F90 80008390 10000004 */         b .L800083A4
  /* 008F94 80008394 8FA30028 */        lw $v1, 0x28($sp)
  .L80008398:
  /* 008F98 80008398 0C001D22 */       jal func_80007488
  /* 008F9C 8000839C AFA30028 */        sw $v1, 0x28($sp)
  /* 008FA0 800083A0 8FA30028 */        lw $v1, 0x28($sp)
  .L800083A4:
  /* 008FA4 800083A4 24580008 */     addiu $t8, $v0, 8
  /* 008FA8 800083A8 AC7801B8 */        sw $t8, 0x1b8($v1)
  /* 008FAC 800083AC 8FB90040 */        lw $t9, 0x40($sp)
  /* 008FB0 800083B0 8FA90040 */        lw $t1, 0x40($sp)
  /* 008FB4 800083B4 24180033 */     addiu $t8, $zero, 0x33
  /* 008FB8 800083B8 17200005 */      bnez $t9, .L800083D0
  /* 008FBC 800083BC 24640008 */     addiu $a0, $v1, 8
  /* 008FC0 800083C0 3C088004 */       lui $t0, %hi(D_800466BC)
  /* 008FC4 800083C4 8D0866BC */        lw $t0, %lo(D_800466BC)($t0)
  /* 008FC8 800083C8 10000002 */         b .L800083D4
  /* 008FCC 800083CC AC6801BC */        sw $t0, 0x1bc($v1)
  .L800083D0:
  /* 008FD0 800083D0 AC6901BC */        sw $t1, 0x1bc($v1)
  .L800083D4:
  /* 008FD4 800083D4 8FA2003C */        lw $v0, 0x3c($sp)
  /* 008FD8 800083D8 2401FFFF */     addiu $at, $zero, -1
  /* 008FDC 800083DC 10410003 */       beq $v0, $at, .L800083EC
  /* 008FE0 800083E0 00000000 */       nop 
  /* 008FE4 800083E4 10000006 */         b .L80008400
  /* 008FE8 800083E8 00402825 */        or $a1, $v0, $zero
  .L800083EC:
  /* 008FEC 800083EC 3C028004 */       lui $v0, %hi(D_8003B870)
  /* 008FF0 800083F0 8C45B870 */        lw $a1, %lo(D_8003B870)($v0)
  /* 008FF4 800083F4 3C018004 */       lui $at, %hi(D_8003B870)
  /* 008FF8 800083F8 24AA0001 */     addiu $t2, $a1, 1
  /* 008FFC 800083FC AC2AB870 */        sw $t2, %lo(D_8003B870)($at)
  .L80008400:
  /* 009000 80008400 8C6C01BC */        lw $t4, 0x1bc($v1)
  /* 009004 80008404 8C6B01B8 */        lw $t3, 0x1b8($v1)
  /* 009008 80008408 AFA30028 */        sw $v1, 0x28($sp)
  /* 00900C 8000840C 000C68C2 */       srl $t5, $t4, 3
  /* 009010 80008410 000D70C0 */       sll $t6, $t5, 3
  /* 009014 80008414 016E7821 */      addu $t7, $t3, $t6
  /* 009018 80008418 AFAF0010 */        sw $t7, 0x10($sp)
  /* 00901C 8000841C AFB80014 */        sw $t8, 0x14($sp)
  /* 009020 80008420 8FA60034 */        lw $a2, 0x34($sp)
  /* 009024 80008424 0C00C788 */       jal osCreateThread
  /* 009028 80008428 8FA70030 */        lw $a3, 0x30($sp)
  /* 00902C 8000842C 8FA30028 */        lw $v1, 0x28($sp)
  /* 009030 80008430 3C09FEDC */       lui $t1, (0xFEDCBA98 >> 16) # 4275878552
  /* 009034 80008434 3C028004 */       lui $v0, %hi(D_8003B870)
  /* 009038 80008438 8C7901B8 */        lw $t9, 0x1b8($v1)
  /* 00903C 8000843C 3529BA98 */       ori $t1, $t1, (0xFEDCBA98 & 0xFFFF) # 4275878552
  /* 009040 80008440 24080000 */     addiu $t0, $zero, 0
  /* 009044 80008444 2442B870 */     addiu $v0, $v0, %lo(D_8003B870)
  /* 009048 80008448 AF280038 */        sw $t0, 0x38($t9)
  /* 00904C 8000844C AF29003C */        sw $t1, 0x3c($t9)
  /* 009050 80008450 8C4A0000 */        lw $t2, ($v0) # D_8003B870 + 0
  /* 009054 80008454 3C010131 */       lui $at, (0x1312D00 >> 16) # 20000000
  /* 009058 80008458 34212D00 */       ori $at, $at, (0x1312D00 & 0xFFFF) # 20000000
  /* 00905C 8000845C 0141082A */       slt $at, $t2, $at
  /* 009060 80008460 14200003 */      bnez $at, .L80008470
  /* 009064 80008464 3C0C0098 */       lui $t4, (0x989680 >> 16) # 10000000
  /* 009068 80008468 358C9680 */       ori $t4, $t4, (0x989680 & 0xFFFF) # 10000000
  /* 00906C 8000846C AC4C0000 */        sw $t4, ($v0) # D_8003B870 + 0
  .L80008470:
  /* 009070 80008470 0C001DA0 */       jal func_80007680
  /* 009074 80008474 02002025 */        or $a0, $s0, $zero
  /* 009078 80008478 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00907C 8000847C 02001025 */        or $v0, $s0, $zero
  /* 009080 80008480 8FB00020 */        lw $s0, 0x20($sp)
  /* 009084 80008484 03E00008 */        jr $ra
  /* 009088 80008488 27BD0030 */     addiu $sp, $sp, 0x30
