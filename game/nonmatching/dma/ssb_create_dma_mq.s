.section .text
glabel ssb_create_dma_mq
  /* 003660 80002A60 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 003664 80002A64 AFBF0014 */        sw $ra, 0x14($sp)
  /* 003668 80002A68 3C048004 */       lui $a0, %hi(D_800450C0)
  /* 00366C 80002A6C 3C058004 */       lui $a1, %hi(D_800450BC)
  /* 003670 80002A70 24A550BC */     addiu $a1, $a1, %lo(D_800450BC)
  /* 003674 80002A74 248450C0 */     addiu $a0, $a0, %lo(D_800450C0)
  /* 003678 80002A78 0C00D120 */       jal osCreateMesgQueue
  /* 00367C 80002A7C 24060001 */     addiu $a2, $zero, 1
  /* 003680 80002A80 8FBF0014 */        lw $ra, 0x14($sp)
  /* 003684 80002A84 27BD0018 */     addiu $sp, $sp, 0x18
  /* 003688 80002A88 03E00008 */        jr $ra
  /* 00368C 80002A8C 00000000 */       nop 

