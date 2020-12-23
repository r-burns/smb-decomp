.section .text
glabel func_800044B4
  /* 0050B4 800044B4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0050B8 800044B8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0050BC 800044BC 0C0010F0 */       jal func_800043C0
  /* 0050C0 800044C0 00002825 */        or $a1, $zero, $zero
  /* 0050C4 800044C4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0050C8 800044C8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0050CC 800044CC 03E00008 */        jr $ra
  /* 0050D0 800044D0 00000000 */       nop 

