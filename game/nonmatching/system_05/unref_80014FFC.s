.section .text
glabel unref_80014FFC
  /* 015BFC 80014FFC 27BDFFB0 */     addiu $sp, $sp, -0x50
  /* 015C00 80015000 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 015C04 80015004 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 015C08 80015008 AFBF002C */        sw $ra, 0x2c($sp)
  /* 015C0C 8001500C AFB40028 */        sw $s4, 0x28($sp)
  /* 015C10 80015010 AFB30024 */        sw $s3, 0x24($sp)
  /* 015C14 80015014 AFB20020 */        sw $s2, 0x20($sp)
  /* 015C18 80015018 AFB1001C */        sw $s1, 0x1c($sp)
  /* 015C1C 8001501C AFB00018 */        sw $s0, 0x18($sp)
  /* 015C20 80015020 8C930074 */        lw $s3, 0x74($a0)
  /* 015C24 80015024 3C018004 */       lui $at, %hi(D_80046FA4)
  /* 015C28 80015028 E4246FA4 */      swc1 $f4, %lo(D_80046FA4)($at)
  /* 015C2C 8001502C 926E0054 */       lbu $t6, 0x54($s3)
  /* 015C30 80015030 0000A025 */        or $s4, $zero, $zero
  /* 015C34 80015034 31CF0002 */      andi $t7, $t6, 2
  /* 015C38 80015038 55E000C0 */      bnel $t7, $zero, .L8001533C
  /* 015C3C 8001503C 8FBF002C */        lw $ra, 0x2c($sp)
  /* 015C40 80015040 8E700050 */        lw $s0, 0x50($s3)
  /* 015C44 80015044 3C118004 */       lui $s1, %hi(D_800472A8)
  /* 015C48 80015048 263172A8 */     addiu $s1, $s1, %lo(D_800472A8)
  /* 015C4C 8001504C 120000BA */      beqz $s0, .L80015338
  /* 015C50 80015050 02602025 */        or $a0, $s3, $zero
  /* 015C54 80015054 0C0051E6 */       jal func_80014798
  /* 015C58 80015058 AE200000 */        sw $zero, ($s1) # D_800472A8 + 0
  /* 015C5C 8001505C C6060000 */      lwc1 $f6, ($s0)
  /* 015C60 80015060 3C128004 */       lui $s2, %hi(D_800470B0)
  /* 015C64 80015064 265270B0 */     addiu $s2, $s2, %lo(D_800470B0)
  /* 015C68 80015068 4606003C */    c.lt.s $f0, $f6
  /* 015C6C 8001506C 46000086 */     mov.s $f2, $f0
  /* 015C70 80015070 02402025 */        or $a0, $s2, $zero
  /* 015C74 80015074 4502000B */     bc1fl .L800150A4
  /* 015C78 80015078 8E060004 */        lw $a2, 4($s0)
  /* 015C7C 8001507C 8E380000 */        lw $t8, ($s1) # D_800472A8 + 0
  .L80015080:
  /* 015C80 80015080 26100008 */     addiu $s0, $s0, 8
  /* 015C84 80015084 27190001 */     addiu $t9, $t8, 1
  /* 015C88 80015088 AE390000 */        sw $t9, ($s1) # D_800472A8 + 0
  /* 015C8C 8001508C C6080000 */      lwc1 $f8, ($s0)
  /* 015C90 80015090 4608103C */    c.lt.s $f2, $f8
  /* 015C94 80015094 00000000 */       nop 
  /* 015C98 80015098 4503FFF9 */     bc1tl .L80015080
  /* 015C9C 8001509C 8E380000 */        lw $t8, ($s1) # D_800472A8 + 0
  /* 015CA0 800150A0 8E060004 */        lw $a2, 4($s0)
  .L800150A4:
  /* 015CA4 800150A4 8E4D0000 */        lw $t5, ($s2) # D_800470B0 + 0
  /* 015CA8 800150A8 02602825 */        or $a1, $s3, $zero
  /* 015CAC 800150AC AFA60034 */        sw $a2, 0x34($sp)
  /* 015CB0 800150B0 0C00435C */       jal func_80010D70
  /* 015CB4 800150B4 AFAD0030 */        sw $t5, 0x30($sp)
  /* 015CB8 800150B8 8FA60034 */        lw $a2, 0x34($sp)
  /* 015CBC 800150BC 00405825 */        or $t3, $v0, $zero
  /* 015CC0 800150C0 50C00057 */      beql $a2, $zero, .L80015220
  /* 015CC4 800150C4 8E640010 */        lw $a0, 0x10($s3)
  /* 015CC8 800150C8 926E0054 */       lbu $t6, 0x54($s3)
  /* 015CCC 800150CC 31CF0001 */      andi $t7, $t6, 1
  /* 015CD0 800150D0 55E00053 */      bnel $t7, $zero, .L80015220
  /* 015CD4 800150D4 8E640010 */        lw $a0, 0x10($s3)
  /* 015CD8 800150D8 8CC20000 */        lw $v0, ($a2)
  /* 015CDC 800150DC 24010004 */     addiu $at, $zero, 4
  /* 015CE0 800150E0 3C118004 */       lui $s1, %hi(D_800465B0)
  /* 015CE4 800150E4 1041004D */       beq $v0, $at, .L8001521C
  /* 015CE8 800150E8 263165B0 */     addiu $s1, $s1, %lo(D_800465B0)
  /* 015CEC 800150EC 3C078004 */       lui $a3, %hi(D_800470B8)
  /* 015CF0 800150F0 24E770B8 */     addiu $a3, $a3, %lo(D_800470B8)
  /* 015CF4 800150F4 8CD80004 */        lw $t8, 4($a2)
  .L800150F8:
  /* 015CF8 800150F8 00028080 */       sll $s0, $v0, 2
  /* 015CFC 800150FC 00F0C821 */      addu $t9, $a3, $s0
  /* 015D00 80015100 53000042 */      beql $t8, $zero, .L8001520C
  /* 015D04 80015104 8CC20008 */        lw $v0, 8($a2)
  /* 015D08 80015108 8F240000 */        lw $a0, ($t9)
  /* 015D0C 8001510C 8E4D0000 */        lw $t5, ($s2) # D_800470B0 + 0
  /* 015D10 80015110 11A40019 */       beq $t5, $a0, .L80015178
  /* 015D14 80015114 02307021 */      addu $t6, $s1, $s0
  .L80015118:
  /* 015D18 80015118 8DCF0000 */        lw $t7, ($t6)
  /* 015D1C 8001511C 8C990000 */        lw $t9, ($a0)
  /* 015D20 80015120 ADF90000 */        sw $t9, ($t7)
  /* 015D24 80015124 8C980004 */        lw $t8, 4($a0)
  /* 015D28 80015128 ADF80004 */        sw $t8, 4($t7)
  /* 015D2C 8001512C 8CCD0000 */        lw $t5, ($a2)
  /* 015D30 80015130 000D7080 */       sll $t6, $t5, 2
  /* 015D34 80015134 022E1821 */      addu $v1, $s1, $t6
  /* 015D38 80015138 8C6F0000 */        lw $t7, ($v1)
  /* 015D3C 8001513C 25F80008 */     addiu $t8, $t7, 8
  /* 015D40 80015140 AC780000 */        sw $t8, ($v1)
  /* 015D44 80015144 8CD90000 */        lw $t9, ($a2)
  /* 015D48 80015148 00196880 */       sll $t5, $t9, 2
  /* 015D4C 8001514C 00ED1021 */      addu $v0, $a3, $t5
  /* 015D50 80015150 8C4E0000 */        lw $t6, ($v0)
  /* 015D54 80015154 8E590000 */        lw $t9, ($s2) # D_800470B0 + 0
  /* 015D58 80015158 25CF0008 */     addiu $t7, $t6, 8
  /* 015D5C 8001515C AC4F0000 */        sw $t7, ($v0)
  /* 015D60 80015160 8CD00000 */        lw $s0, ($a2)
  /* 015D64 80015164 00108080 */       sll $s0, $s0, 2
  /* 015D68 80015168 00F0C021 */      addu $t8, $a3, $s0
  /* 015D6C 8001516C 8F040000 */        lw $a0, ($t8)
  /* 015D70 80015170 5724FFE9 */      bnel $t9, $a0, .L80015118
  /* 015D74 80015174 02307021 */      addu $t6, $s1, $s0
  .L80015178:
  /* 015D78 80015178 8E6D0080 */        lw $t5, 0x80($s3)
  /* 015D7C 8001517C 51A0001B */      beql $t5, $zero, .L800151EC
  /* 015D80 80015180 02301821 */      addu $v1, $s1, $s0
  /* 015D84 80015184 1680000F */      bnez $s4, .L800151C4
  /* 015D88 80015188 02301821 */      addu $v1, $s1, $s0
  /* 015D8C 8001518C 3C148004 */       lui $s4, %hi(D_800465D8 + 12)
  /* 015D90 80015190 8E9465E4 */        lw $s4, %lo(D_800465D8 + 12)($s4)
  /* 015D94 80015194 02602025 */        or $a0, $s3, $zero
  /* 015D98 80015198 02302821 */      addu $a1, $s1, $s0
  /* 015D9C 8001519C AFA60034 */        sw $a2, 0x34($sp)
  /* 015DA0 800151A0 0C004B64 */       jal func_80012D90
  /* 015DA4 800151A4 AFAB0044 */        sw $t3, 0x44($sp)
  /* 015DA8 800151A8 8FA60034 */        lw $a2, 0x34($sp)
  /* 015DAC 800151AC 3C078004 */       lui $a3, %hi(D_800470B8)
  /* 015DB0 800151B0 24E770B8 */     addiu $a3, $a3, %lo(D_800470B8)
  /* 015DB4 800151B4 8CD00000 */        lw $s0, ($a2)
  /* 015DB8 800151B8 8FAB0044 */        lw $t3, 0x44($sp)
  /* 015DBC 800151BC 1000000A */         b .L800151E8
  /* 015DC0 800151C0 00108080 */       sll $s0, $s0, 2
  .L800151C4:
  /* 015DC4 800151C4 8C620000 */        lw $v0, ($v1)
  /* 015DC8 800151C8 3C0FDB06 */       lui $t7, (0xDB060038 >> 16) # 3674603576
  /* 015DCC 800151CC 35EF0038 */       ori $t7, $t7, (0xDB060038 & 0xFFFF) # 3674603576
  /* 015DD0 800151D0 244E0008 */     addiu $t6, $v0, 8
  /* 015DD4 800151D4 AC6E0000 */        sw $t6, ($v1)
  /* 015DD8 800151D8 AC540004 */        sw $s4, 4($v0)
  /* 015DDC 800151DC AC4F0000 */        sw $t7, ($v0)
  /* 015DE0 800151E0 8CD00000 */        lw $s0, ($a2)
  /* 015DE4 800151E4 00108080 */       sll $s0, $s0, 2
  .L800151E8:
  /* 015DE8 800151E8 02301821 */      addu $v1, $s1, $s0
  .L800151EC:
  /* 015DEC 800151EC 8C620000 */        lw $v0, ($v1)
  /* 015DF0 800151F0 3C19DE00 */       lui $t9, 0xde00
  /* 015DF4 800151F4 24580008 */     addiu $t8, $v0, 8
  /* 015DF8 800151F8 AC780000 */        sw $t8, ($v1)
  /* 015DFC 800151FC AC590000 */        sw $t9, ($v0)
  /* 015E00 80015200 8CCD0004 */        lw $t5, 4($a2)
  /* 015E04 80015204 AC4D0004 */        sw $t5, 4($v0)
  /* 015E08 80015208 8CC20008 */        lw $v0, 8($a2)
  .L8001520C:
  /* 015E0C 8001520C 24010004 */     addiu $at, $zero, 4
  /* 015E10 80015210 24C60008 */     addiu $a2, $a2, 8
  /* 015E14 80015214 5441FFB8 */      bnel $v0, $at, .L800150F8
  /* 015E18 80015218 8CD80004 */        lw $t8, 4($a2)
  .L8001521C:
  /* 015E1C 8001521C 8E640010 */        lw $a0, 0x10($s3)
  .L80015220:
  /* 015E20 80015220 3C118004 */       lui $s1, %hi(D_800465B0)
  /* 015E24 80015224 263165B0 */     addiu $s1, $s1, %lo(D_800465B0)
  /* 015E28 80015228 50800005 */      beql $a0, $zero, .L80015240
  /* 015E2C 8001522C 8FAE0030 */        lw $t6, 0x30($sp)
  /* 015E30 80015230 0C005334 */       jal func_80014CD0
  /* 015E34 80015234 AFAB0044 */        sw $t3, 0x44($sp)
  /* 015E38 80015238 8FAB0044 */        lw $t3, 0x44($sp)
  /* 015E3C 8001523C 8FAE0030 */        lw $t6, 0x30($sp)
  .L80015240:
  /* 015E40 80015240 3C068004 */       lui $a2, %hi(D_800470B8)
  /* 015E44 80015244 3C0C8004 */       lui $t4, %hi(D_800470C8)
  /* 015E48 80015248 3C09D838 */       lui $t1, (0xD8380002 >> 16) # 3627548674
  /* 015E4C 8001524C 35290002 */       ori $t1, $t1, (0xD8380002 & 0xFFFF) # 3627548674
  /* 015E50 80015250 258C70C8 */     addiu $t4, $t4, %lo(D_800470C8)
  /* 015E54 80015254 24C670B8 */     addiu $a2, $a2, %lo(D_800470B8)
  /* 015E58 80015258 00003825 */        or $a3, $zero, $zero
  /* 015E5C 8001525C 240A0040 */     addiu $t2, $zero, 0x40
  /* 015E60 80015260 24080001 */     addiu $t0, $zero, 1
  /* 015E64 80015264 AE4E0000 */        sw $t6, ($s2) # D_800470B0 + 0
  .L80015268:
  /* 015E68 80015268 8E450000 */        lw $a1, ($s2) # D_800470B0 + 0
  /* 015E6C 8001526C 8CCF0000 */        lw $t7, ($a2) # D_800470B8 + 0
  /* 015E70 80015270 00AF082B */      sltu $at, $a1, $t7
  /* 015E74 80015274 50200011 */      beql $at, $zero, .L800152BC
  /* 015E78 80015278 8CCE0004 */        lw $t6, 4($a2) # D_800470B8 + 4
  /* 015E7C 8001527C 1160000E */      beqz $t3, .L800152B8
  /* 015E80 80015280 ACC50000 */        sw $a1, ($a2) # D_800470B8 + 0
  /* 015E84 80015284 8E780014 */        lw $t8, 0x14($s3)
  /* 015E88 80015288 02271821 */      addu $v1, $s1, $a3
  /* 015E8C 8001528C 51180005 */      beql $t0, $t8, .L800152A4
  /* 015E90 80015290 8C640000 */        lw $a0, ($v1)
  /* 015E94 80015294 8E790008 */        lw $t9, 8($s3)
  /* 015E98 80015298 53200008 */      beql $t9, $zero, .L800152BC
  /* 015E9C 8001529C 8CCE0004 */        lw $t6, 4($a2) # D_800470B8 + 4
  /* 015EA0 800152A0 8C640000 */        lw $a0, ($v1)
  .L800152A4:
  /* 015EA4 800152A4 248D0008 */     addiu $t5, $a0, 8
  /* 015EA8 800152A8 AC6D0000 */        sw $t5, ($v1)
  /* 015EAC 800152AC AC8A0004 */        sw $t2, 4($a0)
  /* 015EB0 800152B0 AC890000 */        sw $t1, ($a0)
  /* 015EB4 800152B4 8E450000 */        lw $a1, ($s2) # D_800470B0 + 0
  .L800152B8:
  /* 015EB8 800152B8 8CCE0004 */        lw $t6, 4($a2) # D_800470B8 + 4
  .L800152BC:
  /* 015EBC 800152BC 00AE082B */      sltu $at, $a1, $t6
  /* 015EC0 800152C0 50200010 */      beql $at, $zero, .L80015304
  /* 015EC4 800152C4 24C60008 */     addiu $a2, $a2, 8
  /* 015EC8 800152C8 1160000D */      beqz $t3, .L80015300
  /* 015ECC 800152CC ACC50004 */        sw $a1, 4($a2) # D_800470B8 + 4
  /* 015ED0 800152D0 8E6F0014 */        lw $t7, 0x14($s3)
  /* 015ED4 800152D4 02271821 */      addu $v1, $s1, $a3
  /* 015ED8 800152D8 510F0005 */      beql $t0, $t7, .L800152F0
  /* 015EDC 800152DC 8C640004 */        lw $a0, 4($v1)
  /* 015EE0 800152E0 8E780008 */        lw $t8, 8($s3)
  /* 015EE4 800152E4 53000007 */      beql $t8, $zero, .L80015304
  /* 015EE8 800152E8 24C60008 */     addiu $a2, $a2, 8
  /* 015EEC 800152EC 8C640004 */        lw $a0, 4($v1)
  .L800152F0:
  /* 015EF0 800152F0 24990008 */     addiu $t9, $a0, 8
  /* 015EF4 800152F4 AC790004 */        sw $t9, 4($v1)
  /* 015EF8 800152F8 AC8A0004 */        sw $t2, 4($a0)
  /* 015EFC 800152FC AC890000 */        sw $t1, ($a0)
  .L80015300:
  /* 015F00 80015300 24C60008 */     addiu $a2, $a2, 8
  .L80015304:
  /* 015F04 80015304 14CCFFD8 */       bne $a2, $t4, .L80015268
  /* 015F08 80015308 24E70008 */     addiu $a3, $a3, 8
  /* 015F0C 8001530C 8E6D000C */        lw $t5, 0xc($s3)
  /* 015F10 80015310 55A0000A */      bnel $t5, $zero, .L8001533C
  /* 015F14 80015314 8FBF002C */        lw $ra, 0x2c($sp)
  /* 015F18 80015318 8E700008 */        lw $s0, 8($s3)
  /* 015F1C 8001531C 52000007 */      beql $s0, $zero, .L8001533C
  /* 015F20 80015320 8FBF002C */        lw $ra, 0x2c($sp)
  .L80015324:
  /* 015F24 80015324 0C005334 */       jal func_80014CD0
  /* 015F28 80015328 02002025 */        or $a0, $s0, $zero
  /* 015F2C 8001532C 8E100008 */        lw $s0, 8($s0)
  /* 015F30 80015330 1600FFFC */      bnez $s0, .L80015324
  /* 015F34 80015334 00000000 */       nop 
  .L80015338:
  /* 015F38 80015338 8FBF002C */        lw $ra, 0x2c($sp)
  .L8001533C:
  /* 015F3C 8001533C 8FB00018 */        lw $s0, 0x18($sp)
  /* 015F40 80015340 8FB1001C */        lw $s1, 0x1c($sp)
  /* 015F44 80015344 8FB20020 */        lw $s2, 0x20($sp)
  /* 015F48 80015348 8FB30024 */        lw $s3, 0x24($sp)
  /* 015F4C 8001534C 8FB40028 */        lw $s4, 0x28($sp)
  /* 015F50 80015350 03E00008 */        jr $ra
  /* 015F54 80015354 27BD0050 */     addiu $sp, $sp, 0x50

