.section .text
glabel func_800099A8
  /* 00A5A8 800099A8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A5AC 800099AC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A5B0 800099B0 AFA60028 */        sw $a2, 0x28($sp)
  /* 00A5B4 800099B4 0C002629 */       jal func_800098A4
  /* 00A5B8 800099B8 30C600FF */      andi $a2, $a2, 0xff
  /* 00A5BC 800099BC 14400003 */      bnez $v0, .L800099CC
  /* 00A5C0 800099C0 00402025 */        or $a0, $v0, $zero
  /* 00A5C4 800099C4 10000004 */         b .L800099D8
  /* 00A5C8 800099C8 00001025 */        or $v0, $zero, $zero
  .L800099CC:
  /* 00A5CC 800099CC 0C001EAA */       jal func_80007AA8
  /* 00A5D0 800099D0 AFA4001C */        sw $a0, 0x1c($sp)
  /* 00A5D4 800099D4 8FA2001C */        lw $v0, 0x1c($sp)
  .L800099D8:
  /* 00A5D8 800099D8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A5DC 800099DC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A5E0 800099E0 03E00008 */        jr $ra
  /* 00A5E4 800099E4 00000000 */       nop 

  /* 00A5E8 800099E8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A5EC 800099EC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A5F0 800099F0 AFA60028 */        sw $a2, 0x28($sp)
  /* 00A5F4 800099F4 00C07025 */        or $t6, $a2, $zero
  /* 00A5F8 800099F8 8DC70010 */        lw $a3, 0x10($t6)
  /* 00A5FC 800099FC 0C002629 */       jal func_800098A4
  /* 00A600 80009A00 90C6000C */       lbu $a2, 0xc($a2)
  /* 00A604 80009A04 14400003 */      bnez $v0, .L80009A14
  /* 00A608 80009A08 00402025 */        or $a0, $v0, $zero
  /* 00A60C 80009A0C 10000005 */         b .L80009A24
  /* 00A610 80009A10 00001025 */        or $v0, $zero, $zero
  .L80009A14:
  /* 00A614 80009A14 8FA50028 */        lw $a1, 0x28($sp)
  /* 00A618 80009A18 0C001E75 */       jal func_800079D4
  /* 00A61C 80009A1C AFA4001C */        sw $a0, 0x1c($sp)
  /* 00A620 80009A20 8FA2001C */        lw $v0, 0x1c($sp)
  .L80009A24:
  /* 00A624 80009A24 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A628 80009A28 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A62C 80009A2C 03E00008 */        jr $ra
  /* 00A630 80009A30 00000000 */       nop 

  /* 00A634 80009A34 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A638 80009A38 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A63C 80009A3C AFA60028 */        sw $a2, 0x28($sp)
  /* 00A640 80009A40 00C07025 */        or $t6, $a2, $zero
  /* 00A644 80009A44 8DC70010 */        lw $a3, 0x10($t6)
  /* 00A648 80009A48 0C002629 */       jal func_800098A4
  /* 00A64C 80009A4C 90C6000C */       lbu $a2, 0xc($a2)
  /* 00A650 80009A50 14400003 */      bnez $v0, .L80009A60
  /* 00A654 80009A54 00402025 */        or $a0, $v0, $zero
  /* 00A658 80009A58 10000006 */         b .L80009A74
  /* 00A65C 80009A5C 00001025 */        or $v0, $zero, $zero
  .L80009A60:
  /* 00A660 80009A60 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00A664 80009A64 8DE50008 */        lw $a1, 8($t7)
  /* 00A668 80009A68 0C001E75 */       jal func_800079D4
  /* 00A66C 80009A6C AFA4001C */        sw $a0, 0x1c($sp)
  /* 00A670 80009A70 8FA2001C */        lw $v0, 0x1c($sp)
  .L80009A74:
  /* 00A674 80009A74 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A678 80009A78 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A67C 80009A7C 03E00008 */        jr $ra
  /* 00A680 80009A80 00000000 */       nop 
