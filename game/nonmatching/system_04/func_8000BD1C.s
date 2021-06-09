.section .late_rodata
glabel D_8003DDD0
  /* 3D9D0 03E9D0 8003DDD0 */
  .word 0xfeffffff # .float -1.7014117e38

.section .text
glabel func_8000BD1C
  /* 00C91C 8000BD1C 8C82006C */        lw $v0, 0x6c($a0)
  /* 00C920 8000BD20 44866000 */      mtc1 $a2, $f12
  /* 00C924 8000BD24 3C018004 */       lui $at, %hi(D_8003DDD0)
  /* 00C928 8000BD28 50400006 */      beql $v0, $zero, .L8000BD44
  /* 00C92C 8000BD2C AC850070 */        sw $a1, 0x70($a0)
  /* 00C930 8000BD30 A0400005 */        sb $zero, 5($v0)
  .L8000BD34:
  /* 00C934 8000BD34 8C420000 */        lw $v0, ($v0)
  /* 00C938 8000BD38 5440FFFE */      bnel $v0, $zero, .L8000BD34
  /* 00C93C 8000BD3C A0400005 */        sb $zero, 5($v0)
  /* 00C940 8000BD40 AC850070 */        sw $a1, 0x70($a0)
  .L8000BD44:
  /* 00C944 8000BD44 C424DDD0 */      lwc1 $f4, %lo(D_8003DDD0)($at)
  /* 00C948 8000BD48 E48C007C */      swc1 $f12, 0x7c($a0)
  /* 00C94C 8000BD4C 03E00008 */        jr $ra
  /* 00C950 8000BD50 E4840074 */      swc1 $f4, 0x74($a0)

