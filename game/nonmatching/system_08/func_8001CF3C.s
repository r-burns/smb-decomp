.section .text
glabel func_8001CF3C
  /* 01DB3C 8001CF3C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01DB40 8001CF40 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01DB44 8001CF44 AFA5001C */        sw $a1, 0x1c($sp)
  /* 01DB48 8001CF48 AFA60020 */        sw $a2, 0x20($sp)
  /* 01DB4C 8001CF4C AFA70024 */        sw $a3, 0x24($sp)
  /* 01DB50 8001CF50 8FA6002C */        lw $a2, 0x2c($sp)
  /* 01DB54 8001CF54 8FA50028 */        lw $a1, 0x28($sp)
  /* 01DB58 8001CF58 0C00738C */       jal func_8001CE30
  /* 01DB5C 8001CF5C AFA40018 */        sw $a0, 0x18($sp)
  /* 01DB60 8001CF60 8FA40018 */        lw $a0, 0x18($sp)
  /* 01DB64 8001CF64 C7A4001C */      lwc1 $f4, 0x1c($sp)
  /* 01DB68 8001CF68 E4840030 */      swc1 $f4, 0x30($a0)
  /* 01DB6C 8001CF6C C7A60020 */      lwc1 $f6, 0x20($sp)
  /* 01DB70 8001CF70 E4860034 */      swc1 $f6, 0x34($a0)
  /* 01DB74 8001CF74 C7A80024 */      lwc1 $f8, 0x24($sp)
  /* 01DB78 8001CF78 E4880038 */      swc1 $f8, 0x38($a0)
  /* 01DB7C 8001CF7C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01DB80 8001CF80 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01DB84 8001CF84 03E00008 */        jr $ra
  /* 01DB88 8001CF88 00000000 */       nop 

  /* 01DB8C 8001CF8C 27BDFFA0 */     addiu $sp, $sp, -0x60
  /* 01DB90 8001CF90 44856000 */      mtc1 $a1, $f12
  /* 01DB94 8001CF94 44867000 */      mtc1 $a2, $f14
  /* 01DB98 8001CF98 C7A40070 */      lwc1 $f4, 0x70($sp)
  /* 01DB9C 8001CF9C C7A60074 */      lwc1 $f6, 0x74($sp)
  /* 01DBA0 8001CFA0 AFBF001C */        sw $ra, 0x1c($sp)
  /* 01DBA4 8001CFA4 AFA40060 */        sw $a0, 0x60($sp)
  /* 01DBA8 8001CFA8 44056000 */      mfc1 $a1, $f12
  /* 01DBAC 8001CFAC 44067000 */      mfc1 $a2, $f14
  /* 01DBB0 8001CFB0 AFA7006C */        sw $a3, 0x6c($sp)
  /* 01DBB4 8001CFB4 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DBB8 8001CFB8 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01DBBC 8001CFBC 0C0073CF */       jal func_8001CF3C
  /* 01DBC0 8001CFC0 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01DBC4 8001CFC4 27A40020 */     addiu $a0, $sp, 0x20
  /* 01DBC8 8001CFC8 0C0067A8 */       jal func_80019EA0
  /* 01DBCC 8001CFCC 8FA50060 */        lw $a1, 0x60($sp)
  /* 01DBD0 8001CFD0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01DBD4 8001CFD4 27BD0060 */     addiu $sp, $sp, 0x60
  /* 01DBD8 8001CFD8 03E00008 */        jr $ra
  /* 01DBDC 8001CFDC 00000000 */       nop 

