.section .text
glabel func_ovl0_800CEBC0
  /* 04A5A0 800CEBC0 908E0000 */       lbu $t6, ($a0)
  /* 04A5A4 800CEBC4 27BDFFF8 */     addiu $sp, $sp, -8
  /* 04A5A8 800CEBC8 24820004 */     addiu $v0, $a0, 4
  /* 04A5AC 800CEBCC A3AE0004 */        sb $t6, 4($sp)
  /* 04A5B0 800CEBD0 908F0001 */       lbu $t7, 1($a0)
  /* 04A5B4 800CEBD4 A3AF0005 */        sb $t7, 5($sp)
  /* 04A5B8 800CEBD8 90980002 */       lbu $t8, 2($a0)
  /* 04A5BC 800CEBDC A3B80006 */        sb $t8, 6($sp)
  /* 04A5C0 800CEBE0 90990003 */       lbu $t9, 3($a0)
  /* 04A5C4 800CEBE4 A3B90007 */        sb $t9, 7($sp)
  /* 04A5C8 800CEBE8 C7A40004 */      lwc1 $f4, 4($sp)
  /* 04A5CC 800CEBEC 27BD0008 */     addiu $sp, $sp, 8
  /* 04A5D0 800CEBF0 03E00008 */        jr $ra
  /* 04A5D4 800CEBF4 E4A40000 */      swc1 $f4, ($a1)

