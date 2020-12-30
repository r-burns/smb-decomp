.section .text
glabel func_80005C9C
  /* 00689C 80005C9C 3C028004 */       lui $v0, %hi(D_800465D0)
  /* 0068A0 80005CA0 8C4265D0 */        lw $v0, %lo(D_800465D0)($v0)
  /* 0068A4 80005CA4 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 0068A8 80005CA8 24010001 */     addiu $at, $zero, 1
  /* 0068AC 80005CAC 10410006 */       beq $v0, $at, .L80005CC8
  /* 0068B0 80005CB0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0068B4 80005CB4 24010002 */     addiu $at, $zero, 2
  /* 0068B8 80005CB8 10410005 */       beq $v0, $at, .L80005CD0
  /* 0068BC 80005CBC 3C0E8004 */       lui $t6, %hi(D_80044FA4)
  /* 0068C0 80005CC0 1000000F */         b .L80005D00
  /* 0068C4 80005CC4 00001025 */        or $v0, $zero, $zero
  .L80005CC8:
  /* 0068C8 80005CC8 1000000D */         b .L80005D00
  /* 0068CC 80005CCC 24020001 */     addiu $v0, $zero, 1
  .L80005CD0:
  /* 0068D0 80005CD0 8DCE4FA4 */        lw $t6, %lo(D_80044FA4)($t6)
  /* 0068D4 80005CD4 240F000B */     addiu $t7, $zero, 0xb
  /* 0068D8 80005CD8 24180064 */     addiu $t8, $zero, 0x64
  /* 0068DC 80005CDC 11C00006 */      beqz $t6, .L80005CF8
  /* 0068E0 80005CE0 27A4001C */     addiu $a0, $sp, 0x1c
  /* 0068E4 80005CE4 AFAF001C */        sw $t7, 0x1c($sp)
  /* 0068E8 80005CE8 0C00025C */       jal func_80000970
  /* 0068EC 80005CEC AFB80020 */        sw $t8, 0x20($sp)
  /* 0068F0 80005CF0 10000003 */         b .L80005D00
  /* 0068F4 80005CF4 24020001 */     addiu $v0, $zero, 1
  .L80005CF8:
  /* 0068F8 80005CF8 10000001 */         b .L80005D00
  /* 0068FC 80005CFC 00001025 */        or $v0, $zero, $zero
  .L80005D00:
  /* 006900 80005D00 8FBF0014 */        lw $ra, 0x14($sp)
  /* 006904 80005D04 27BD0040 */     addiu $sp, $sp, 0x40
  /* 006908 80005D08 03E00008 */        jr $ra
  /* 00690C 80005D0C 00000000 */       nop 

