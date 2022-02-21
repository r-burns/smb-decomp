.section .text
glabel unref_ovl0_800D2720
  /* 04E100 800D2720 18800006 */      blez $a0, .L800D273C
  /* 04E104 800D2724 28810009 */      slti $at, $a0, 9
  /* 04E108 800D2728 10200004 */      beqz $at, .L800D273C
  /* 04E10C 800D272C 00047080 */       sll $t6, $a0, 2
  /* 04E110 800D2730 3C01800D */       lui $at, %hi(D_ovl0_800D639C)
  /* 04E114 800D2734 002E0821 */      addu $at, $at, $t6
  /* 04E118 800D2738 AC25639C */        sw $a1, %lo(D_ovl0_800D639C)($at)
  .L800D273C:
  /* 04E11C 800D273C 03E00008 */        jr $ra
  /* 04E120 800D2740 00000000 */       nop 

