.section .text
glabel func_80018910
  /* 019510 80018910 3C048004 */       lui $a0, %hi(D_8003B944)
  /* 019514 80018914 8C84B944 */        lw $a0, %lo(D_8003B944)($a0)
  /* 019518 80018918 3C010003 */       lui $at, (0x343FD >> 16) # 214013
  /* 01951C 8001891C 342143FD */       ori $at, $at, (0x343FD & 0xFFFF) # 214013
  /* 019520 80018920 8C830000 */        lw $v1, ($a0)
  /* 019524 80018924 00610019 */     multu $v1, $at
  /* 019528 80018928 3C010026 */       lui $at, (0x269EC3 >> 16) # 2531011
  /* 01952C 8001892C 34219EC3 */       ori $at, $at, (0x269EC3 & 0xFFFF) # 2531011
  /* 019530 80018930 00001812 */      mflo $v1
  /* 019534 80018934 00611821 */      addu $v1, $v1, $at
  /* 019538 80018938 00031403 */       sra $v0, $v1, 0x10
  /* 01953C 8001893C 3042FFFF */      andi $v0, $v0, 0xffff
  /* 019540 80018940 03E00008 */        jr $ra
  /* 019544 80018944 AC830000 */        sw $v1, ($a0)

