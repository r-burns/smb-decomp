.section .text
glabel func_8001CD8C
  /* 01D98C 8001CD8C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01D990 8001CD90 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01D994 8001CD94 AFA5001C */        sw $a1, 0x1c($sp)
  /* 01D998 8001CD98 AFA60020 */        sw $a2, 0x20($sp)
  /* 01D99C 8001CD9C AFA70024 */        sw $a3, 0x24($sp)
  /* 01D9A0 8001CDA0 8FA6002C */        lw $a2, 0x2c($sp)
  /* 01D9A4 8001CDA4 8FA50028 */        lw $a1, 0x28($sp)
  /* 01D9A8 8001CDA8 0C007320 */       jal func_8001CC80
  /* 01D9AC 8001CDAC AFA40018 */        sw $a0, 0x18($sp)
  /* 01D9B0 8001CDB0 8FA40018 */        lw $a0, 0x18($sp)
  /* 01D9B4 8001CDB4 C7A4001C */      lwc1 $f4, 0x1c($sp)
  /* 01D9B8 8001CDB8 E4840030 */      swc1 $f4, 0x30($a0)
  /* 01D9BC 8001CDBC C7A60020 */      lwc1 $f6, 0x20($sp)
  /* 01D9C0 8001CDC0 E4860034 */      swc1 $f6, 0x34($a0)
  /* 01D9C4 8001CDC4 C7A80024 */      lwc1 $f8, 0x24($sp)
  /* 01D9C8 8001CDC8 E4880038 */      swc1 $f8, 0x38($a0)
  /* 01D9CC 8001CDCC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01D9D0 8001CDD0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01D9D4 8001CDD4 03E00008 */        jr $ra
  /* 01D9D8 8001CDD8 00000000 */       nop 

  /* 01D9DC 8001CDDC 27BDFFA0 */     addiu $sp, $sp, -0x60
  /* 01D9E0 8001CDE0 44856000 */      mtc1 $a1, $f12
  /* 01D9E4 8001CDE4 44867000 */      mtc1 $a2, $f14
  /* 01D9E8 8001CDE8 C7A40070 */      lwc1 $f4, 0x70($sp)
  /* 01D9EC 8001CDEC C7A60074 */      lwc1 $f6, 0x74($sp)
  /* 01D9F0 8001CDF0 AFBF001C */        sw $ra, 0x1c($sp)
  /* 01D9F4 8001CDF4 AFA40060 */        sw $a0, 0x60($sp)
  /* 01D9F8 8001CDF8 44056000 */      mfc1 $a1, $f12
  /* 01D9FC 8001CDFC 44067000 */      mfc1 $a2, $f14
  /* 01DA00 8001CE00 AFA7006C */        sw $a3, 0x6c($sp)
  /* 01DA04 8001CE04 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DA08 8001CE08 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01DA0C 8001CE0C 0C007363 */       jal func_8001CD8C
  /* 01DA10 8001CE10 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01DA14 8001CE14 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DA18 8001CE18 0C0067A8 */       jal func_80019EA0
  /* 01DA1C 8001CE1C 8FA50060 */        lw $a1, 0x60($sp)
  /* 01DA20 8001CE20 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01DA24 8001CE24 27BD0060 */     addiu $sp, $sp, 0x60
  /* 01DA28 8001CE28 03E00008 */        jr $ra
  /* 01DA2C 8001CE2C 00000000 */       nop 

