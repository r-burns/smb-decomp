.section .text
glabel func_80008E78
  /* 009A78 80008E78 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009A7C 80008E7C AFBF0014 */        sw $ra, 0x14($sp)
  /* 009A80 80008E80 AFA40020 */        sw $a0, 0x20($sp)
  /* 009A84 80008E84 0C001F81 */       jal func_80007E04
  /* 009A88 80008E88 AFA50024 */        sw $a1, 0x24($sp)
  /* 009A8C 80008E8C 93AE0027 */       lbu $t6, 0x27($sp)
  /* 009A90 80008E90 AFA2001C */        sw $v0, 0x1c($sp)
  /* 009A94 80008E94 44800000 */      mtc1 $zero, $f0
  /* 009A98 80008E98 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 009A9C 80008E9C 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 009AA0 80008EA0 A0400005 */        sb $zero, 5($v0)
  /* 009AA4 80008EA4 AC400020 */        sw $zero, 0x20($v0)
  /* 009AA8 80008EA8 A04E0004 */        sb $t6, 4($v0)
  /* 009AAC 80008EAC E440001C */      swc1 $f0, 0x1c($v0)
  /* 009AB0 80008EB0 E4400018 */      swc1 $f0, 0x18($v0)
  /* 009AB4 80008EB4 E4400014 */      swc1 $f0, 0x14($v0)
  /* 009AB8 80008EB8 E4400010 */      swc1 $f0, 0x10($v0)
  /* 009ABC 80008EBC E440000C */      swc1 $f0, 0xc($v0)
  /* 009AC0 80008EC0 E4440008 */      swc1 $f4, 8($v0)
  /* 009AC4 80008EC4 8FA40020 */        lw $a0, 0x20($sp)
  /* 009AC8 80008EC8 0C001FA0 */       jal func_80007E80
  /* 009ACC 80008ECC 00402825 */        or $a1, $v0, $zero
  /* 009AD0 80008ED0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 009AD4 80008ED4 8FA2001C */        lw $v0, 0x1c($sp)
  /* 009AD8 80008ED8 27BD0020 */     addiu $sp, $sp, 0x20
  /* 009ADC 80008EDC 03E00008 */        jr $ra
  /* 009AE0 80008EE0 00000000 */       nop 

