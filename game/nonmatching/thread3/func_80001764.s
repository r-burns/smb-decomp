glabel func_80001764
  /* 002364 80001764 3C058004 */       lui $a1, %hi(D_80045034)
  /* 002368 80001768 24A55034 */     addiu $a1, $a1, %lo(D_80045034)
  /* 00236C 8000176C 90A30000 */       lbu $v1, ($a1) # D_80045034 + 0
  /* 002370 80001770 3C018004 */       lui $at, %hi(D_80045028)
  /* 002374 80001774 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 002378 80001778 00037080 */       sll $t6, $v1, 2
  /* 00237C 8000177C 002E0821 */      addu $at, $at, $t6
  /* 002380 80001780 AC245028 */        sw $a0, %lo(D_80045028)($at)
  /* 002384 80001784 24010002 */     addiu $at, $zero, 2
  /* 002388 80001788 14610003 */       bne $v1, $at, .L80001798
  /* 00238C 8000178C AFBF0014 */        sw $ra, 0x14($sp)
  /* 002390 80001790 10000003 */         b .L800017A0
  /* 002394 80001794 A0A00000 */        sb $zero, ($a1) # D_80045034 + 0
  .L80001798:
  /* 002398 80001798 246F0001 */     addiu $t7, $v1, 1
  /* 00239C 8000179C A0AF0000 */        sb $t7, ($a1) # D_80045034 + 0
  .L800017A0:
  /* 0023A0 800017A0 0C0005B6 */       jal func_800016D8
  /* 0023A4 800017A4 00000000 */       nop 
  /* 0023A8 800017A8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0023AC 800017AC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0023B0 800017B0 03E00008 */        jr $ra
  /* 0023B4 800017B4 00000000 */       nop 

