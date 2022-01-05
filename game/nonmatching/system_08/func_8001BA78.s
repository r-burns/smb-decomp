.section .text
glabel func_8001BA78
  /* 01C678 8001BA78 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 01C67C 8001BA7C AFA7003C */        sw $a3, 0x3c($sp)
  /* 01C680 8001BA80 00803825 */        or $a3, $a0, $zero
  /* 01C684 8001BA84 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01C688 8001BA88 AFA40030 */        sw $a0, 0x30($sp)
  /* 01C68C 8001BA8C AFA50034 */        sw $a1, 0x34($sp)
  /* 01C690 8001BA90 AFA60038 */        sw $a2, 0x38($sp)
  /* 01C694 8001BA94 27A60040 */     addiu $a2, $sp, 0x40
  /* 01C698 8001BA98 27A5003C */     addiu $a1, $sp, 0x3c
  /* 01C69C 8001BA9C AFA70030 */        sw $a3, 0x30($sp)
  /* 01C6A0 8001BAA0 0C00D4E0 */       jal guNormalize
  /* 01C6A4 8001BAA4 27A40038 */     addiu $a0, $sp, 0x38
  /* 01C6A8 8001BAA8 0C00C0FC */       jal __sinf
  /* 01C6AC 8001BAAC C7AC0034 */      lwc1 $f12, 0x34($sp)
  /* 01C6B0 8001BAB0 C7AC0034 */      lwc1 $f12, 0x34($sp)
  /* 01C6B4 8001BAB4 0C00D734 */       jal cosf
  /* 01C6B8 8001BAB8 E7A0002C */      swc1 $f0, 0x2c($sp)
  /* 01C6BC 8001BABC C7A60038 */      lwc1 $f6, 0x38($sp)
  /* 01C6C0 8001BAC0 C7A8003C */      lwc1 $f8, 0x3c($sp)
  /* 01C6C4 8001BAC4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01C6C8 8001BAC8 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 01C6CC 8001BACC 46083282 */     mul.s $f10, $f6, $f8
  /* 01C6D0 8001BAD0 8FA70030 */        lw $a3, 0x30($sp)
  /* 01C6D4 8001BAD4 46002081 */     sub.s $f2, $f4, $f0
  /* 01C6D8 8001BAD8 C7A40040 */      lwc1 $f4, 0x40($sp)
  /* 01C6DC 8001BADC C7AE002C */      lwc1 $f14, 0x2c($sp)
  /* 01C6E0 8001BAE0 46025482 */     mul.s $f18, $f10, $f2
  /* 01C6E4 8001BAE4 00000000 */       nop 
  /* 01C6E8 8001BAE8 46044282 */     mul.s $f10, $f8, $f4
  /* 01C6EC 8001BAEC 00000000 */       nop 
  /* 01C6F0 8001BAF0 46025302 */     mul.s $f12, $f10, $f2
  /* 01C6F4 8001BAF4 00000000 */       nop 
  /* 01C6F8 8001BAF8 46062202 */     mul.s $f8, $f4, $f6
  /* 01C6FC 8001BAFC 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 01C700 8001BB00 46024282 */     mul.s $f10, $f8, $f2
  /* 01C704 8001BB04 00000000 */       nop 
  /* 01C708 8001BB08 46063402 */     mul.s $f16, $f6, $f6
  /* 01C70C 8001BB0C E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 01C710 8001BB10 46102201 */     sub.s $f8, $f4, $f16
  /* 01C714 8001BB14 46004282 */     mul.s $f10, $f8, $f0
  /* 01C718 8001BB18 46105180 */     add.s $f6, $f10, $f16
  /* 01C71C 8001BB1C E4E60000 */      swc1 $f6, ($a3)
  /* 01C720 8001BB20 C7A40038 */      lwc1 $f4, 0x38($sp)
  /* 01C724 8001BB24 460E2202 */     mul.s $f8, $f4, $f14
  /* 01C728 8001BB28 46086281 */     sub.s $f10, $f12, $f8
  /* 01C72C 8001BB2C E4EA0024 */      swc1 $f10, 0x24($a3)
  /* 01C730 8001BB30 C7A60038 */      lwc1 $f6, 0x38($sp)
  /* 01C734 8001BB34 460E3102 */     mul.s $f4, $f6, $f14
  /* 01C738 8001BB38 460C2200 */     add.s $f8, $f4, $f12
  /* 01C73C 8001BB3C 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 01C740 8001BB40 E4E80018 */      swc1 $f8, 0x18($a3)
  /* 01C744 8001BB44 C7AA003C */      lwc1 $f10, 0x3c($sp)
  /* 01C748 8001BB48 460A5182 */     mul.s $f6, $f10, $f10
  /* 01C74C 8001BB4C 46062201 */     sub.s $f8, $f4, $f6
  /* 01C750 8001BB50 E7A60018 */      swc1 $f6, 0x18($sp)
  /* 01C754 8001BB54 46004282 */     mul.s $f10, $f8, $f0
  /* 01C758 8001BB58 46065100 */     add.s $f4, $f10, $f6
  /* 01C75C 8001BB5C E4E40014 */      swc1 $f4, 0x14($a3)
  /* 01C760 8001BB60 C7A8003C */      lwc1 $f8, 0x3c($sp)
  /* 01C764 8001BB64 C7A6001C */      lwc1 $f6, 0x1c($sp)
  /* 01C768 8001BB68 460E4282 */     mul.s $f10, $f8, $f14
  /* 01C76C 8001BB6C 46065100 */     add.s $f4, $f10, $f6
  /* 01C770 8001BB70 E4E40020 */      swc1 $f4, 0x20($a3)
  /* 01C774 8001BB74 C7AA003C */      lwc1 $f10, 0x3c($sp)
  /* 01C778 8001BB78 C7A8001C */      lwc1 $f8, 0x1c($sp)
  /* 01C77C 8001BB7C 460E5182 */     mul.s $f6, $f10, $f14
  /* 01C780 8001BB80 46064101 */     sub.s $f4, $f8, $f6
  /* 01C784 8001BB84 44814000 */      mtc1 $at, $f8 # 1.0 to cop1
  /* 01C788 8001BB88 E4E40008 */      swc1 $f4, 8($a3)
  /* 01C78C 8001BB8C C7AA0040 */      lwc1 $f10, 0x40($sp)
  /* 01C790 8001BB90 460A5082 */     mul.s $f2, $f10, $f10
  /* 01C794 8001BB94 46024181 */     sub.s $f6, $f8, $f2
  /* 01C798 8001BB98 46003102 */     mul.s $f4, $f6, $f0
  /* 01C79C 8001BB9C 44800000 */      mtc1 $zero, $f0
  /* 01C7A0 8001BBA0 46022280 */     add.s $f10, $f4, $f2
  /* 01C7A4 8001BBA4 E4EA0028 */      swc1 $f10, 0x28($a3)
  /* 01C7A8 8001BBA8 C7A80040 */      lwc1 $f8, 0x40($sp)
  /* 01C7AC 8001BBAC 460E4182 */     mul.s $f6, $f8, $f14
  /* 01C7B0 8001BBB0 46069101 */     sub.s $f4, $f18, $f6
  /* 01C7B4 8001BBB4 E4E40010 */      swc1 $f4, 0x10($a3)
  /* 01C7B8 8001BBB8 C7AA0040 */      lwc1 $f10, 0x40($sp)
  /* 01C7BC 8001BBBC 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 01C7C0 8001BBC0 E4E0000C */      swc1 $f0, 0xc($a3)
  /* 01C7C4 8001BBC4 460E5202 */     mul.s $f8, $f10, $f14
  /* 01C7C8 8001BBC8 E4E0001C */      swc1 $f0, 0x1c($a3)
  /* 01C7CC 8001BBCC E4E0002C */      swc1 $f0, 0x2c($a3)
  /* 01C7D0 8001BBD0 E4E00030 */      swc1 $f0, 0x30($a3)
  /* 01C7D4 8001BBD4 E4E00034 */      swc1 $f0, 0x34($a3)
  /* 01C7D8 8001BBD8 E4E00038 */      swc1 $f0, 0x38($a3)
  /* 01C7DC 8001BBDC E4E4003C */      swc1 $f4, 0x3c($a3)
  /* 01C7E0 8001BBE0 46124180 */     add.s $f6, $f8, $f18
  /* 01C7E4 8001BBE4 E4E60004 */      swc1 $f6, 4($a3)
  /* 01C7E8 8001BBE8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01C7EC 8001BBEC 27BD0030 */     addiu $sp, $sp, 0x30
  /* 01C7F0 8001BBF0 03E00008 */        jr $ra
  /* 01C7F4 8001BBF4 00000000 */       nop 

