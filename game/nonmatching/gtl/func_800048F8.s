.section .text
glabel func_800048F8
  /* 0054F8 800048F8 8C8E0000 */        lw $t6, ($a0)
  /* 0054FC 800048FC 3C018004 */       lui $at, %hi(D_800454E8)
  /* 005500 80004900 3C19DB06 */       lui $t9, (0xDB06003C >> 16) # 3674603580
  /* 005504 80004904 25CF0004 */     addiu $t7, $t6, 4
  /* 005508 80004908 AC2F54E8 */        sw $t7, %lo(D_800454E8)($at)
  /* 00550C 8000490C 8C820000 */        lw $v0, ($a0)
  /* 005510 80004910 3739003C */       ori $t9, $t9, (0xDB06003C & 0xFFFF) # 3674603580
  /* 005514 80004914 24580008 */     addiu $t8, $v0, 8
  /* 005518 80004918 AC980000 */        sw $t8, ($a0)
  /* 00551C 8000491C AC400004 */        sw $zero, 4($v0)
  /* 005520 80004920 03E00008 */        jr $ra
  /* 005524 80004924 AC590000 */        sw $t9, ($v0)

  /* 005528 80004928 3C018004 */       lui $at, %hi(D_80046620)
  /* 00552C 8000492C 03E00008 */        jr $ra
  /* 005530 80004930 AC246620 */        sw $a0, %lo(D_80046620)($at)

  /* 005534 80004934 3C018004 */       lui $at, %hi(D_80046624)
  /* 005538 80004938 A4246624 */        sh $a0, %lo(D_80046624)($at)
  /* 00553C 8000493C 3C018004 */       lui $at, %hi(D_80046626)
  /* 005540 80004940 AFA40000 */        sw $a0, ($sp)
  /* 005544 80004944 AFA50004 */        sw $a1, 4($sp)
  /* 005548 80004948 03E00008 */        jr $ra
  /* 00554C 8000494C A4256626 */        sh $a1, %lo(D_80046626)($at)

