.section .text
glabel func_80018A80
  /* 019680 80018A80 00C01025 */        or $v0, $a2, $zero
  /* 019684 80018A84 10C0000A */      beqz $a2, .L80018AB0
  /* 019688 80018A88 24C6FFFF */     addiu $a2, $a2, -1
  .L80018A8C:
  /* 01968C 80018A8C 90AE0000 */       lbu $t6, ($a1)
  /* 019690 80018A90 90830000 */       lbu $v1, ($a0)
  /* 019694 80018A94 00C01025 */        or $v0, $a2, $zero
  /* 019698 80018A98 A08E0000 */        sb $t6, ($a0)
  /* 01969C 80018A9C 24840001 */     addiu $a0, $a0, 1
  /* 0196A0 80018AA0 24A50001 */     addiu $a1, $a1, 1
  /* 0196A4 80018AA4 A0A3FFFF */        sb $v1, -1($a1)
  /* 0196A8 80018AA8 14C0FFF8 */      bnez $a2, .L80018A8C
  /* 0196AC 80018AAC 24C6FFFF */     addiu $a2, $a2, -1
  .L80018AB0:
  /* 0196B0 80018AB0 03E00008 */        jr $ra
  /* 0196B4 80018AB4 00000000 */       nop 

