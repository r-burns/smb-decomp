.section .text
glabel func_800049B0
  /* 0055B0 800049B0 3C0E8004 */       lui $t6, %hi(D_80046630)
  /* 0055B4 800049B4 8DCE6630 */        lw $t6, %lo(D_80046630)($t6)
  /* 0055B8 800049B8 3C188004 */       lui $t8, %hi(D_80046648)
  /* 0055BC 800049BC 27186648 */     addiu $t8, $t8, %lo(D_80046648)
  /* 0055C0 800049C0 000E7900 */       sll $t7, $t6, 4
  /* 0055C4 800049C4 01F81021 */      addu $v0, $t7, $t8
  /* 0055C8 800049C8 3C048004 */       lui $a0, %hi(D_800465D8)
  /* 0055CC 800049CC 248465D8 */     addiu $a0, $a0, %lo(D_800465D8)
  /* 0055D0 800049D0 8C590000 */        lw $t9, ($v0)
  /* 0055D4 800049D4 8C480004 */        lw $t0, 4($v0)
  /* 0055D8 800049D8 8C490008 */        lw $t1, 8($v0)
  /* 0055DC 800049DC 8C4A000C */        lw $t2, 0xc($v0)
  /* 0055E0 800049E0 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0055E4 800049E4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0055E8 800049E8 AC990000 */        sw $t9, ($a0) # D_800465D8 + 0
  /* 0055EC 800049EC AC880004 */        sw $t0, 4($a0) # D_800465D8 + 4
  /* 0055F0 800049F0 AC890008 */        sw $t1, 8($a0) # D_800465D8 + 8
  /* 0055F4 800049F4 0C001B38 */       jal reset_bump_alloc
  /* 0055F8 800049F8 AC8A000C */        sw $t2, 0xc($a0) # D_800465D8 + 12
  /* 0055FC 800049FC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 005600 80004A00 27BD0018 */     addiu $sp, $sp, 0x18
  /* 005604 80004A04 03E00008 */        jr $ra
  /* 005608 80004A08 00000000 */       nop 
