.section .text
glabel func_8000BB4C
  /* 00C74C 8000BB4C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C750 8000BB50 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C754 8000BB54 AFB00020 */        sw $s0, 0x20($sp)
  /* 00C758 8000BB58 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00C75C 8000BB5C 8C900074 */        lw $s0, 0x74($a0)
  /* 00C760 8000BB60 4485A000 */      mtc1 $a1, $f20
  /* 00C764 8000BB64 5200000E */      beql $s0, $zero, .L8000BBA0
  /* 00C768 8000BB68 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BB6C:
  /* 00C76C 8000BB6C 8E020080 */        lw $v0, 0x80($s0)
  /* 00C770 8000BB70 E6140078 */      swc1 $f20, 0x78($s0)
  /* 00C774 8000BB74 10400005 */      beqz $v0, .L8000BB8C
  /* 00C778 8000BB78 00000000 */       nop 
  /* 00C77C 8000BB7C E454009C */      swc1 $f20, 0x9c($v0)
  .L8000BB80:
  /* 00C780 8000BB80 8C420000 */        lw $v0, ($v0)
  /* 00C784 8000BB84 5440FFFE */      bnel $v0, $zero, .L8000BB80
  /* 00C788 8000BB88 E454009C */      swc1 $f20, 0x9c($v0)
  .L8000BB8C:
  /* 00C78C 8000BB8C 0C002EA8 */       jal func_8000BAA0
  /* 00C790 8000BB90 02002025 */        or $a0, $s0, $zero
  /* 00C794 8000BB94 1440FFF5 */      bnez $v0, .L8000BB6C
  /* 00C798 8000BB98 00408025 */        or $s0, $v0, $zero
  /* 00C79C 8000BB9C 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BBA0:
  /* 00C7A0 8000BBA0 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00C7A4 8000BBA4 8FB00020 */        lw $s0, 0x20($sp)
  /* 00C7A8 8000BBA8 03E00008 */        jr $ra
  /* 00C7AC 8000BBAC 27BD0028 */     addiu $sp, $sp, 0x28
