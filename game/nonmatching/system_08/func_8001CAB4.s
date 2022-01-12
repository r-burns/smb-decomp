.section .text
glabel func_8001CAB4
  /* 01D6B4 8001CAB4 44856000 */      mtc1 $a1, $f12
  /* 01D6B8 8001CAB8 44867000 */      mtc1 $a2, $f14
  /* 01D6BC 8001CABC 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 01D6C0 8001CAC0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01D6C4 8001CAC4 AFA40058 */        sw $a0, 0x58($sp)
  /* 01D6C8 8001CAC8 44056000 */      mfc1 $a1, $f12
  /* 01D6CC 8001CACC 44067000 */      mfc1 $a2, $f14
  /* 01D6D0 8001CAD0 AFA70064 */        sw $a3, 0x64($sp)
  /* 01D6D4 8001CAD4 0C00725F */       jal func_8001C97C
  /* 01D6D8 8001CAD8 27A40018 */     addiu $a0, $sp, 0x18
  /* 01D6DC 8001CADC 27A40018 */     addiu $a0, $sp, 0x18
  /* 01D6E0 8001CAE0 0C0067A8 */       jal mtx4f_to_Mtx_fixed_w
  /* 01D6E4 8001CAE4 8FA50058 */        lw $a1, 0x58($sp)
  /* 01D6E8 8001CAE8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01D6EC 8001CAEC 27BD0058 */     addiu $sp, $sp, 0x58
  /* 01D6F0 8001CAF0 03E00008 */        jr $ra
  /* 01D6F4 8001CAF4 00000000 */       nop 

