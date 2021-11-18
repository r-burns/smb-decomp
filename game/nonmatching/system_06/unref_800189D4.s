.section .text
glabel unref_800189D4
  /* 0195D4 800189D4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0195D8 800189D8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0195DC 800189DC 0C00D354 */       jal osGetTime
  /* 0195E0 800189E0 00000000 */       nop 
  /* 0195E4 800189E4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0195E8 800189E8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0195EC 800189EC 306200FF */      andi $v0, $v1, 0xff
  /* 0195F0 800189F0 03E00008 */        jr $ra
  /* 0195F4 800189F4 00000000 */       nop 

