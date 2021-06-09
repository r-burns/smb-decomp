.section .late_rodata

glabel D_8003DF78
  /* 3DB78 03EB78 8003DF78 */
  .word 0xfeaaaaaa # .float -1.1342745e38

glabel D_8003DF7C
  /* 3DB7C 03EB7C 8003DF7C */
  .word 0xfeaaaaaa # .float -1.1342745e38

.section .text
glabel func_8000E164
  /* 00ED64 8000E164 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00ED68 8000E168 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00ED6C 8000E16C AFB00018 */        sw $s0, 0x18($sp)
  /* 00ED70 8000E170 AFA40028 */        sw $a0, 0x28($sp)
  /* 00ED74 8000E174 AFA5002C */        sw $a1, 0x2c($sp)
  /* 00ED78 8000E178 00C08025 */        or $s0, $a2, $zero
  /* 00ED7C 8000E17C AFA70034 */        sw $a3, 0x34($sp)
  /* 00ED80 8000E180 93A50043 */       lbu $a1, 0x43($sp)
  /* 00ED84 8000E184 0C003802 */       jal func_8000E008
  /* 00ED88 8000E188 8FA40038 */        lw $a0, 0x38($sp)
  /* 00ED8C 8000E18C 8FA30028 */        lw $v1, 0x28($sp)
  /* 00ED90 8000E190 8FA6002C */        lw $a2, 0x2c($sp)
  /* 00ED94 8000E194 8FA70040 */        lw $a3, 0x40($sp)
  /* 00ED98 8000E198 1040001B */      beqz $v0, .L8000E208
  /* 00ED9C 8000E19C 00402025 */        or $a0, $v0, $zero
  /* 00EDA0 8000E1A0 904E0005 */       lbu $t6, 5($v0)
  /* 00EDA4 8000E1A4 51C00019 */      beql $t6, $zero, .L8000E20C
  /* 00EDA8 8000E1A8 24020005 */     addiu $v0, $zero, 5
  /* 00EDAC 8000E1AC 1460000B */      bnez $v1, .L8000E1DC
  /* 00EDB0 8000E1B0 3C018004 */       lui $at, %hi(D_8003DF78)
  /* 00EDB4 8000E1B4 C424DF78 */      lwc1 $f4, %lo(D_8003DF78)($at)
  /* 00EDB8 8000E1B8 C4C60074 */      lwc1 $f6, 0x74($a2)
  /* 00EDBC 8000E1BC 46062032 */    c.eq.s $f4, $f6
  /* 00EDC0 8000E1C0 00000000 */       nop 
  /* 00EDC4 8000E1C4 45010005 */      bc1t .L8000E1DC
  /* 00EDC8 8000E1C8 00000000 */       nop 
  /* 00EDCC 8000E1CC C448000C */      lwc1 $f8, 0xc($v0)
  /* 00EDD0 8000E1D0 C4CA0078 */      lwc1 $f10, 0x78($a2)
  /* 00EDD4 8000E1D4 460A4400 */     add.s $f16, $f8, $f10
  /* 00EDD8 8000E1D8 E450000C */      swc1 $f16, 0xc($v0)
  .L8000E1DC:
  /* 00EDDC 8000E1DC 0C0032E5 */       jal func_8000CB94
  /* 00EDE0 8000E1E0 AFA40024 */        sw $a0, 0x24($sp)
  /* 00EDE4 8000E1E4 E6000000 */      swc1 $f0, ($s0)
  /* 00EDE8 8000E1E8 8FAF0044 */        lw $t7, 0x44($sp)
  /* 00EDEC 8000E1EC 51E00089 */      beql $t7, $zero, .L8000E414
  /* 00EDF0 8000E1F0 00001025 */        or $v0, $zero, $zero
  /* 00EDF4 8000E1F4 0C003310 */       jal func_8000CC40
  /* 00EDF8 8000E1F8 8FA40024 */        lw $a0, 0x24($sp)
  /* 00EDFC 8000E1FC 8FB80034 */        lw $t8, 0x34($sp)
  /* 00EE00 8000E200 10000083 */         b .L8000E410
  /* 00EE04 8000E204 E7000000 */      swc1 $f0, ($t8)
  .L8000E208:
  /* 00EE08 8000E208 24020005 */     addiu $v0, $zero, 5
  .L8000E20C:
  /* 00EE0C 8000E20C 10E20005 */       beq $a3, $v0, .L8000E224
  /* 00EE10 8000E210 24010006 */     addiu $at, $zero, 6
  /* 00EE14 8000E214 10E10003 */       beq $a3, $at, .L8000E224
  /* 00EE18 8000E218 24010007 */     addiu $at, $zero, 7
  /* 00EE1C 8000E21C 14E1006E */       bne $a3, $at, .L8000E3D8
  /* 00EE20 8000E220 00000000 */       nop 
  .L8000E224:
  /* 00EE24 8000E224 8FB9004C */        lw $t9, 0x4c($sp)
  /* 00EE28 8000E228 8FA40038 */        lw $a0, 0x38($sp)
  /* 00EE2C 8000E22C 8F280000 */        lw $t0, ($t9)
  /* 00EE30 8000E230 11000014 */      beqz $t0, .L8000E284
  /* 00EE34 8000E234 00000000 */       nop 
  /* 00EE38 8000E238 10E20009 */       beq $a3, $v0, .L8000E260
  /* 00EE3C 8000E23C 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EE40 8000E240 24010006 */     addiu $at, $zero, 6
  /* 00EE44 8000E244 10E10009 */       beq $a3, $at, .L8000E26C
  /* 00EE48 8000E248 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EE4C 8000E24C 24010007 */     addiu $at, $zero, 7
  /* 00EE50 8000E250 10E10009 */       beq $a3, $at, .L8000E278
  /* 00EE54 8000E254 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EE58 8000E258 1000006E */         b .L8000E414
  /* 00EE5C 8000E25C 00001025 */        or $v0, $zero, $zero
  .L8000E260:
  /* 00EE60 8000E260 C4920000 */      lwc1 $f18, ($a0)
  /* 00EE64 8000E264 1000006A */         b .L8000E410
  /* 00EE68 8000E268 E6120000 */      swc1 $f18, ($s0)
  .L8000E26C:
  /* 00EE6C 8000E26C C4840004 */      lwc1 $f4, 4($a0)
  /* 00EE70 8000E270 10000067 */         b .L8000E410
  /* 00EE74 8000E274 E6040000 */      swc1 $f4, ($s0)
  .L8000E278:
  /* 00EE78 8000E278 C4860008 */      lwc1 $f6, 8($a0)
  /* 00EE7C 8000E27C 10000064 */         b .L8000E410
  /* 00EE80 8000E280 E6060000 */      swc1 $f6, ($s0)
  .L8000E284:
  /* 00EE84 8000E284 0C003802 */       jal func_8000E008
  /* 00EE88 8000E288 24050004 */     addiu $a1, $zero, 4
  /* 00EE8C 8000E28C 8FA30028 */        lw $v1, 0x28($sp)
  /* 00EE90 8000E290 8FA6002C */        lw $a2, 0x2c($sp)
  /* 00EE94 8000E294 8FA70040 */        lw $a3, 0x40($sp)
  /* 00EE98 8000E298 10400040 */      beqz $v0, .L8000E39C
  /* 00EE9C 8000E29C 00402025 */        or $a0, $v0, $zero
  /* 00EEA0 8000E2A0 90490005 */       lbu $t1, 5($v0)
  /* 00EEA4 8000E2A4 1120003D */      beqz $t1, .L8000E39C
  /* 00EEA8 8000E2A8 00000000 */       nop 
  /* 00EEAC 8000E2AC 1460000B */      bnez $v1, .L8000E2DC
  /* 00EEB0 8000E2B0 3C018004 */       lui $at, %hi(D_8003DF7C)
  /* 00EEB4 8000E2B4 C428DF7C */      lwc1 $f8, %lo(D_8003DF7C)($at)
  /* 00EEB8 8000E2B8 C4CA0074 */      lwc1 $f10, 0x74($a2)
  /* 00EEBC 8000E2BC 460A4032 */    c.eq.s $f8, $f10
  /* 00EEC0 8000E2C0 00000000 */       nop 
  /* 00EEC4 8000E2C4 45010005 */      bc1t .L8000E2DC
  /* 00EEC8 8000E2C8 00000000 */       nop 
  /* 00EECC 8000E2CC C450000C */      lwc1 $f16, 0xc($v0)
  /* 00EED0 8000E2D0 C4D20078 */      lwc1 $f18, 0x78($a2)
  /* 00EED4 8000E2D4 46128100 */     add.s $f4, $f16, $f18
  /* 00EED8 8000E2D8 E444000C */      swc1 $f4, 0xc($v0)
  .L8000E2DC:
  /* 00EEDC 8000E2DC 0C0032E5 */       jal func_8000CB94
  /* 00EEE0 8000E2E0 AFA40024 */        sw $a0, 0x24($sp)
  /* 00EEE4 8000E2E4 44801000 */      mtc1 $zero, $f2
  /* 00EEE8 8000E2E8 E6000000 */      swc1 $f0, ($s0)
  /* 00EEEC 8000E2EC 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00EEF0 8000E2F0 4602003C */    c.lt.s $f0, $f2
  /* 00EEF4 8000E2F4 00000000 */       nop 
  /* 00EEF8 8000E2F8 45020005 */     bc1fl .L8000E310
  /* 00EEFC 8000E2FC 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  /* 00EF00 8000E300 E6020000 */      swc1 $f2, ($s0)
  /* 00EF04 8000E304 10000009 */         b .L8000E32C
  /* 00EF08 8000E308 C6000000 */      lwc1 $f0, ($s0)
  /* 00EF0C 8000E30C 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  .L8000E310:
  /* 00EF10 8000E310 C6000000 */      lwc1 $f0, ($s0)
  /* 00EF14 8000E314 4600103C */    c.lt.s $f2, $f0
  /* 00EF18 8000E318 00000000 */       nop 
  /* 00EF1C 8000E31C 45020004 */     bc1fl .L8000E330
  /* 00EF20 8000E320 8FAA0024 */        lw $t2, 0x24($sp)
  /* 00EF24 8000E324 E6020000 */      swc1 $f2, ($s0)
  /* 00EF28 8000E328 C6000000 */      lwc1 $f0, ($s0)
  .L8000E32C:
  /* 00EF2C 8000E32C 8FAA0024 */        lw $t2, 0x24($sp)
  .L8000E330:
  /* 00EF30 8000E330 44060000 */      mfc1 $a2, $f0
  /* 00EF34 8000E334 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EF38 8000E338 0C00794C */       jal func_8001E530
  /* 00EF3C 8000E33C 8D450020 */        lw $a1, 0x20($t2)
  /* 00EF40 8000E340 8FA70040 */        lw $a3, 0x40($sp)
  /* 00EF44 8000E344 24010005 */     addiu $at, $zero, 5
  /* 00EF48 8000E348 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EF4C 8000E34C 10E10007 */       beq $a3, $at, .L8000E36C
  /* 00EF50 8000E350 24010006 */     addiu $at, $zero, 6
  /* 00EF54 8000E354 10E10008 */       beq $a3, $at, .L8000E378
  /* 00EF58 8000E358 24010007 */     addiu $at, $zero, 7
  /* 00EF5C 8000E35C 50E1000A */      beql $a3, $at, .L8000E388
  /* 00EF60 8000E360 C48A0008 */      lwc1 $f10, 8($a0)
  /* 00EF64 8000E364 1000000A */         b .L8000E390
  /* 00EF68 8000E368 8FAC004C */        lw $t4, 0x4c($sp)
  .L8000E36C:
  /* 00EF6C 8000E36C C4860000 */      lwc1 $f6, ($a0)
  /* 00EF70 8000E370 10000006 */         b .L8000E38C
  /* 00EF74 8000E374 E6060000 */      swc1 $f6, ($s0)
  .L8000E378:
  /* 00EF78 8000E378 C4880004 */      lwc1 $f8, 4($a0)
  /* 00EF7C 8000E37C 10000003 */         b .L8000E38C
  /* 00EF80 8000E380 E6080000 */      swc1 $f8, ($s0)
  /* 00EF84 8000E384 C48A0008 */      lwc1 $f10, 8($a0)
  .L8000E388:
  /* 00EF88 8000E388 E60A0000 */      swc1 $f10, ($s0)
  .L8000E38C:
  /* 00EF8C 8000E38C 8FAC004C */        lw $t4, 0x4c($sp)
  .L8000E390:
  /* 00EF90 8000E390 240B0001 */     addiu $t3, $zero, 1
  /* 00EF94 8000E394 1000001E */         b .L8000E410
  /* 00EF98 8000E398 AD8B0000 */        sw $t3, ($t4)
  .L8000E39C:
  /* 00EF9C 8000E39C 1460000A */      bnez $v1, .L8000E3C8
  /* 00EFA0 8000E3A0 00C02025 */        or $a0, $a2, $zero
  /* 00EFA4 8000E3A4 8FA4003C */        lw $a0, 0x3c($sp)
  /* 00EFA8 8000E3A8 14800003 */      bnez $a0, .L8000E3B8
  /* 00EFAC 8000E3AC 00000000 */       nop 
  /* 00EFB0 8000E3B0 10000018 */         b .L8000E414
  /* 00EFB4 8000E3B4 24020001 */     addiu $v0, $zero, 1
  .L8000E3B8:
  /* 00EFB8 8000E3B8 0C00383D */       jal func_8000E0F4
  /* 00EFBC 8000E3BC 00E02825 */        or $a1, $a3, $zero
  /* 00EFC0 8000E3C0 10000013 */         b .L8000E410
  /* 00EFC4 8000E3C4 E6000000 */      swc1 $f0, ($s0)
  .L8000E3C8:
  /* 00EFC8 8000E3C8 0C003821 */       jal func_8000E084
  /* 00EFCC 8000E3CC 00E02825 */        or $a1, $a3, $zero
  /* 00EFD0 8000E3D0 1000000F */         b .L8000E410
  /* 00EFD4 8000E3D4 E6000000 */      swc1 $f0, ($s0)
  .L8000E3D8:
  /* 00EFD8 8000E3D8 1460000A */      bnez $v1, .L8000E404
  /* 00EFDC 8000E3DC 00C02025 */        or $a0, $a2, $zero
  /* 00EFE0 8000E3E0 8FA4003C */        lw $a0, 0x3c($sp)
  /* 00EFE4 8000E3E4 14800003 */      bnez $a0, .L8000E3F4
  /* 00EFE8 8000E3E8 00000000 */       nop 
  /* 00EFEC 8000E3EC 10000009 */         b .L8000E414
  /* 00EFF0 8000E3F0 24020001 */     addiu $v0, $zero, 1
  .L8000E3F4:
  /* 00EFF4 8000E3F4 0C00383D */       jal func_8000E0F4
  /* 00EFF8 8000E3F8 00E02825 */        or $a1, $a3, $zero
  /* 00EFFC 8000E3FC 10000004 */         b .L8000E410
  /* 00F000 8000E400 E6000000 */      swc1 $f0, ($s0)
  .L8000E404:
  /* 00F004 8000E404 0C003821 */       jal func_8000E084
  /* 00F008 8000E408 00E02825 */        or $a1, $a3, $zero
  /* 00F00C 8000E40C E6000000 */      swc1 $f0, ($s0)
  .L8000E410:
  /* 00F010 8000E410 00001025 */        or $v0, $zero, $zero
  .L8000E414:
  /* 00F014 8000E414 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00F018 8000E418 8FB00018 */        lw $s0, 0x18($sp)
  /* 00F01C 8000E41C 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00F020 8000E420 03E00008 */        jr $ra
  /* 00F024 8000E424 00000000 */       nop 

