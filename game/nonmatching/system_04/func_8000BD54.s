.section .late_rodata
glabel D_8003DDD4
  /* 3D9D4 03E9D4 8003DDD4 */
  .word 0xfeffffff # .float -1.7014117e38

.section .text
glabel func_8000BD54
  /* 00C954 8000BD54 8C820090 */        lw $v0, 0x90($a0)
  /* 00C958 8000BD58 44866000 */      mtc1 $a2, $f12
  /* 00C95C 8000BD5C 3C018004 */       lui $at, %hi(D_8003DDD4)
  /* 00C960 8000BD60 50400006 */      beql $v0, $zero, .L8000BD7C
  /* 00C964 8000BD64 AC850094 */        sw $a1, 0x94($a0)
  /* 00C968 8000BD68 A0400005 */        sb $zero, 5($v0)
  .L8000BD6C:
  /* 00C96C 8000BD6C 8C420000 */        lw $v0, ($v0)
  /* 00C970 8000BD70 5440FFFE */      bnel $v0, $zero, .L8000BD6C
  /* 00C974 8000BD74 A0400005 */        sb $zero, 5($v0)
  /* 00C978 8000BD78 AC850094 */        sw $a1, 0x94($a0)
  .L8000BD7C:
  /* 00C97C 8000BD7C C424DDD4 */      lwc1 $f4, %lo(D_8003DDD4)($at)
  /* 00C980 8000BD80 E48C00A0 */      swc1 $f12, 0xa0($a0)
  /* 00C984 8000BD84 03E00008 */        jr $ra
  /* 00C988 8000BD88 E4840098 */      swc1 $f4, 0x98($a0)

