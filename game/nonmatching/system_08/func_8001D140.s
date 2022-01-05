.section .text
glabel func_8001D140
  /* 01DD40 8001D140 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 01DD44 8001D144 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01DD48 8001D148 AFA50024 */        sw $a1, 0x24($sp)
  /* 01DD4C 8001D14C C7AC0024 */      lwc1 $f12, 0x24($sp)
  /* 01DD50 8001D150 0C00C0FC */       jal __sinf
  /* 01DD54 8001D154 AFA40020 */        sw $a0, 0x20($sp)
  /* 01DD58 8001D158 C7AC0024 */      lwc1 $f12, 0x24($sp)
  /* 01DD5C 8001D15C 0C00D734 */       jal cosf
  /* 01DD60 8001D160 E7A0001C */      swc1 $f0, 0x1c($sp)
  /* 01DD64 8001D164 8FA40020 */        lw $a0, 0x20($sp)
  /* 01DD68 8001D168 C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 01DD6C 8001D16C 44801000 */      mtc1 $zero, $f2
  /* 01DD70 8001D170 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01DD74 8001D174 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 01DD78 8001D178 46007107 */     neg.s $f4, $f14
  /* 01DD7C 8001D17C E4800000 */      swc1 $f0, ($a0)
  /* 01DD80 8001D180 E486003C */      swc1 $f6, 0x3c($a0)
  /* 01DD84 8001D184 C488003C */      lwc1 $f8, 0x3c($a0)
  /* 01DD88 8001D188 E4840008 */      swc1 $f4, 8($a0)
  /* 01DD8C 8001D18C E4800028 */      swc1 $f0, 0x28($a0)
  /* 01DD90 8001D190 E48E0020 */      swc1 $f14, 0x20($a0)
  /* 01DD94 8001D194 E4820024 */      swc1 $f2, 0x24($a0)
  /* 01DD98 8001D198 E4820010 */      swc1 $f2, 0x10($a0)
  /* 01DD9C 8001D19C E4820018 */      swc1 $f2, 0x18($a0)
  /* 01DDA0 8001D1A0 E4820004 */      swc1 $f2, 4($a0)
  /* 01DDA4 8001D1A4 E4820038 */      swc1 $f2, 0x38($a0)
  /* 01DDA8 8001D1A8 E4820034 */      swc1 $f2, 0x34($a0)
  /* 01DDAC 8001D1AC E4820030 */      swc1 $f2, 0x30($a0)
  /* 01DDB0 8001D1B0 E482002C */      swc1 $f2, 0x2c($a0)
  /* 01DDB4 8001D1B4 E482001C */      swc1 $f2, 0x1c($a0)
  /* 01DDB8 8001D1B8 E482000C */      swc1 $f2, 0xc($a0)
  /* 01DDBC 8001D1BC E4880014 */      swc1 $f8, 0x14($a0)
  /* 01DDC0 8001D1C0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01DDC4 8001D1C4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 01DDC8 8001D1C8 03E00008 */        jr $ra
  /* 01DDCC 8001D1CC 00000000 */       nop 

  /* 01DDD0 8001D1D0 44856000 */      mtc1 $a1, $f12
  /* 01DDD4 8001D1D4 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 01DDD8 8001D1D8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01DDDC 8001D1DC AFA40058 */        sw $a0, 0x58($sp)
  /* 01DDE0 8001D1E0 44056000 */      mfc1 $a1, $f12
  /* 01DDE4 8001D1E4 0C007450 */       jal func_8001D140
  /* 01DDE8 8001D1E8 27A40018 */     addiu $a0, $sp, 0x18
  /* 01DDEC 8001D1EC 27A40018 */     addiu $a0, $sp, 0x18
  /* 01DDF0 8001D1F0 0C0067A8 */       jal func_80019EA0
  /* 01DDF4 8001D1F4 8FA50058 */        lw $a1, 0x58($sp)
  /* 01DDF8 8001D1F8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01DDFC 8001D1FC 27BD0058 */     addiu $sp, $sp, 0x58
  /* 01DE00 8001D200 03E00008 */        jr $ra
  /* 01DE04 8001D204 00000000 */       nop 

