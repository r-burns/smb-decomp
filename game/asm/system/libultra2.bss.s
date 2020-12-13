.include "macros.inc"

.section .bss

#glabel piThread
#    .space 3360
#glabel D_800A0000
#    .space 4
#glabel D_800A0004
#    .space 1
#glabel D_800A0005
#    .space 1
#glabel D_800A0006
#    .space 1
#glabel D_800A0007
#    .space 1
#glabel D_800A0008
#    .space 1
#glabel D_800A0009
#    .space 3
#glabel D_800A000C
#    .space 4
#glabel D_800A0010
#    .space 1152
#glabel piEventQueue
#    .space 24
#glabel piEventBuf
#    .space 8

#glabel D_800A04B0
#    .space 8
#glabel D_800A04B8
#    .space 24

#glabel __osEventStateTab
#    .space 128

#glabel D_800A0550
#    .space 32
## D_800A0570
#glabel __osCurrentTime
#    .space 4
#glabel D_800A0574
#    .space 4
## D_800A0578
#glabel __osBaseCounter
#    .space 4
#glabel __osViIntrCount
#    .space 4
#glabel __osTimerCounter
#    .space 16

# cartrominit.bss
#glabel sCartHandle
#    .space 20
#glabel D_800A05A4
#    .space 108

glabel D_800A0610
    .space 256
