glabel func_80000970
  /* 001570 80000970 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 001574 80000974 AFBF0014 */        sw $ra, 0x14($sp)
  /* 001578 80000978 00803825 */        or $a3, $a0, $zero
  /* 00157C 8000097C AFA70038 */        sw $a3, 0x38($sp)
  /* 001580 80000980 27A4001C */     addiu $a0, $sp, 0x1c
  /* 001584 80000984 27A50034 */     addiu $a1, $sp, 0x34
  /* 001588 80000988 0C00D120 */       jal osCreateMesgQueue
  /* 00158C 8000098C 24060001 */     addiu $a2, $zero, 1
  /* 001590 80000990 8FA50038 */        lw $a1, 0x38($sp)
  /* 001594 80000994 240E0001 */     addiu $t6, $zero, 1
  /* 001598 80000998 27AF001C */     addiu $t7, $sp, 0x1c
  /* 00159C 8000099C 3C048004 */       lui $a0, %hi(D_80044FF8)
  /* 0015A0 800009A0 24844FF8 */     addiu $a0, $a0, %lo(D_80044FF8)
  /* 0015A4 800009A4 00003025 */        or $a2, $zero, $zero
  /* 0015A8 800009A8 ACA00014 */        sw $zero, 0x14($a1)
  /* 0015AC 800009AC ACAE001C */        sw $t6, 0x1c($a1)
  /* 0015B0 800009B0 0C00C000 */       jal osSendMesg
  /* 0015B4 800009B4 ACAF0020 */        sw $t7, 0x20($a1)
  /* 0015B8 800009B8 27A4001C */     addiu $a0, $sp, 0x1c
  /* 0015BC 800009BC 00002825 */        or $a1, $zero, $zero
  /* 0015C0 800009C0 0C00C084 */       jal osRecvMesg
  /* 0015C4 800009C4 24060001 */     addiu $a2, $zero, 1
  /* 0015C8 800009C8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0015CC 800009CC 27BD0038 */     addiu $sp, $sp, 0x38
  /* 0015D0 800009D0 03E00008 */        jr $ra
  /* 0015D4 800009D4 00000000 */       nop 

