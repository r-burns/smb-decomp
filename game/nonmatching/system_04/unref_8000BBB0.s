.section .text
glabel unref_8000BBB0
  /* 00C7B0 8000BBB0 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C7B4 8000BBB4 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C7B8 8000BBB8 AFB00020 */        sw $s0, 0x20($sp)
  /* 00C7BC 8000BBBC F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00C7C0 8000BBC0 8C900074 */        lw $s0, 0x74($a0)
  /* 00C7C4 8000BBC4 4485A000 */      mtc1 $a1, $f20
  /* 00C7C8 8000BBC8 5200000D */      beql $s0, $zero, .L8000BC00
  /* 00C7CC 8000BBCC 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BBD0:
  /* 00C7D0 8000BBD0 8E020080 */        lw $v0, 0x80($s0)
  /* 00C7D4 8000BBD4 10400005 */      beqz $v0, .L8000BBEC
  /* 00C7D8 8000BBD8 00000000 */       nop 
  /* 00C7DC 8000BBDC E454009C */      swc1 $f20, 0x9c($v0)
  .L8000BBE0:
  /* 00C7E0 8000BBE0 8C420000 */        lw $v0, ($v0)
  /* 00C7E4 8000BBE4 5440FFFE */      bnel $v0, $zero, .L8000BBE0
  /* 00C7E8 8000BBE8 E454009C */      swc1 $f20, 0x9c($v0)
  .L8000BBEC:
  /* 00C7EC 8000BBEC 0C002EA8 */       jal func_8000BAA0
  /* 00C7F0 8000BBF0 02002025 */        or $a0, $s0, $zero
  /* 00C7F4 8000BBF4 1440FFF6 */      bnez $v0, .L8000BBD0
  /* 00C7F8 8000BBF8 00408025 */        or $s0, $v0, $zero
  /* 00C7FC 8000BBFC 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BC00:
  /* 00C800 8000BC00 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00C804 8000BC04 8FB00020 */        lw $s0, 0x20($sp)
  /* 00C808 8000BC08 03E00008 */        jr $ra
  /* 00C80C 8000BC0C 27BD0028 */     addiu $sp, $sp, 0x28

