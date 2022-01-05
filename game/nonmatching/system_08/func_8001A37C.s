.section .text
glabel func_8001A37C
  /* 01AF7C 8001A37C 27BDFF90 */     addiu $sp, $sp, -0x70
  /* 01AF80 8001A380 44856000 */      mtc1 $a1, $f12
  /* 01AF84 8001A384 44867000 */      mtc1 $a2, $f14
  /* 01AF88 8001A388 C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 01AF8C 8001A38C C7A60084 */      lwc1 $f6, 0x84($sp)
  /* 01AF90 8001A390 C7A80088 */      lwc1 $f8, 0x88($sp)
  /* 01AF94 8001A394 C7AA008C */      lwc1 $f10, 0x8c($sp)
  /* 01AF98 8001A398 C7B00090 */      lwc1 $f16, 0x90($sp)
  /* 01AF9C 8001A39C C7B20094 */      lwc1 $f18, 0x94($sp)
  /* 01AFA0 8001A3A0 AFBF002C */        sw $ra, 0x2c($sp)
  /* 01AFA4 8001A3A4 AFA40070 */        sw $a0, 0x70($sp)
  /* 01AFA8 8001A3A8 44056000 */      mfc1 $a1, $f12
  /* 01AFAC 8001A3AC 44067000 */      mfc1 $a2, $f14
  /* 01AFB0 8001A3B0 AFA7007C */        sw $a3, 0x7c($sp)
  /* 01AFB4 8001A3B4 27A40030 */     addiu $a0, $sp, 0x30
  /* 01AFB8 8001A3B8 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01AFBC 8001A3BC E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01AFC0 8001A3C0 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01AFC4 8001A3C4 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 01AFC8 8001A3C8 E7B00020 */      swc1 $f16, 0x20($sp)
  /* 01AFCC 8001A3CC 0C00683C */       jal func_8001A0F0
  /* 01AFD0 8001A3D0 E7B20024 */      swc1 $f18, 0x24($sp)
  /* 01AFD4 8001A3D4 27A40030 */     addiu $a0, $sp, 0x30
  /* 01AFD8 8001A3D8 0C00671C */       jal func_80019C70
  /* 01AFDC 8001A3DC 8FA50070 */        lw $a1, 0x70($sp)
  /* 01AFE0 8001A3E0 8FBF002C */        lw $ra, 0x2c($sp)
  /* 01AFE4 8001A3E4 27BD0070 */     addiu $sp, $sp, 0x70
  /* 01AFE8 8001A3E8 03E00008 */        jr $ra
  /* 01AFEC 8001A3EC 00000000 */       nop 

