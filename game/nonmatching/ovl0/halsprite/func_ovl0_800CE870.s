.section .text
glabel func_ovl0_800CE870
  /* 04A250 800CE870 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04A254 800CE874 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04A258 800CE878 AFA40020 */        sw $a0, 0x20($sp)
  /* 04A25C 800CE87C 00A03025 */        or $a2, $a1, $zero
  /* 04A260 800CE880 8FA50020 */        lw $a1, 0x20($sp)
  /* 04A264 800CE884 0C0339AE */       jal func_ovl0_800CE6B8
  /* 04A268 800CE888 00002025 */        or $a0, $zero, $zero
  /* 04A26C 800CE88C 10400007 */      beqz $v0, .L800CE8AC
  /* 04A270 800CE890 00402025 */        or $a0, $v0, $zero
  /* 04A274 800CE894 8FA60020 */        lw $a2, 0x20($sp)
  /* 04A278 800CE898 00002825 */        or $a1, $zero, $zero
  /* 04A27C 800CE89C AFA2001C */        sw $v0, 0x1c($sp)
  /* 04A280 800CE8A0 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04A284 800CE8A4 000630C3 */       sra $a2, $a2, 3
  /* 04A288 800CE8A8 8FA4001C */        lw $a0, 0x1c($sp)
  .L800CE8AC:
  /* 04A28C 800CE8AC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04A290 800CE8B0 27BD0020 */     addiu $sp, $sp, 0x20
  /* 04A294 800CE8B4 00801025 */        or $v0, $a0, $zero
  /* 04A298 800CE8B8 03E00008 */        jr $ra
  /* 04A29C 800CE8BC 00000000 */       nop 

