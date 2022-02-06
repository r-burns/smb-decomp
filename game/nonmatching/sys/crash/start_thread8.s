.section .text
glabel start_thread8
  /* 023F38 80023338 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 023F3C 8002333C AFBF001C */        sw $ra, 0x1c($sp)
  /* 023F40 80023340 3C04800A */       lui $a0, %hi(D_8009E3B8)
  /* 023F44 80023344 3C05800A */       lui $a1, %hi(D_8009E3D0)
  /* 023F48 80023348 24A5E3D0 */     addiu $a1, $a1, %lo(D_8009E3D0)
  /* 023F4C 8002334C 2484E3B8 */     addiu $a0, $a0, %lo(D_8009E3B8)
  /* 023F50 80023350 0C00D120 */       jal osCreateMesgQueue
  /* 023F54 80023354 24060001 */     addiu $a2, $zero, 1
  /* 023F58 80023358 3C0E800A */       lui $t6, %hi(D_8009E3B8)
  /* 023F5C 8002335C 25CEE3B8 */     addiu $t6, $t6, %lo(D_8009E3B8)
  /* 023F60 80023360 3C04800A */       lui $a0, %hi(D_8009DA08)
  /* 023F64 80023364 3C068002 */       lui $a2, %hi(thread8_crash_debugger)
  /* 023F68 80023368 240F00FA */     addiu $t7, $zero, 0xfa
  /* 023F6C 8002336C AFAF0014 */        sw $t7, 0x14($sp)
  /* 023F70 80023370 24C63190 */     addiu $a2, $a2, %lo(thread8_crash_debugger)
  /* 023F74 80023374 2484DA08 */     addiu $a0, $a0, %lo(D_8009DA08)
  /* 023F78 80023378 AFAE0010 */        sw $t6, 0x10($sp)
  /* 023F7C 8002337C 24050008 */     addiu $a1, $zero, 8
  /* 023F80 80023380 0C00C788 */       jal osCreateThread
  /* 023F84 80023384 00003825 */        or $a3, $zero, $zero
  /* 023F88 80023388 3C04800A */       lui $a0, %hi(D_8009DA08)
  /* 023F8C 8002338C 0C00E464 */       jal osStartThread
  /* 023F90 80023390 2484DA08 */     addiu $a0, $a0, %lo(D_8009DA08)
  /* 023F94 80023394 8FBF001C */        lw $ra, 0x1c($sp)
  /* 023F98 80023398 27BD0020 */     addiu $sp, $sp, 0x20
  /* 023F9C 8002339C 03E00008 */        jr $ra
  /* 023FA0 800233A0 00000000 */       nop 

