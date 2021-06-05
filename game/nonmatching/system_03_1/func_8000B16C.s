.section .text
glabel func_8000B16C
  /* 00BD6C 8000B16C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00BD70 8000B170 00A03025 */        or $a2, $a1, $zero
  /* 00BD74 8000B174 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00BD78 8000B178 3C058001 */       lui $a1, %hi(func_8000B14C)
  /* 00BD7C 8000B17C 24A5B14C */     addiu $a1, $a1, %lo(func_8000B14C)
  /* 00BD80 8000B180 0C002BF9 */       jal func_8000AFE4
  /* 00BD84 8000B184 24070001 */     addiu $a3, $zero, 1
  /* 00BD88 8000B188 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00BD8C 8000B18C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00BD90 8000B190 03E00008 */        jr $ra
  /* 00BD94 8000B194 00000000 */       nop 

# struct GObjCommon *func_8000B198(s32 id)
