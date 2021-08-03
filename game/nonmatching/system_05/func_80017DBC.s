.section .text
glabel func_80017DBC
  /* 0189BC 80017DBC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0189C0 80017DC0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0189C4 80017DC4 3C058004 */       lui $a1, %hi(D_800465B0)
  /* 0189C8 80017DC8 24A565B0 */     addiu $a1, $a1, %lo(D_800465B0)
  /* 0189CC 80017DCC 0C005F4F */       jal func_80017D3C
  /* 0189D0 80017DD0 00003025 */        or $a2, $zero, $zero
  /* 0189D4 80017DD4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0189D8 80017DD8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0189DC 80017DDC 03E00008 */        jr $ra
  /* 0189E0 80017DE0 00000000 */       nop 

