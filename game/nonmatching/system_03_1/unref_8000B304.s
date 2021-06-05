.section .text
glabel unref_8000B304
  /* 00BF04 8000B304 14800003 */      bnez $a0, .L8000B314
  /* 00BF08 8000B308 00000000 */       nop 
  /* 00BF0C 8000B30C 3C048004 */       lui $a0, %hi(D_80046A60)
  /* 00BF10 8000B310 8C846A60 */        lw $a0, %lo(D_80046A60)($a0)
  .L8000B314:
  /* 00BF14 8000B314 03E00008 */        jr $ra
  /* 00BF18 8000B318 A0800015 */        sb $zero, 0x15($a0)

