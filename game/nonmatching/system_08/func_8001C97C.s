.section .text
glabel func_8001C97C
  /* 01D57C 8001C97C 27BDFFA0 */     addiu $sp, $sp, -0x60
  /* 01D580 8001C980 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 01D584 8001C984 4485B000 */      mtc1 $a1, $f22
  /* 01D588 8001C988 AFBF002C */        sw $ra, 0x2c($sp)
  /* 01D58C 8001C98C AFB00028 */        sw $s0, 0x28($sp)
  /* 01D590 8001C990 00808025 */        or $s0, $a0, $zero
  /* 01D594 8001C994 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 01D598 8001C998 AFA60068 */        sw $a2, 0x68($sp)
  /* 01D59C 8001C99C AFA7006C */        sw $a3, 0x6c($sp)
  /* 01D5A0 8001C9A0 0C00C0FC */       jal __sinf
  /* 01D5A4 8001C9A4 4600B306 */     mov.s $f12, $f22
  /* 01D5A8 8001C9A8 46000506 */     mov.s $f20, $f0
  /* 01D5AC 8001C9AC 0C00D734 */       jal cosf
  /* 01D5B0 8001C9B0 4600B306 */     mov.s $f12, $f22
  /* 01D5B4 8001C9B4 46000586 */     mov.s $f22, $f0
  /* 01D5B8 8001C9B8 0C00C0FC */       jal __sinf
  /* 01D5BC 8001C9BC C7AC0068 */      lwc1 $f12, 0x68($sp)
  /* 01D5C0 8001C9C0 C7AC0068 */      lwc1 $f12, 0x68($sp)
  /* 01D5C4 8001C9C4 0C00D734 */       jal cosf
  /* 01D5C8 8001C9C8 E7A00058 */      swc1 $f0, 0x58($sp)
  /* 01D5CC 8001C9CC C7AC006C */      lwc1 $f12, 0x6c($sp)
  /* 01D5D0 8001C9D0 0C00C0FC */       jal __sinf
  /* 01D5D4 8001C9D4 E7A0004C */      swc1 $f0, 0x4c($sp)
  /* 01D5D8 8001C9D8 C7AC006C */      lwc1 $f12, 0x6c($sp)
  /* 01D5DC 8001C9DC 0C00D734 */       jal cosf
  /* 01D5E0 8001C9E0 E7A00054 */      swc1 $f0, 0x54($sp)
  /* 01D5E4 8001C9E4 C7AE004C */      lwc1 $f14, 0x4c($sp)
  /* 01D5E8 8001C9E8 C7B00054 */      lwc1 $f16, 0x54($sp)
  /* 01D5EC 8001C9EC C7A20058 */      lwc1 $f2, 0x58($sp)
  /* 01D5F0 8001C9F0 460E0102 */     mul.s $f4, $f0, $f14
  /* 01D5F4 8001C9F4 44806000 */      mtc1 $zero, $f12
  /* 01D5F8 8001C9F8 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01D5FC 8001C9FC 4610B482 */     mul.s $f18, $f22, $f16
  /* 01D600 8001CA00 E6040000 */      swc1 $f4, ($s0)
  /* 01D604 8001CA04 460E9182 */     mul.s $f6, $f18, $f14
  /* 01D608 8001CA08 00000000 */       nop 
  /* 01D60C 8001CA0C 4602A202 */     mul.s $f8, $f20, $f2
  /* 01D610 8001CA10 46083280 */     add.s $f10, $f6, $f8
  /* 01D614 8001CA14 4610A102 */     mul.s $f4, $f20, $f16
  /* 01D618 8001CA18 E60A0004 */      swc1 $f10, 4($s0)
  /* 01D61C 8001CA1C E7A40030 */      swc1 $f4, 0x30($sp)
  /* 01D620 8001CA20 C7A60030 */      lwc1 $f6, 0x30($sp)
  /* 01D624 8001CA24 460E3202 */     mul.s $f8, $f6, $f14
  /* 01D628 8001CA28 46008187 */     neg.s $f6, $f16
  /* 01D62C 8001CA2C 4602B282 */     mul.s $f10, $f22, $f2
  /* 01D630 8001CA30 E6060010 */      swc1 $f6, 0x10($s0)
  /* 01D634 8001CA34 460A4101 */     sub.s $f4, $f8, $f10
  /* 01D638 8001CA38 4600B202 */     mul.s $f8, $f22, $f0
  /* 01D63C 8001CA3C 00000000 */       nop 
  /* 01D640 8001CA40 4600A282 */     mul.s $f10, $f20, $f0
  /* 01D644 8001CA44 E6040008 */      swc1 $f4, 8($s0)
  /* 01D648 8001CA48 46020102 */     mul.s $f4, $f0, $f2
  /* 01D64C 8001CA4C E6080014 */      swc1 $f8, 0x14($s0)
  /* 01D650 8001CA50 46029182 */     mul.s $f6, $f18, $f2
  /* 01D654 8001CA54 E60A0018 */      swc1 $f10, 0x18($s0)
  /* 01D658 8001CA58 460EA202 */     mul.s $f8, $f20, $f14
  /* 01D65C 8001CA5C E6040020 */      swc1 $f4, 0x20($s0)
  /* 01D660 8001CA60 46083281 */     sub.s $f10, $f6, $f8
  /* 01D664 8001CA64 E60A0024 */      swc1 $f10, 0x24($s0)
  /* 01D668 8001CA68 C7A40030 */      lwc1 $f4, 0x30($sp)
  /* 01D66C 8001CA6C E60C000C */      swc1 $f12, 0xc($s0)
  /* 01D670 8001CA70 E60C001C */      swc1 $f12, 0x1c($s0)
  /* 01D674 8001CA74 46022182 */     mul.s $f6, $f4, $f2
  /* 01D678 8001CA78 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 01D67C 8001CA7C E60C002C */      swc1 $f12, 0x2c($s0)
  /* 01D680 8001CA80 460EB202 */     mul.s $f8, $f22, $f14
  /* 01D684 8001CA84 E60C0030 */      swc1 $f12, 0x30($s0)
  /* 01D688 8001CA88 E60C0034 */      swc1 $f12, 0x34($s0)
  /* 01D68C 8001CA8C E60C0038 */      swc1 $f12, 0x38($s0)
  /* 01D690 8001CA90 E604003C */      swc1 $f4, 0x3c($s0)
  /* 01D694 8001CA94 46083280 */     add.s $f10, $f6, $f8
  /* 01D698 8001CA98 E60A0028 */      swc1 $f10, 0x28($s0)
  /* 01D69C 8001CA9C 8FBF002C */        lw $ra, 0x2c($sp)
  /* 01D6A0 8001CAA0 8FB00028 */        lw $s0, 0x28($sp)
  /* 01D6A4 8001CAA4 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 01D6A8 8001CAA8 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 01D6AC 8001CAAC 03E00008 */        jr $ra
  /* 01D6B0 8001CAB0 27BD0060 */     addiu $sp, $sp, 0x60

