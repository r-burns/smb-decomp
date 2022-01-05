.section .text
glabel func_8001BDEC
  /* 01C9EC 8001BDEC 27BDFFB8 */     addiu $sp, $sp, -0x48
  /* 01C9F0 8001BDF0 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 01C9F4 8001BDF4 4485B000 */      mtc1 $a1, $f22
  /* 01C9F8 8001BDF8 AFBF002C */        sw $ra, 0x2c($sp)
  /* 01C9FC 8001BDFC AFB00028 */        sw $s0, 0x28($sp)
  /* 01CA00 8001BE00 00808025 */        or $s0, $a0, $zero
  /* 01CA04 8001BE04 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 01CA08 8001BE08 AFA60050 */        sw $a2, 0x50($sp)
  /* 01CA0C 8001BE0C AFA70054 */        sw $a3, 0x54($sp)
  /* 01CA10 8001BE10 0C00C0FC */       jal __sinf
  /* 01CA14 8001BE14 4600B306 */     mov.s $f12, $f22
  /* 01CA18 8001BE18 46000506 */     mov.s $f20, $f0
  /* 01CA1C 8001BE1C 0C00D734 */       jal cosf
  /* 01CA20 8001BE20 4600B306 */     mov.s $f12, $f22
  /* 01CA24 8001BE24 46000586 */     mov.s $f22, $f0
  /* 01CA28 8001BE28 0C00C0FC */       jal __sinf
  /* 01CA2C 8001BE2C C7AC0050 */      lwc1 $f12, 0x50($sp)
  /* 01CA30 8001BE30 E7A00040 */      swc1 $f0, 0x40($sp)
  /* 01CA34 8001BE34 0C00D734 */       jal cosf
  /* 01CA38 8001BE38 C7AC0050 */      lwc1 $f12, 0x50($sp)
  /* 01CA3C 8001BE3C C7AC0054 */      lwc1 $f12, 0x54($sp)
  /* 01CA40 8001BE40 0C00C0FC */       jal __sinf
  /* 01CA44 8001BE44 E7A00034 */      swc1 $f0, 0x34($sp)
  /* 01CA48 8001BE48 C7AC0054 */      lwc1 $f12, 0x54($sp)
  /* 01CA4C 8001BE4C 0C00D734 */       jal cosf
  /* 01CA50 8001BE50 E7A0003C */      swc1 $f0, 0x3c($sp)
  /* 01CA54 8001BE54 C7AE0034 */      lwc1 $f14, 0x34($sp)
  /* 01CA58 8001BE58 C7A2003C */      lwc1 $f2, 0x3c($sp)
  /* 01CA5C 8001BE5C C7B20040 */      lwc1 $f18, 0x40($sp)
  /* 01CA60 8001BE60 46007102 */     mul.s $f4, $f14, $f0
  /* 01CA64 8001BE64 44808000 */      mtc1 $zero, $f16
  /* 01CA68 8001BE68 46009207 */     neg.s $f8, $f18
  /* 01CA6C 8001BE6C 46027182 */     mul.s $f6, $f14, $f2
  /* 01CA70 8001BE70 E6080008 */      swc1 $f8, 8($s0)
  /* 01CA74 8001BE74 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01CA78 8001BE78 4612A302 */     mul.s $f12, $f20, $f18
  /* 01CA7C 8001BE7C E6040000 */      swc1 $f4, ($s0)
  /* 01CA80 8001BE80 E6100038 */      swc1 $f16, 0x38($s0)
  /* 01CA84 8001BE84 E6100034 */      swc1 $f16, 0x34($s0)
  /* 01CA88 8001BE88 E6060004 */      swc1 $f6, 4($s0)
  /* 01CA8C 8001BE8C E6100030 */      swc1 $f16, 0x30($s0)
  /* 01CA90 8001BE90 E610002C */      swc1 $f16, 0x2c($s0)
  /* 01CA94 8001BE94 46006282 */     mul.s $f10, $f12, $f0
  /* 01CA98 8001BE98 E610001C */      swc1 $f16, 0x1c($s0)
  /* 01CA9C 8001BE9C E610000C */      swc1 $f16, 0xc($s0)
  /* 01CAA0 8001BEA0 4602B102 */     mul.s $f4, $f22, $f2
  /* 01CAA4 8001BEA4 46045181 */     sub.s $f6, $f10, $f4
  /* 01CAA8 8001BEA8 46026202 */     mul.s $f8, $f12, $f2
  /* 01CAAC 8001BEAC 00000000 */       nop 
  /* 01CAB0 8001BEB0 4600B282 */     mul.s $f10, $f22, $f0
  /* 01CAB4 8001BEB4 E6060010 */      swc1 $f6, 0x10($s0)
  /* 01CAB8 8001BEB8 460EA182 */     mul.s $f6, $f20, $f14
  /* 01CABC 8001BEBC 00000000 */       nop 
  /* 01CAC0 8001BEC0 4612B302 */     mul.s $f12, $f22, $f18
  /* 01CAC4 8001BEC4 460A4100 */     add.s $f4, $f8, $f10
  /* 01CAC8 8001BEC8 E6060018 */      swc1 $f6, 0x18($s0)
  /* 01CACC 8001BECC E6040014 */      swc1 $f4, 0x14($s0)
  /* 01CAD0 8001BED0 46006202 */     mul.s $f8, $f12, $f0
  /* 01CAD4 8001BED4 00000000 */       nop 
  /* 01CAD8 8001BED8 4602A282 */     mul.s $f10, $f20, $f2
  /* 01CADC 8001BEDC 460A4100 */     add.s $f4, $f8, $f10
  /* 01CAE0 8001BEE0 46026182 */     mul.s $f6, $f12, $f2
  /* 01CAE4 8001BEE4 00000000 */       nop 
  /* 01CAE8 8001BEE8 4600A202 */     mul.s $f8, $f20, $f0
  /* 01CAEC 8001BEEC E6040020 */      swc1 $f4, 0x20($s0)
  /* 01CAF0 8001BEF0 460EB102 */     mul.s $f4, $f22, $f14
  /* 01CAF4 8001BEF4 46083281 */     sub.s $f10, $f6, $f8
  /* 01CAF8 8001BEF8 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 01CAFC 8001BEFC E6040028 */      swc1 $f4, 0x28($s0)
  /* 01CB00 8001BF00 E60A0024 */      swc1 $f10, 0x24($s0)
  /* 01CB04 8001BF04 E606003C */      swc1 $f6, 0x3c($s0)
  /* 01CB08 8001BF08 8FBF002C */        lw $ra, 0x2c($sp)
  /* 01CB0C 8001BF0C 8FB00028 */        lw $s0, 0x28($sp)
  /* 01CB10 8001BF10 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 01CB14 8001BF14 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 01CB18 8001BF18 03E00008 */        jr $ra
  /* 01CB1C 8001BF1C 27BD0048 */     addiu $sp, $sp, 0x48

