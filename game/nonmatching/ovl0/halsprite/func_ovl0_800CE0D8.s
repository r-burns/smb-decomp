.section .text
glabel func_ovl0_800CE0D8
  /* 049AB8 800CE0D8 3C02800D */       lui $v0, %hi(D_ovl0_800D6454)
  /* 049ABC 800CE0DC 24426454 */     addiu $v0, $v0, %lo(D_ovl0_800D6454)
  /* 049AC0 800CE0E0 8C430000 */        lw $v1, ($v0) # D_ovl0_800D6454 + 0
  /* 049AC4 800CE0E4 AFA40000 */        sw $a0, ($sp)
  /* 049AC8 800CE0E8 AFA50004 */        sw $a1, 4($sp)
  /* 049ACC 800CE0EC 30A5FFFF */      andi $a1, $a1, 0xffff
  /* 049AD0 800CE0F0 10600023 */      beqz $v1, .L800CE180
  /* 049AD4 800CE0F4 308400FF */      andi $a0, $a0, 0xff
  /* 049AD8 800CE0F8 8C6E0000 */        lw $t6, ($v1)
  /* 049ADC 800CE0FC 240F0001 */     addiu $t7, $zero, 1
  /* 049AE0 800CE100 3C18800D */       lui $t8, %hi(D_ovl0_800D5D5C)
  /* 049AE4 800CE104 AC4E0000 */        sw $t6, ($v0) # D_ovl0_800D6454 + 0
  /* 049AE8 800CE108 A46F002A */        sh $t7, 0x2a($v1)
  /* 049AEC 800CE10C 93185D5C */       lbu $t8, %lo(D_ovl0_800D5D5C)($t8)
  /* 049AF0 800CE110 44800000 */      mtc1 $zero, $f0
  /* 049AF4 800CE114 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 049AF8 800CE118 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  /* 049AFC 800CE11C A0640028 */        sb $a0, 0x28($v1)
  /* 049B00 800CE120 3C04800D */       lui $a0, %hi(D_ovl0_800D644C)
  /* 049B04 800CE124 A46500B8 */        sh $a1, 0xb8($v1)
  /* 049B08 800CE128 AC6000B4 */        sw $zero, 0xb4($v1)
  /* 049B0C 800CE12C 2484644C */     addiu $a0, $a0, %lo(D_ovl0_800D644C)
  /* 049B10 800CE130 A0780029 */        sb $t8, 0x29($v1)
  /* 049B14 800CE134 E460000C */      swc1 $f0, 0xc($v1)
  /* 049B18 800CE138 E4600008 */      swc1 $f0, 8($v1)
  /* 049B1C 800CE13C E4600004 */      swc1 $f0, 4($v1)
  /* 049B20 800CE140 E4600018 */      swc1 $f0, 0x18($v1)
  /* 049B24 800CE144 E4600014 */      swc1 $f0, 0x14($v1)
  /* 049B28 800CE148 E4600010 */      swc1 $f0, 0x10($v1)
  /* 049B2C 800CE14C E4620024 */      swc1 $f2, 0x24($v1)
  /* 049B30 800CE150 E4620020 */      swc1 $f2, 0x20($v1)
  /* 049B34 800CE154 E462001C */      swc1 $f2, 0x1c($v1)
  /* 049B38 800CE158 94990000 */       lhu $t9, ($a0) # D_ovl0_800D644C + 0
  /* 049B3C 800CE15C 3C05800D */       lui $a1, %hi(D_ovl0_800D6452)
  /* 049B40 800CE160 24A56452 */     addiu $a1, $a1, %lo(D_ovl0_800D6452)
  /* 049B44 800CE164 94A90000 */       lhu $t1, ($a1) # D_ovl0_800D6452 + 0
  /* 049B48 800CE168 27280001 */     addiu $t0, $t9, 1
  /* 049B4C 800CE16C 3102FFFF */      andi $v0, $t0, 0xffff
  /* 049B50 800CE170 0122082A */       slt $at, $t1, $v0
  /* 049B54 800CE174 10200002 */      beqz $at, .L800CE180
  /* 049B58 800CE178 A4880000 */        sh $t0, ($a0) # D_ovl0_800D644C + 0
  /* 049B5C 800CE17C A4A20000 */        sh $v0, ($a1) # D_ovl0_800D6452 + 0
  .L800CE180:
  /* 049B60 800CE180 03E00008 */        jr $ra
  /* 049B64 800CE184 00601025 */        or $v0, $v1, $zero

