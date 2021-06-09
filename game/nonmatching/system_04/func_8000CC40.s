.section .text
glabel func_8000CC40
  /* 00D840 8000CC40 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00D844 8000CC44 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00D848 8000CC48 90820005 */       lbu $v0, 5($a0)
  /* 00D84C 8000CC4C 24010001 */     addiu $at, $zero, 1
  /* 00D850 8000CC50 10410014 */       beq $v0, $at, .L8000CCA4
  /* 00D854 8000CC54 24010002 */     addiu $at, $zero, 2
  /* 00D858 8000CC58 10410005 */       beq $v0, $at, .L8000CC70
  /* 00D85C 8000CC5C 24010003 */     addiu $at, $zero, 3
  /* 00D860 8000CC60 50410006 */      beql $v0, $at, .L8000CC7C
  /* 00D864 8000CC64 C4840018 */      lwc1 $f4, 0x18($a0)
  /* 00D868 8000CC68 10000011 */         b .L8000CCB0
  /* 00D86C 8000CC6C 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CC70:
  /* 00D870 8000CC70 1000000E */         b .L8000CCAC
  /* 00D874 8000CC74 C4800018 */      lwc1 $f0, 0x18($a0)
  /* 00D878 8000CC78 C4840018 */      lwc1 $f4, 0x18($a0)
  .L8000CC7C:
  /* 00D87C 8000CC7C C48C0008 */      lwc1 $f12, 8($a0)
  /* 00D880 8000CC80 C48E000C */      lwc1 $f14, 0xc($a0)
  /* 00D884 8000CC84 8C860010 */        lw $a2, 0x10($a0)
  /* 00D888 8000CC88 8C870014 */        lw $a3, 0x14($a0)
  /* 00D88C 8000CC8C E7A40010 */      swc1 $f4, 0x10($sp)
  /* 00D890 8000CC90 C486001C */      lwc1 $f6, 0x1c($a0)
  /* 00D894 8000CC94 0C0032B7 */       jal func_8000CADC
  /* 00D898 8000CC98 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 00D89C 8000CC9C 10000004 */         b .L8000CCB0
  /* 00D8A0 8000CCA0 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CCA4:
  /* 00D8A4 8000CCA4 44800000 */      mtc1 $zero, $f0
  /* 00D8A8 8000CCA8 00000000 */       nop 
  .L8000CCAC:
  /* 00D8AC 8000CCAC 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CCB0:
  /* 00D8B0 8000CCB0 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00D8B4 8000CCB4 03E00008 */        jr $ra
  /* 00D8B8 8000CCB8 00000000 */       nop 

