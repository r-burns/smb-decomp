.section .text
glabel func_8000B14C
  /* 00BD4C 8000B14C 8C8E0000 */        lw $t6, ($a0)
  /* 00BD50 8000B150 00001825 */        or $v1, $zero, $zero
  /* 00BD54 8000B154 14AE0003 */       bne $a1, $t6, .L8000B164
  /* 00BD58 8000B158 00000000 */       nop 
  /* 00BD5C 8000B15C 03E00008 */        jr $ra
  /* 00BD60 8000B160 00801025 */        or $v0, $a0, $zero

  .L8000B164:
  /* 00BD64 8000B164 03E00008 */        jr $ra
  /* 00BD68 8000B168 00601025 */        or $v0, $v1, $zero

