.section .text
glabel func_80004CB4
  /* 0058B4 80004CB4 3C018004 */       lui $at, %hi(D_8003B6E0)
  /* 0058B8 80004CB8 AC24B6E0 */        sw $a0, %lo(D_8003B6E0)($at)
  /* 0058BC 80004CBC 3C018004 */       lui $at, %hi(D_80046618)
  /* 0058C0 80004CC0 AC256618 */        sw $a1, %lo(D_80046618)($at)
  /* 0058C4 80004CC4 3C018004 */       lui $at, %hi(D_8004661C)
  /* 0058C8 80004CC8 AC26661C */        sw $a2, %lo(D_8004661C)($at)
  /* 0058CC 80004CCC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0058D0 80004CD0 24010002 */     addiu $at, $zero, 2
  /* 0058D4 80004CD4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0058D8 80004CD8 10810004 */       beq $a0, $at, .L80004CEC
  /* 0058DC 80004CDC 00A03825 */        or $a3, $a1, $zero
  /* 0058E0 80004CE0 24010001 */     addiu $at, $zero, 1
  /* 0058E4 80004CE4 54810009 */      bnel $a0, $at, .L80004D0C
  /* 0058E8 80004CE8 24010001 */     addiu $at, $zero, 1
  .L80004CEC:
  /* 0058EC 80004CEC 54C00007 */      bnel $a2, $zero, .L80004D0C
  /* 0058F0 80004CF0 24010001 */     addiu $at, $zero, 1
  /* 0058F4 80004CF4 3C048004 */       lui $a0, %hi(D_8003D778)
  /* 0058F8 80004CF8 0C008D89 */       jal fatal_printf
  /* 0058FC 80004CFC 2484D778 */     addiu $a0, $a0, %lo(D_8003D778)
  .L80004D00:
  /* 005900 80004D00 1000FFFF */         b .L80004D00
  /* 005904 80004D04 00000000 */       nop 
  /* 005908 80004D08 24010001 */     addiu $at, $zero, 1
  .L80004D0C:
  /* 00590C 80004D0C 14810003 */       bne $a0, $at, .L80004D1C
  /* 005910 80004D10 00C02825 */        or $a1, $a2, $zero
  /* 005914 80004D14 0C001317 */       jal func_80004C5C
  /* 005918 80004D18 00E02025 */        or $a0, $a3, $zero
  .L80004D1C:
  /* 00591C 80004D1C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 005920 80004D20 27BD0018 */     addiu $sp, $sp, 0x18
  /* 005924 80004D24 03E00008 */        jr $ra
  /* 005928 80004D28 00000000 */       nop 

