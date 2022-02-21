.section .text
glabel func_ovl0_800CE7A8
  /* 04A188 800CE7A8 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 04A18C 800CE7AC C7A4006C */      lwc1 $f4, 0x6c($sp)
  /* 04A190 800CE7B0 C7A60070 */      lwc1 $f6, 0x70($sp)
  /* 04A194 800CE7B4 C7A80074 */      lwc1 $f8, 0x74($sp)
  /* 04A198 800CE7B8 AFA70064 */        sw $a3, 0x64($sp)
  /* 04A19C 800CE7BC E7A40018 */      swc1 $f4, 0x18($sp)
  /* 04A1A0 800CE7C0 E7A6001C */      swc1 $f6, 0x1c($sp)
  /* 04A1A4 800CE7C4 E7A80020 */      swc1 $f8, 0x20($sp)
  /* 04A1A8 800CE7C8 C7A8008C */      lwc1 $f8, 0x8c($sp)
  /* 04A1AC 800CE7CC C7A60088 */      lwc1 $f6, 0x88($sp)
  /* 04A1B0 800CE7D0 C7A40084 */      lwc1 $f4, 0x84($sp)
  /* 04A1B4 800CE7D4 8FAE0064 */        lw $t6, 0x64($sp)
  /* 04A1B8 800CE7D8 8FAF0068 */        lw $t7, 0x68($sp)
  /* 04A1BC 800CE7DC C7AA0078 */      lwc1 $f10, 0x78($sp)
  /* 04A1C0 800CE7E0 C7B0007C */      lwc1 $f16, 0x7c($sp)
  /* 04A1C4 800CE7E4 C7B20080 */      lwc1 $f18, 0x80($sp)
  /* 04A1C8 800CE7E8 8FB80090 */        lw $t8, 0x90($sp)
  /* 04A1CC 800CE7EC 8FB90094 */        lw $t9, 0x94($sp)
  /* 04A1D0 800CE7F0 AFA60060 */        sw $a2, 0x60($sp)
  /* 04A1D4 800CE7F4 00A03025 */        or $a2, $a1, $zero
  /* 04A1D8 800CE7F8 AFBF004C */        sw $ra, 0x4c($sp)
  /* 04A1DC 800CE7FC AFA40058 */        sw $a0, 0x58($sp)
  /* 04A1E0 800CE800 AFA5005C */        sw $a1, 0x5c($sp)
  /* 04A1E4 800CE804 97A70062 */       lhu $a3, 0x62($sp)
  /* 04A1E8 800CE808 8FA50058 */        lw $a1, 0x58($sp)
  /* 04A1EC 800CE80C 00002025 */        or $a0, $zero, $zero
  /* 04A1F0 800CE810 E7A80038 */      swc1 $f8, 0x38($sp)
  /* 04A1F4 800CE814 E7A60034 */      swc1 $f6, 0x34($sp)
  /* 04A1F8 800CE818 E7A40030 */      swc1 $f4, 0x30($sp)
  /* 04A1FC 800CE81C AFAE0010 */        sw $t6, 0x10($sp)
  /* 04A200 800CE820 AFAF0014 */        sw $t7, 0x14($sp)
  /* 04A204 800CE824 E7AA0024 */      swc1 $f10, 0x24($sp)
  /* 04A208 800CE828 E7B00028 */      swc1 $f16, 0x28($sp)
  /* 04A20C 800CE82C E7B2002C */      swc1 $f18, 0x2c($sp)
  /* 04A210 800CE830 AFB8003C */        sw $t8, 0x3c($sp)
  /* 04A214 800CE834 0C033939 */       jal func_ovl0_800CE4E4
  /* 04A218 800CE838 AFB90040 */        sw $t9, 0x40($sp)
  /* 04A21C 800CE83C 10400007 */      beqz $v0, .L800CE85C
  /* 04A220 800CE840 00402025 */        or $a0, $v0, $zero
  /* 04A224 800CE844 8FA60058 */        lw $a2, 0x58($sp)
  /* 04A228 800CE848 00002825 */        or $a1, $zero, $zero
  /* 04A22C 800CE84C AFA20054 */        sw $v0, 0x54($sp)
  /* 04A230 800CE850 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04A234 800CE854 000630C3 */       sra $a2, $a2, 3
  /* 04A238 800CE858 8FA40054 */        lw $a0, 0x54($sp)
  .L800CE85C:
  /* 04A23C 800CE85C 8FBF004C */        lw $ra, 0x4c($sp)
  /* 04A240 800CE860 27BD0058 */     addiu $sp, $sp, 0x58
  /* 04A244 800CE864 00801025 */        or $v0, $a0, $zero
  /* 04A248 800CE868 03E00008 */        jr $ra
  /* 04A24C 800CE86C 00000000 */       nop 

