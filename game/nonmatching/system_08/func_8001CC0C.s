.section .text
glabel func_8001CC0C
  /* 01D80C 8001CC0C 27BDFF90 */     addiu $sp, $sp, -0x70
  /* 01D810 8001CC10 44856000 */      mtc1 $a1, $f12
  /* 01D814 8001CC14 44867000 */      mtc1 $a2, $f14
  /* 01D818 8001CC18 C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 01D81C 8001CC1C C7A60084 */      lwc1 $f6, 0x84($sp)
  /* 01D820 8001CC20 C7A80088 */      lwc1 $f8, 0x88($sp)
  /* 01D824 8001CC24 C7AA008C */      lwc1 $f10, 0x8c($sp)
  /* 01D828 8001CC28 C7B00090 */      lwc1 $f16, 0x90($sp)
  /* 01D82C 8001CC2C C7B20094 */      lwc1 $f18, 0x94($sp)
  /* 01D830 8001CC30 AFBF002C */        sw $ra, 0x2c($sp)
  /* 01D834 8001CC34 AFA40070 */        sw $a0, 0x70($sp)
  /* 01D838 8001CC38 44056000 */      mfc1 $a1, $f12
  /* 01D83C 8001CC3C 44067000 */      mfc1 $a2, $f14
  /* 01D840 8001CC40 AFA7007C */        sw $a3, 0x7c($sp)
  /* 01D844 8001CC44 27A40030 */     addiu $a0, $sp, 0x30
  /* 01D848 8001CC48 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01D84C 8001CC4C E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01D850 8001CC50 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01D854 8001CC54 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 01D858 8001CC58 E7B00020 */      swc1 $f16, 0x20($sp)
  /* 01D85C 8001CC5C 0C0072EA */       jal func_8001CBA8
  /* 01D860 8001CC60 E7B20024 */      swc1 $f18, 0x24($sp)
  /* 01D864 8001CC64 27A40030 */     addiu $a0, $sp, 0x30
  /* 01D868 8001CC68 0C0067A8 */       jal func_80019EA0
  /* 01D86C 8001CC6C 8FA50070 */        lw $a1, 0x70($sp)
  /* 01D870 8001CC70 8FBF002C */        lw $ra, 0x2c($sp)
  /* 01D874 8001CC74 27BD0070 */     addiu $sp, $sp, 0x70
  /* 01D878 8001CC78 03E00008 */        jr $ra
  /* 01D87C 8001CC7C 00000000 */       nop 

