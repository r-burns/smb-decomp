.section .text
glabel func_8001C1C8
  /* 01CDC8 8001C1C8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01CDCC 8001C1CC AFBF0014 */        sw $ra, 0x14($sp)
  /* 01CDD0 8001C1D0 AFA5001C */        sw $a1, 0x1c($sp)
  /* 01CDD4 8001C1D4 AFA60020 */        sw $a2, 0x20($sp)
  /* 01CDD8 8001C1D8 AFA70024 */        sw $a3, 0x24($sp)
  /* 01CDDC 8001C1DC 8FA70030 */        lw $a3, 0x30($sp)
  /* 01CDE0 8001C1E0 8FA6002C */        lw $a2, 0x2c($sp)
  /* 01CDE4 8001C1E4 8FA50028 */        lw $a1, 0x28($sp)
  /* 01CDE8 8001C1E8 0C006F7B */       jal func_8001BDEC
  /* 01CDEC 8001C1EC AFA40018 */        sw $a0, 0x18($sp)
  /* 01CDF0 8001C1F0 8FA40018 */        lw $a0, 0x18($sp)
  /* 01CDF4 8001C1F4 C7A4001C */      lwc1 $f4, 0x1c($sp)
  /* 01CDF8 8001C1F8 E4840030 */      swc1 $f4, 0x30($a0)
  /* 01CDFC 8001C1FC C7A60020 */      lwc1 $f6, 0x20($sp)
  /* 01CE00 8001C200 E4860034 */      swc1 $f6, 0x34($a0)
  /* 01CE04 8001C204 C7A80024 */      lwc1 $f8, 0x24($sp)
  /* 01CE08 8001C208 E4880038 */      swc1 $f8, 0x38($a0)
  /* 01CE0C 8001C20C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01CE10 8001C210 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01CE14 8001C214 03E00008 */        jr $ra
  /* 01CE18 8001C218 00000000 */       nop 

