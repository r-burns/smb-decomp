.section .text
glabel func_8001BBF8
  /* 01C7F8 8001BBF8 27BDFFA0 */     addiu $sp, $sp, -0x60
  /* 01C7FC 8001BBFC 44856000 */      mtc1 $a1, $f12
  /* 01C800 8001BC00 44867000 */      mtc1 $a2, $f14
  /* 01C804 8001BC04 C7A40070 */      lwc1 $f4, 0x70($sp)
  /* 01C808 8001BC08 AFBF001C */        sw $ra, 0x1c($sp)
  /* 01C80C 8001BC0C AFA40060 */        sw $a0, 0x60($sp)
  /* 01C810 8001BC10 44056000 */      mfc1 $a1, $f12
  /* 01C814 8001BC14 44067000 */      mfc1 $a2, $f14
  /* 01C818 8001BC18 AFA7006C */        sw $a3, 0x6c($sp)
  /* 01C81C 8001BC1C 27A40020 */     addiu $a0, $sp, 0x20
  /* 01C820 8001BC20 0C006E9E */       jal func_8001BA78
  /* 01C824 8001BC24 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01C828 8001BC28 27A40020 */     addiu $a0, $sp, 0x20
  /* 01C82C 8001BC2C 0C0067A8 */       jal mtx4f_to_Mtx_fixed_w
  /* 01C830 8001BC30 8FA50060 */        lw $a1, 0x60($sp)
  /* 01C834 8001BC34 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01C838 8001BC38 27BD0060 */     addiu $sp, $sp, 0x60
  /* 01C83C 8001BC3C 03E00008 */        jr $ra
  /* 01C840 8001BC40 00000000 */       nop 

