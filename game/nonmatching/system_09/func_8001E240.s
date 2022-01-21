.section .text
glabel func_8001E240
  /* 01EE40 8001E240 27BDFFB0 */     addiu $sp, $sp, -0x50
  /* 01EE44 8001E244 E7AC0050 */      swc1 $f12, 0x50($sp)
  /* 01EE48 8001E248 E7AE0054 */      swc1 $f14, 0x54($sp)
  /* 01EE4C 8001E24C C7A40054 */      lwc1 $f4, 0x54($sp)
  /* 01EE50 8001E250 C7A60050 */      lwc1 $f6, 0x50($sp)
  /* 01EE54 8001E254 3C014100 */       lui $at, (0x41000000 >> 16) # 8.0
  /* 01EE58 8001E258 44815000 */      mtc1 $at, $f10 # 8.0 to cop1
  /* 01EE5C 8001E25C 46062201 */     sub.s $f8, $f4, $f6
  /* 01EE60 8001E260 F7B80028 */      sdc1 $f24, 0x28($sp)
  /* 01EE64 8001E264 F7BA0030 */      sdc1 $f26, 0x30($sp)
  /* 01EE68 8001E268 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 01EE6C 8001E26C 460A4603 */     div.s $f24, $f8, $f10
  /* 01EE70 8001E270 3C014080 */       lui $at, (0x40800000 >> 16) # 4.0
  /* 01EE74 8001E274 AFB20040 */        sw $s2, 0x40($sp)
  /* 01EE78 8001E278 AFB1003C */        sw $s1, 0x3c($sp)
  /* 01EE7C 8001E27C AFB00038 */        sw $s0, 0x38($sp)
  /* 01EE80 8001E280 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 01EE84 8001E284 4480B000 */      mtc1 $zero, $f22
  /* 01EE88 8001E288 4481D000 */      mtc1 $at, $f26 # 4.0 to cop1
  /* 01EE8C 8001E28C 00C08825 */        or $s1, $a2, $zero
  /* 01EE90 8001E290 AFBF0044 */        sw $ra, 0x44($sp)
  /* 01EE94 8001E294 24100002 */     addiu $s0, $zero, 2
  /* 01EE98 8001E298 24120009 */     addiu $s2, $zero, 9
  /* 01EE9C 8001E29C E7B8004C */      swc1 $f24, 0x4c($sp)
  /* 01EEA0 8001E2A0 46183500 */     add.s $f20, $f6, $f24
  .L8001E2A4:
  /* 01EEA4 8001E2A4 320E0001 */      andi $t6, $s0, 1
  /* 01EEA8 8001E2A8 15C00007 */      bnez $t6, .L8001E2C8
  /* 01EEAC 8001E2AC 02202825 */        or $a1, $s1, $zero
  /* 01EEB0 8001E2B0 4600A306 */     mov.s $f12, $f20
  /* 01EEB4 8001E2B4 0C00786A */       jal func_8001E1A8
  /* 01EEB8 8001E2B8 02202825 */        or $a1, $s1, $zero
  /* 01EEBC 8001E2BC 4600D402 */     mul.s $f16, $f26, $f0
  /* 01EEC0 8001E2C0 10000005 */         b .L8001E2D8
  /* 01EEC4 8001E2C4 4610B580 */     add.s $f22, $f22, $f16
  .L8001E2C8:
  /* 01EEC8 8001E2C8 0C00786A */       jal func_8001E1A8
  /* 01EECC 8001E2CC 4600A306 */     mov.s $f12, $f20
  /* 01EED0 8001E2D0 46000480 */     add.s $f18, $f0, $f0
  /* 01EED4 8001E2D4 4612B580 */     add.s $f22, $f22, $f18
  .L8001E2D8:
  /* 01EED8 8001E2D8 26100001 */     addiu $s0, $s0, 1
  /* 01EEDC 8001E2DC 1612FFF1 */       bne $s0, $s2, .L8001E2A4
  /* 01EEE0 8001E2E0 4618A500 */     add.s $f20, $f20, $f24
  /* 01EEE4 8001E2E4 C7AC0050 */      lwc1 $f12, 0x50($sp)
  /* 01EEE8 8001E2E8 0C00786A */       jal func_8001E1A8
  /* 01EEEC 8001E2EC 02202825 */        or $a1, $s1, $zero
  /* 01EEF0 8001E2F0 46000506 */     mov.s $f20, $f0
  /* 01EEF4 8001E2F4 C7AC0054 */      lwc1 $f12, 0x54($sp)
  /* 01EEF8 8001E2F8 0C00786A */       jal func_8001E1A8
  /* 01EEFC 8001E2FC 02202825 */        or $a1, $s1, $zero
  /* 01EF00 8001E300 4616A100 */     add.s $f4, $f20, $f22
  /* 01EF04 8001E304 C7AA004C */      lwc1 $f10, 0x4c($sp)
  /* 01EF08 8001E308 8FBF0044 */        lw $ra, 0x44($sp)
  /* 01EF0C 8001E30C 3C014040 */       lui $at, (0x40400000 >> 16) # 3.0
  /* 01EF10 8001E310 46040200 */     add.s $f8, $f0, $f4
  /* 01EF14 8001E314 44818000 */      mtc1 $at, $f16 # 3.0 to cop1
  /* 01EF18 8001E318 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 01EF1C 8001E31C D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 01EF20 8001E320 460A4182 */     mul.s $f6, $f8, $f10
  /* 01EF24 8001E324 D7B80028 */      ldc1 $f24, 0x28($sp)
  /* 01EF28 8001E328 D7BA0030 */      ldc1 $f26, 0x30($sp)
  /* 01EF2C 8001E32C 8FB00038 */        lw $s0, 0x38($sp)
  /* 01EF30 8001E330 8FB1003C */        lw $s1, 0x3c($sp)
  /* 01EF34 8001E334 8FB20040 */        lw $s2, 0x40($sp)
  /* 01EF38 8001E338 27BD0050 */     addiu $sp, $sp, 0x50
  /* 01EF3C 8001E33C 03E00008 */        jr $ra
  /* 01EF40 8001E340 46103003 */     div.s $f0, $f6, $f16

