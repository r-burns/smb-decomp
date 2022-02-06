.section .text
glabel func_80022368
  /* 022F68 80022368 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 022F6C 8002236C AFBF003C */        sw $ra, 0x3c($sp)
  /* 022F70 80022370 AFA40040 */        sw $a0, 0x40($sp)
  /* 022F74 80022374 AFA50044 */        sw $a1, 0x44($sp)
  /* 022F78 80022378 AFA60048 */        sw $a2, 0x48($sp)
  /* 022F7C 8002237C 0C002C66 */       jal find_gobj_with_id
  /* 022F80 80022380 2404FFFE */     addiu $a0, $zero, -2
  /* 022F84 80022384 10400003 */      beqz $v0, .L80022394
  /* 022F88 80022388 2404FFFE */     addiu $a0, $zero, -2
  /* 022F8C 8002238C 10000015 */         b .L800223E4
  /* 022F90 80022390 00001025 */        or $v0, $zero, $zero
  .L80022394:
  /* 022F94 80022394 8FAF0048 */        lw $t7, 0x48($sp)
  /* 022F98 80022398 3C0E8002 */       lui $t6, %hi(func_80021B30)
  /* 022F9C 8002239C 25CE1B30 */     addiu $t6, $t6, %lo(func_80021B30)
  /* 022FA0 800223A0 3C058001 */       lui $a1, %hi(func_8000B1C4)
  /* 022FA4 800223A4 24180000 */     addiu $t8, $zero, 0
  /* 022FA8 800223A8 24190000 */     addiu $t9, $zero, 0
  /* 022FAC 800223AC AFB9001C */        sw $t9, 0x1c($sp)
  /* 022FB0 800223B0 AFB80018 */        sw $t8, 0x18($sp)
  /* 022FB4 800223B4 24A5B1C4 */     addiu $a1, $a1, %lo(func_8000B1C4)
  /* 022FB8 800223B8 AFAE0010 */        sw $t6, 0x10($sp)
  /* 022FBC 800223BC 8FA60040 */        lw $a2, 0x40($sp)
  /* 022FC0 800223C0 8FA70044 */        lw $a3, 0x44($sp)
  /* 022FC4 800223C4 AFA00020 */        sw $zero, 0x20($sp)
  /* 022FC8 800223C8 AFA00024 */        sw $zero, 0x24($sp)
  /* 022FCC 800223CC AFA00028 */        sw $zero, 0x28($sp)
  /* 022FD0 800223D0 AFA0002C */        sw $zero, 0x2c($sp)
  /* 022FD4 800223D4 AFA00030 */        sw $zero, 0x30($sp)
  /* 022FD8 800223D8 AFA00034 */        sw $zero, 0x34($sp)
  /* 022FDC 800223DC 0C002E4F */       jal func_8000B93C
  /* 022FE0 800223E0 AFAF0014 */        sw $t7, 0x14($sp)
  .L800223E4:
  /* 022FE4 800223E4 8FBF003C */        lw $ra, 0x3c($sp)
  /* 022FE8 800223E8 27BD0040 */     addiu $sp, $sp, 0x40
  /* 022FEC 800223EC 03E00008 */        jr $ra
  /* 022FF0 800223F0 00000000 */       nop 

