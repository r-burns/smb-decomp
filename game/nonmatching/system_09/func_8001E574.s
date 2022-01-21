.section .text
glabel func_8001E574
  /* 01F174 8001E574 44866000 */      mtc1 $a2, $f12
  /* 01F178 8001E578 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01F17C 8001E57C AFA40018 */        sw $a0, 0x18($sp)
  /* 01F180 8001E580 AFA5001C */        sw $a1, 0x1c($sp)
  /* 01F184 8001E584 00A02025 */        or $a0, $a1, $zero
  /* 01F188 8001E588 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01F18C 8001E58C 44056000 */      mfc1 $a1, $f12
  /* 01F190 8001E590 0C0078D1 */       jal func_8001E344
  /* 01F194 8001E594 00000000 */       nop 
  /* 01F198 8001E598 44060000 */      mfc1 $a2, $f0
  /* 01F19C 8001E59C 8FA40018 */        lw $a0, 0x18($sp)
  /* 01F1A0 8001E5A0 0C007808 */       jal func_8001E020
  /* 01F1A4 8001E5A4 8FA5001C */        lw $a1, 0x1c($sp)
  /* 01F1A8 8001E5A8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01F1AC 8001E5AC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01F1B0 8001E5B0 03E00008 */        jr $ra
  /* 01F1B4 8001E5B4 00000000 */       nop 

  /* 01F1B8 8001E5B8 00000000 */       nop 
  /* 01F1BC 8001E5BC 00000000 */       nop 
