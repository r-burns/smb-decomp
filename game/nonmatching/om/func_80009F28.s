.section .text
glabel func_80009F28
  /* 00AB28 80009F28 240E0040 */     addiu $t6, $zero, 0x40
  /* 00AB2C 80009F2C A08E000D */        sb $t6, 0xd($a0)
  /* 00AB30 80009F30 AC860028 */        sw $a2, 0x28($a0)
  /* 00AB34 80009F34 AC85002C */        sw $a1, 0x2c($a0)
  /* 00AB38 80009F38 8FB90014 */        lw $t9, 0x14($sp)
  /* 00AB3C 80009F3C 8FB80010 */        lw $t8, 0x10($sp)
  /* 00AB40 80009F40 24080000 */     addiu $t0, $zero, 0
  /* 00AB44 80009F44 AC990034 */        sw $t9, 0x34($a0)
  /* 00AB48 80009F48 AC980030 */        sw $t8, 0x30($a0)
  /* 00AB4C 80009F4C 8FAF0018 */        lw $t7, 0x18($sp)
  /* 00AB50 80009F50 24090000 */     addiu $t1, $zero, 0
  /* 00AB54 80009F54 AC890044 */        sw $t1, 0x44($a0)
  /* 00AB58 80009F58 AC880040 */        sw $t0, 0x40($a0)
  /* 00AB5C 80009F5C 3C0A8004 */       lui $t2, %hi(D_8003B6E8)
  /* 00AB60 80009F60 AC8F0038 */        sw $t7, 0x38($a0)
  /* 00AB64 80009F64 8D4AB6E8 */        lw $t2, %lo(D_8003B6E8)($t2)
  /* 00AB68 80009F68 254BFFFF */     addiu $t3, $t2, -1
  /* 00AB6C 80009F6C 03E00008 */        jr $ra
  /* 00AB70 80009F70 A08B000E */        sb $t3, 0xe($a0)

