.section .text
glabel func_80005BFC
  /* 0067FC 80005BFC 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 006800 80005C00 AFBF0014 */        sw $ra, 0x14($sp)
  /* 006804 80005C04 240E0007 */     addiu $t6, $zero, 7
  /* 006808 80005C08 240F0032 */     addiu $t7, $zero, 0x32
  /* 00680C 80005C0C AFAE0034 */        sw $t6, 0x34($sp)
  /* 006810 80005C10 AFAF0038 */        sw $t7, 0x38($sp)
  /* 006814 80005C14 27A40018 */     addiu $a0, $sp, 0x18
  /* 006818 80005C18 27A50030 */     addiu $a1, $sp, 0x30
  /* 00681C 80005C1C 0C00D120 */       jal osCreateMesgQueue
  /* 006820 80005C20 24060001 */     addiu $a2, $zero, 1
  /* 006824 80005C24 3C188000 */       lui $t8, %hi(func_80000B54)
  /* 006828 80005C28 27180B54 */     addiu $t8, $t8, %lo(func_80000B54)
  /* 00682C 80005C2C 24190001 */     addiu $t9, $zero, 1
  /* 006830 80005C30 27A80018 */     addiu $t0, $sp, 0x18
  /* 006834 80005C34 3C048004 */       lui $a0, %hi(gScheduleTaskQueue)
  /* 006838 80005C38 AFB80048 */        sw $t8, 0x48($sp)
  /* 00683C 80005C3C AFB90050 */        sw $t9, 0x50($sp)
  /* 006840 80005C40 AFA80054 */        sw $t0, 0x54($sp)
  /* 006844 80005C44 24844FF8 */     addiu $a0, $a0, %lo(gScheduleTaskQueue)
  /* 006848 80005C48 27A50034 */     addiu $a1, $sp, 0x34
  /* 00684C 80005C4C 0C00C000 */       jal osSendMesg
  /* 006850 80005C50 00003025 */        or $a2, $zero, $zero
  /* 006854 80005C54 27A40018 */     addiu $a0, $sp, 0x18
  /* 006858 80005C58 00002825 */        or $a1, $zero, $zero
  /* 00685C 80005C5C 0C00C084 */       jal osRecvMesg
  /* 006860 80005C60 24060001 */     addiu $a2, $zero, 1
  /* 006864 80005C64 8FBF0014 */        lw $ra, 0x14($sp)
  /* 006868 80005C68 27BD0058 */     addiu $sp, $sp, 0x58
  /* 00686C 80005C6C 03E00008 */        jr $ra
  /* 006870 80005C70 00000000 */       nop 

