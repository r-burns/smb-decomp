.section .text
glabel func_8001CFE0
  /* 01DBE0 8001CFE0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 01DBE4 8001CFE4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01DBE8 8001CFE8 AFA50024 */        sw $a1, 0x24($sp)
  /* 01DBEC 8001CFEC C7AC0024 */      lwc1 $f12, 0x24($sp)
  /* 01DBF0 8001CFF0 0C00C0FC */       jal __sinf
  /* 01DBF4 8001CFF4 AFA40020 */        sw $a0, 0x20($sp)
  /* 01DBF8 8001CFF8 C7AC0024 */      lwc1 $f12, 0x24($sp)
  /* 01DBFC 8001CFFC 0C00D734 */       jal cosf
  /* 01DC00 8001D000 E7A0001C */      swc1 $f0, 0x1c($sp)
  /* 01DC04 8001D004 8FA40020 */        lw $a0, 0x20($sp)
  /* 01DC08 8001D008 C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 01DC0C 8001D00C 44801000 */      mtc1 $zero, $f2
  /* 01DC10 8001D010 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01DC14 8001D014 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 01DC18 8001D018 46007107 */     neg.s $f4, $f14
  /* 01DC1C 8001D01C E4800000 */      swc1 $f0, ($a0)
  /* 01DC20 8001D020 E486003C */      swc1 $f6, 0x3c($a0)
  /* 01DC24 8001D024 C488003C */      lwc1 $f8, 0x3c($a0)
  /* 01DC28 8001D028 E4840010 */      swc1 $f4, 0x10($a0)
  /* 01DC2C 8001D02C E4800014 */      swc1 $f0, 0x14($a0)
  /* 01DC30 8001D030 E48E0004 */      swc1 $f14, 4($a0)
  /* 01DC34 8001D034 E4820024 */      swc1 $f2, 0x24($a0)
  /* 01DC38 8001D038 E4820020 */      swc1 $f2, 0x20($a0)
  /* 01DC3C 8001D03C E4820018 */      swc1 $f2, 0x18($a0)
  /* 01DC40 8001D040 E4820008 */      swc1 $f2, 8($a0)
  /* 01DC44 8001D044 E4820038 */      swc1 $f2, 0x38($a0)
  /* 01DC48 8001D048 E4820034 */      swc1 $f2, 0x34($a0)
  /* 01DC4C 8001D04C E4820030 */      swc1 $f2, 0x30($a0)
  /* 01DC50 8001D050 E482002C */      swc1 $f2, 0x2c($a0)
  /* 01DC54 8001D054 E482001C */      swc1 $f2, 0x1c($a0)
  /* 01DC58 8001D058 E482000C */      swc1 $f2, 0xc($a0)
  /* 01DC5C 8001D05C E4880028 */      swc1 $f8, 0x28($a0)
  /* 01DC60 8001D060 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01DC64 8001D064 27BD0020 */     addiu $sp, $sp, 0x20
  /* 01DC68 8001D068 03E00008 */        jr $ra
  /* 01DC6C 8001D06C 00000000 */       nop 

  /* 01DC70 8001D070 44856000 */      mtc1 $a1, $f12
  /* 01DC74 8001D074 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 01DC78 8001D078 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01DC7C 8001D07C AFA40058 */        sw $a0, 0x58($sp)
  /* 01DC80 8001D080 44056000 */      mfc1 $a1, $f12
  /* 01DC84 8001D084 0C0073F8 */       jal func_8001CFE0
  /* 01DC88 8001D088 27A40018 */     addiu $a0, $sp, 0x18
  /* 01DC8C 8001D08C 27A40018 */     addiu $a0, $sp, 0x18
  /* 01DC90 8001D090 0C0067A8 */       jal func_80019EA0
  /* 01DC94 8001D094 8FA50058 */        lw $a1, 0x58($sp)
  /* 01DC98 8001D098 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01DC9C 8001D09C 27BD0058 */     addiu $sp, $sp, 0x58
  /* 01DCA0 8001D0A0 03E00008 */        jr $ra
  /* 01DCA4 8001D0A4 00000000 */       nop 

