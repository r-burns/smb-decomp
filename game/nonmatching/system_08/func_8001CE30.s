.section .text
glabel func_8001CE30
  /* 01DA30 8001CE30 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 01DA34 8001CE34 AFBF001C */        sw $ra, 0x1c($sp)
  /* 01DA38 8001CE38 AFB00018 */        sw $s0, 0x18($sp)
  /* 01DA3C 8001CE3C AFA50034 */        sw $a1, 0x34($sp)
  /* 01DA40 8001CE40 00808025 */        or $s0, $a0, $zero
  /* 01DA44 8001CE44 AFA60038 */        sw $a2, 0x38($sp)
  /* 01DA48 8001CE48 0C00C0FC */       jal __sinf
  /* 01DA4C 8001CE4C C7AC0034 */      lwc1 $f12, 0x34($sp)
  /* 01DA50 8001CE50 E7A0002C */      swc1 $f0, 0x2c($sp)
  /* 01DA54 8001CE54 0C00D734 */       jal cosf
  /* 01DA58 8001CE58 C7AC0034 */      lwc1 $f12, 0x34($sp)
  /* 01DA5C 8001CE5C C7AC0038 */      lwc1 $f12, 0x38($sp)
  /* 01DA60 8001CE60 0C00C0FC */       jal __sinf
  /* 01DA64 8001CE64 E7A00024 */      swc1 $f0, 0x24($sp)
  /* 01DA68 8001CE68 C7AC0038 */      lwc1 $f12, 0x38($sp)
  /* 01DA6C 8001CE6C 0C00D734 */       jal cosf
  /* 01DA70 8001CE70 E7A00028 */      swc1 $f0, 0x28($sp)
  /* 01DA74 8001CE74 C7AE0028 */      lwc1 $f14, 0x28($sp)
  /* 01DA78 8001CE78 C7B0002C */      lwc1 $f16, 0x2c($sp)
  /* 01DA7C 8001CE7C C7A20024 */      lwc1 $f2, 0x24($sp)
  /* 01DA80 8001CE80 44806000 */      mtc1 $zero, $f12
  /* 01DA84 8001CE84 46107182 */     mul.s $f6, $f14, $f16
  /* 01DA88 8001CE88 46007107 */     neg.s $f4, $f14
  /* 01DA8C 8001CE8C E6000000 */      swc1 $f0, ($s0)
  /* 01DA90 8001CE90 46100202 */     mul.s $f8, $f0, $f16
  /* 01DA94 8001CE94 E6040008 */      swc1 $f4, 8($s0)
  /* 01DA98 8001CE98 E60C0038 */      swc1 $f12, 0x38($s0)
  /* 01DA9C 8001CE9C 46027282 */     mul.s $f10, $f14, $f2
  /* 01DAA0 8001CEA0 E6060010 */      swc1 $f6, 0x10($s0)
  /* 01DAA4 8001CEA4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01DAA8 8001CEA8 46020102 */     mul.s $f4, $f0, $f2
  /* 01DAAC 8001CEAC C6000038 */      lwc1 $f0, 0x38($s0)
  /* 01DAB0 8001CEB0 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 01DAB4 8001CEB4 46008487 */     neg.s $f18, $f16
  /* 01DAB8 8001CEB8 E6080018 */      swc1 $f8, 0x18($s0)
  /* 01DABC 8001CEBC E60A0020 */      swc1 $f10, 0x20($s0)
  /* 01DAC0 8001CEC0 E6120024 */      swc1 $f18, 0x24($s0)
  /* 01DAC4 8001CEC4 E6040028 */      swc1 $f4, 0x28($s0)
  /* 01DAC8 8001CEC8 E6020014 */      swc1 $f2, 0x14($s0)
  /* 01DACC 8001CECC E60C0004 */      swc1 $f12, 4($s0)
  /* 01DAD0 8001CED0 E6000034 */      swc1 $f0, 0x34($s0)
  /* 01DAD4 8001CED4 E6000030 */      swc1 $f0, 0x30($s0)
  /* 01DAD8 8001CED8 E600002C */      swc1 $f0, 0x2c($s0)
  /* 01DADC 8001CEDC E600001C */      swc1 $f0, 0x1c($s0)
  /* 01DAE0 8001CEE0 E600000C */      swc1 $f0, 0xc($s0)
  /* 01DAE4 8001CEE4 E606003C */      swc1 $f6, 0x3c($s0)
  /* 01DAE8 8001CEE8 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01DAEC 8001CEEC 8FB00018 */        lw $s0, 0x18($sp)
  /* 01DAF0 8001CEF0 27BD0030 */     addiu $sp, $sp, 0x30
  /* 01DAF4 8001CEF4 03E00008 */        jr $ra
  /* 01DAF8 8001CEF8 00000000 */       nop 

  /* 01DAFC 8001CEFC 44856000 */      mtc1 $a1, $f12
  /* 01DB00 8001CF00 44867000 */      mtc1 $a2, $f14
  /* 01DB04 8001CF04 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 01DB08 8001CF08 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01DB0C 8001CF0C AFA40058 */        sw $a0, 0x58($sp)
  /* 01DB10 8001CF10 44056000 */      mfc1 $a1, $f12
  /* 01DB14 8001CF14 44067000 */      mfc1 $a2, $f14
  /* 01DB18 8001CF18 0C00738C */       jal func_8001CE30
  /* 01DB1C 8001CF1C 27A40018 */     addiu $a0, $sp, 0x18
  /* 01DB20 8001CF20 27A40018 */     addiu $a0, $sp, 0x18
  /* 01DB24 8001CF24 0C0067A8 */       jal mtx4f_to_Mtx_fixed_w
  /* 01DB28 8001CF28 8FA50058 */        lw $a1, 0x58($sp)
  /* 01DB2C 8001CF2C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01DB30 8001CF30 27BD0058 */     addiu $sp, $sp, 0x58
  /* 01DB34 8001CF34 03E00008 */        jr $ra
  /* 01DB38 8001CF38 00000000 */       nop 

