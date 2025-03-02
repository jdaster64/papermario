.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel D_802453B8_EF79C8
.double 0.09

glabel D_802453C0_EF79D0
.double 0.09

.section .text

glabel func_80240220_EF2830
/* EF2830 80240220 27BDFF80 */  addiu     $sp, $sp, -0x80
/* EF2834 80240224 AFB3004C */  sw        $s3, 0x4c($sp)
/* EF2838 80240228 0080982D */  daddu     $s3, $a0, $zero
/* EF283C 8024022C AFBF0058 */  sw        $ra, 0x58($sp)
/* EF2840 80240230 AFB50054 */  sw        $s5, 0x54($sp)
/* EF2844 80240234 AFB40050 */  sw        $s4, 0x50($sp)
/* EF2848 80240238 AFB20048 */  sw        $s2, 0x48($sp)
/* EF284C 8024023C AFB10044 */  sw        $s1, 0x44($sp)
/* EF2850 80240240 AFB00040 */  sw        $s0, 0x40($sp)
/* EF2854 80240244 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* EF2858 80240248 F7B80070 */  sdc1      $f24, 0x70($sp)
/* EF285C 8024024C F7B60068 */  sdc1      $f22, 0x68($sp)
/* EF2860 80240250 F7B40060 */  sdc1      $f20, 0x60($sp)
/* EF2864 80240254 8E710148 */  lw        $s1, 0x148($s3)
/* EF2868 80240258 00A0902D */  daddu     $s2, $a1, $zero
/* EF286C 8024025C 86240008 */  lh        $a0, 8($s1)
/* EF2870 80240260 0C00F92F */  jal       dead_get_npc_unsafe
/* EF2874 80240264 00C0A82D */   daddu    $s5, $a2, $zero
/* EF2878 80240268 0040802D */  daddu     $s0, $v0, $zero
/* EF287C 8024026C 0000A02D */  daddu     $s4, $zero, $zero
/* EF2880 80240270 C624007C */  lwc1      $f4, 0x7c($s1)
/* EF2884 80240274 46802120 */  cvt.s.w   $f4, $f4
/* EF2888 80240278 C6220088 */  lwc1      $f2, 0x88($s1)
/* EF288C 8024027C 468010A0 */  cvt.s.w   $f2, $f2
/* EF2890 80240280 460010A1 */  cvt.d.s   $f2, $f2
/* EF2894 80240284 46002121 */  cvt.d.s   $f4, $f4
/* EF2898 80240288 C600003C */  lwc1      $f0, 0x3c($s0)
/* EF289C 8024028C 3C014059 */  lui       $at, 0x4059
/* EF28A0 80240290 44813800 */  mtc1      $at, $f7
/* EF28A4 80240294 44803000 */  mtc1      $zero, $f6
/* EF28A8 80240298 46000021 */  cvt.d.s   $f0, $f0
/* EF28AC 8024029C 46260002 */  mul.d     $f0, $f0, $f6
/* EF28B0 802402A0 00000000 */  nop
/* EF28B4 802402A4 24020001 */  addiu     $v0, $zero, 1
/* EF28B8 802402A8 8E24006C */  lw        $a0, 0x6c($s1)
/* EF28BC 802402AC 46261083 */  div.d     $f2, $f2, $f6
/* EF28C0 802402B0 462010A0 */  cvt.s.d   $f2, $f2
/* EF28C4 802402B4 46262103 */  div.d     $f4, $f4, $f6
/* EF28C8 802402B8 46202520 */  cvt.s.d   $f20, $f4
/* EF28CC 802402BC 30830011 */  andi      $v1, $a0, 0x11
/* EF28D0 802402C0 4620020D */  trunc.w.d $f8, $f0
/* EF28D4 802402C4 E628007C */  swc1      $f8, 0x7c($s1)
/* EF28D8 802402C8 C6200078 */  lwc1      $f0, 0x78($s1)
/* EF28DC 802402CC 46800020 */  cvt.s.w   $f0, $f0
/* EF28E0 802402D0 46000021 */  cvt.d.s   $f0, $f0
/* EF28E4 802402D4 46260003 */  div.d     $f0, $f0, $f6
/* EF28E8 802402D8 462006A0 */  cvt.s.d   $f26, $f0
/* EF28EC 802402DC C6200070 */  lwc1      $f0, 0x70($s1)
/* EF28F0 802402E0 46800020 */  cvt.s.w   $f0, $f0
/* EF28F4 802402E4 46000021 */  cvt.d.s   $f0, $f0
/* EF28F8 802402E8 46260003 */  div.d     $f0, $f0, $f6
/* EF28FC 802402EC 462005A0 */  cvt.s.d   $f22, $f0
/* EF2900 802402F0 14620025 */  bne       $v1, $v0, .L80240388
/* EF2904 802402F4 4602D600 */   add.s    $f24, $f26, $f2
/* EF2908 802402F8 8E020000 */  lw        $v0, ($s0)
/* EF290C 802402FC 30420008 */  andi      $v0, $v0, 8
/* EF2910 80240300 10400009 */  beqz      $v0, .L80240328
/* EF2914 80240304 27A50028 */   addiu    $a1, $sp, 0x28
/* EF2918 80240308 C600003C */  lwc1      $f0, 0x3c($s0)
/* EF291C 8024030C 4600C001 */  sub.s     $f0, $f24, $f0
/* EF2920 80240310 4600B03C */  c.lt.s    $f22, $f0
/* EF2924 80240314 00000000 */  nop
/* EF2928 80240318 4500001B */  bc1f      .L80240388
/* EF292C 8024031C 34820010 */   ori      $v0, $a0, 0x10
/* EF2930 80240320 080900E2 */  j         .L80240388
/* EF2934 80240324 AE22006C */   sw       $v0, 0x6c($s1)
.L80240328:
/* EF2938 80240328 27A6002C */  addiu     $a2, $sp, 0x2c
/* EF293C 8024032C C6000038 */  lwc1      $f0, 0x38($s0)
/* EF2940 80240330 C602003C */  lwc1      $f2, 0x3c($s0)
/* EF2944 80240334 C6040040 */  lwc1      $f4, 0x40($s0)
/* EF2948 80240338 3C01447A */  lui       $at, 0x447a
/* EF294C 8024033C 44813000 */  mtc1      $at, $f6
/* EF2950 80240340 27A20034 */  addiu     $v0, $sp, 0x34
/* EF2954 80240344 E7A00028 */  swc1      $f0, 0x28($sp)
/* EF2958 80240348 E7A2002C */  swc1      $f2, 0x2c($sp)
/* EF295C 8024034C E7A40030 */  swc1      $f4, 0x30($sp)
/* EF2960 80240350 E7A60034 */  swc1      $f6, 0x34($sp)
/* EF2964 80240354 AFA20010 */  sw        $v0, 0x10($sp)
/* EF2968 80240358 8E040080 */  lw        $a0, 0x80($s0)
/* EF296C 8024035C 0C03908F */  jal       func_800E423C
/* EF2970 80240360 27A70030 */   addiu    $a3, $sp, 0x30
/* EF2974 80240364 C7A00034 */  lwc1      $f0, 0x34($sp)
/* EF2978 80240368 4600D001 */  sub.s     $f0, $f26, $f0
/* EF297C 8024036C 4600B03C */  c.lt.s    $f22, $f0
/* EF2980 80240370 00000000 */  nop
/* EF2984 80240374 45000004 */  bc1f      .L80240388
/* EF2988 80240378 00000000 */   nop
/* EF298C 8024037C 8E22006C */  lw        $v0, 0x6c($s1)
/* EF2990 80240380 34420010 */  ori       $v0, $v0, 0x10
/* EF2994 80240384 AE22006C */  sw        $v0, 0x6c($s1)
.L80240388:
/* EF2998 80240388 8E22006C */  lw        $v0, 0x6c($s1)
/* EF299C 8024038C 24030011 */  addiu     $v1, $zero, 0x11
/* EF29A0 80240390 30420011 */  andi      $v0, $v0, 0x11
/* EF29A4 80240394 14430039 */  bne       $v0, $v1, .L8024047C
/* EF29A8 80240398 00000000 */   nop
/* EF29AC 8024039C 8E020000 */  lw        $v0, ($s0)
/* EF29B0 802403A0 30420008 */  andi      $v0, $v0, 8
/* EF29B4 802403A4 1040000A */  beqz      $v0, .L802403D0
/* EF29B8 802403A8 4600C106 */   mov.s    $f4, $f24
/* EF29BC 802403AC 4614C081 */  sub.s     $f2, $f24, $f20
/* EF29C0 802403B0 3C018024 */  lui       $at, %hi(D_802453B8_EF79C8)
/* EF29C4 802403B4 D42053B8 */  ldc1      $f0, %lo(D_802453B8_EF79C8)($at)
/* EF29C8 802403B8 460010A1 */  cvt.d.s   $f2, $f2
/* EF29CC 802403BC 46201082 */  mul.d     $f2, $f2, $f0
/* EF29D0 802403C0 00000000 */  nop
/* EF29D4 802403C4 4600A021 */  cvt.d.s   $f0, $f20
/* EF29D8 802403C8 0809010D */  j         .L80240434
/* EF29DC 802403CC 46220000 */   add.d    $f0, $f0, $f2
.L802403D0:
/* EF29E0 802403D0 27A50028 */  addiu     $a1, $sp, 0x28
/* EF29E4 802403D4 27A6002C */  addiu     $a2, $sp, 0x2c
/* EF29E8 802403D8 C6000038 */  lwc1      $f0, 0x38($s0)
/* EF29EC 802403DC C6020040 */  lwc1      $f2, 0x40($s0)
/* EF29F0 802403E0 3C01447A */  lui       $at, 0x447a
/* EF29F4 802403E4 44812000 */  mtc1      $at, $f4
/* EF29F8 802403E8 27A20034 */  addiu     $v0, $sp, 0x34
/* EF29FC 802403EC E7B4002C */  swc1      $f20, 0x2c($sp)
/* EF2A00 802403F0 E7A00028 */  swc1      $f0, 0x28($sp)
/* EF2A04 802403F4 E7A20030 */  swc1      $f2, 0x30($sp)
/* EF2A08 802403F8 E7A40034 */  swc1      $f4, 0x34($sp)
/* EF2A0C 802403FC AFA20010 */  sw        $v0, 0x10($sp)
/* EF2A10 80240400 8E040080 */  lw        $a0, 0x80($s0)
/* EF2A14 80240404 0C03908F */  jal       func_800E423C
/* EF2A18 80240408 27A70030 */   addiu    $a3, $sp, 0x30
/* EF2A1C 8024040C C7A4002C */  lwc1      $f4, 0x2c($sp)
/* EF2A20 80240410 461A2100 */  add.s     $f4, $f4, $f26
/* EF2A24 80240414 46142081 */  sub.s     $f2, $f4, $f20
/* EF2A28 80240418 3C018024 */  lui       $at, %hi(D_802453C0_EF79D0)
/* EF2A2C 8024041C D42053C0 */  ldc1      $f0, %lo(D_802453C0_EF79D0)($at)
/* EF2A30 80240420 460010A1 */  cvt.d.s   $f2, $f2
/* EF2A34 80240424 46201082 */  mul.d     $f2, $f2, $f0
/* EF2A38 80240428 00000000 */  nop
/* EF2A3C 8024042C 4600A021 */  cvt.d.s   $f0, $f20
/* EF2A40 80240430 46220000 */  add.d     $f0, $f0, $f2
.L80240434:
/* EF2A44 80240434 46200020 */  cvt.s.d   $f0, $f0
/* EF2A48 80240438 E600003C */  swc1      $f0, 0x3c($s0)
/* EF2A4C 8024043C C600003C */  lwc1      $f0, 0x3c($s0)
/* EF2A50 80240440 46002001 */  sub.s     $f0, $f4, $f0
/* EF2A54 80240444 3C013FF0 */  lui       $at, 0x3ff0
/* EF2A58 80240448 44811800 */  mtc1      $at, $f3
/* EF2A5C 8024044C 44801000 */  mtc1      $zero, $f2
/* EF2A60 80240450 46000005 */  abs.s     $f0, $f0
/* EF2A64 80240454 46000021 */  cvt.d.s   $f0, $f0
/* EF2A68 80240458 4622003C */  c.lt.d    $f0, $f2
/* EF2A6C 8024045C 00000000 */  nop
/* EF2A70 80240460 45000036 */  bc1f      .L8024053C
/* EF2A74 80240464 2403FFEF */   addiu    $v1, $zero, -0x11
/* EF2A78 80240468 E604003C */  swc1      $f4, 0x3c($s0)
/* EF2A7C 8024046C 8E22006C */  lw        $v0, 0x6c($s1)
/* EF2A80 80240470 00431024 */  and       $v0, $v0, $v1
/* EF2A84 80240474 0809014F */  j         .L8024053C
/* EF2A88 80240478 AE22006C */   sw       $v0, 0x6c($s1)
.L8024047C:
/* EF2A8C 8024047C 8E220070 */  lw        $v0, 0x70($s1)
/* EF2A90 80240480 1840002E */  blez      $v0, .L8024053C
/* EF2A94 80240484 00000000 */   nop
/* EF2A98 80240488 C62C0074 */  lwc1      $f12, 0x74($s1)
/* EF2A9C 8024048C 0C00AD77 */  jal       func_8002B5DC
/* EF2AA0 80240490 46806320 */   cvt.s.w  $f12, $f12
/* EF2AA4 80240494 8E020000 */  lw        $v0, ($s0)
/* EF2AA8 80240498 30420008 */  andi      $v0, $v0, 8
/* EF2AAC 8024049C 10400003 */  beqz      $v0, .L802404AC
/* EF2AB0 802404A0 46000506 */   mov.s    $f20, $f0
/* EF2AB4 802404A4 0809013B */  j         .L802404EC
/* EF2AB8 802404A8 0000102D */   daddu    $v0, $zero, $zero
.L802404AC:
/* EF2ABC 802404AC 27A50028 */  addiu     $a1, $sp, 0x28
/* EF2AC0 802404B0 27A6002C */  addiu     $a2, $sp, 0x2c
/* EF2AC4 802404B4 C6000038 */  lwc1      $f0, 0x38($s0)
/* EF2AC8 802404B8 C602003C */  lwc1      $f2, 0x3c($s0)
/* EF2ACC 802404BC C6040040 */  lwc1      $f4, 0x40($s0)
/* EF2AD0 802404C0 3C01447A */  lui       $at, 0x447a
/* EF2AD4 802404C4 44813000 */  mtc1      $at, $f6
/* EF2AD8 802404C8 27A20034 */  addiu     $v0, $sp, 0x34
/* EF2ADC 802404CC E7A00028 */  swc1      $f0, 0x28($sp)
/* EF2AE0 802404D0 E7A2002C */  swc1      $f2, 0x2c($sp)
/* EF2AE4 802404D4 E7A40030 */  swc1      $f4, 0x30($sp)
/* EF2AE8 802404D8 E7A60034 */  swc1      $f6, 0x34($sp)
/* EF2AEC 802404DC AFA20010 */  sw        $v0, 0x10($sp)
/* EF2AF0 802404E0 8E040080 */  lw        $a0, 0x80($s0)
/* EF2AF4 802404E4 0C03908F */  jal       func_800E423C
/* EF2AF8 802404E8 27A70030 */   addiu    $a3, $sp, 0x30
.L802404EC:
/* EF2AFC 802404EC 10400007 */  beqz      $v0, .L8024050C
/* EF2B00 802404F0 00000000 */   nop
/* EF2B04 802404F4 4616A082 */  mul.s     $f2, $f20, $f22
/* EF2B08 802404F8 00000000 */  nop
/* EF2B0C 802404FC C7A0002C */  lwc1      $f0, 0x2c($sp)
/* EF2B10 80240500 461A0000 */  add.s     $f0, $f0, $f26
/* EF2B14 80240504 08090146 */  j         .L80240518
/* EF2B18 80240508 46020000 */   add.s    $f0, $f0, $f2
.L8024050C:
/* EF2B1C 8024050C 4616A002 */  mul.s     $f0, $f20, $f22
/* EF2B20 80240510 00000000 */  nop
/* EF2B24 80240514 4600C000 */  add.s     $f0, $f24, $f0
.L80240518:
/* EF2B28 80240518 E600003C */  swc1      $f0, 0x3c($s0)
/* EF2B2C 8024051C 8E220074 */  lw        $v0, 0x74($s1)
/* EF2B30 80240520 2442000A */  addiu     $v0, $v0, 0xa
/* EF2B34 80240524 44826000 */  mtc1      $v0, $f12
/* EF2B38 80240528 00000000 */  nop
/* EF2B3C 8024052C 0C00AB85 */  jal       dead_clamp_angle
/* EF2B40 80240530 46806320 */   cvt.s.w  $f12, $f12
/* EF2B44 80240534 4600020D */  trunc.w.s $f8, $f0
/* EF2B48 80240538 E6280074 */  swc1      $f8, 0x74($s1)
.L8024053C:
/* EF2B4C 8024053C 8E220090 */  lw        $v0, 0x90($s1)
/* EF2B50 80240540 1C40004A */  bgtz      $v0, .L8024066C
/* EF2B54 80240544 2442FFFF */   addiu    $v0, $v0, -1
/* EF2B58 80240548 8E430014 */  lw        $v1, 0x14($s2)
/* EF2B5C 8024054C 04600048 */  bltz      $v1, .L80240670
/* EF2B60 80240550 00000000 */   nop
/* EF2B64 80240554 8E620074 */  lw        $v0, 0x74($s3)
/* EF2B68 80240558 1C400042 */  bgtz      $v0, .L80240664
/* EF2B6C 8024055C 2442FFFF */   addiu    $v0, $v0, -1
/* EF2B70 80240560 AE630074 */  sw        $v1, 0x74($s3)
/* EF2B74 80240564 860200A8 */  lh        $v0, 0xa8($s0)
/* EF2B78 80240568 C602003C */  lwc1      $f2, 0x3c($s0)
/* EF2B7C 8024056C 44820000 */  mtc1      $v0, $f0
/* EF2B80 80240570 00000000 */  nop
/* EF2B84 80240574 46800020 */  cvt.s.w   $f0, $f0
/* EF2B88 80240578 46001080 */  add.s     $f2, $f2, $f0
/* EF2B8C 8024057C 3C014024 */  lui       $at, 0x4024
/* EF2B90 80240580 44810800 */  mtc1      $at, $f1
/* EF2B94 80240584 44800000 */  mtc1      $zero, $f0
/* EF2B98 80240588 3C028010 */  lui       $v0, %hi(dead_gPlayerStatusPtr)
/* EF2B9C 8024058C 8C42FC90 */  lw        $v0, %lo(dead_gPlayerStatusPtr)($v0)
/* EF2BA0 80240590 460010A1 */  cvt.d.s   $f2, $f2
/* EF2BA4 80240594 46201080 */  add.d     $f2, $f2, $f0
/* EF2BA8 80240598 C440002C */  lwc1      $f0, 0x2c($v0)
/* EF2BAC 8024059C 46000021 */  cvt.d.s   $f0, $f0
/* EF2BB0 802405A0 4622003C */  c.lt.d    $f0, $f2
/* EF2BB4 802405A4 00000000 */  nop
/* EF2BB8 802405A8 4500002C */  bc1f      .L8024065C
/* EF2BBC 802405AC 02A0202D */   daddu    $a0, $s5, $zero
/* EF2BC0 802405B0 AFA00010 */  sw        $zero, 0x10($sp)
/* EF2BC4 802405B4 8E46000C */  lw        $a2, 0xc($s2)
/* EF2BC8 802405B8 8E470010 */  lw        $a3, 0x10($s2)
/* EF2BCC 802405BC 0C013469 */  jal       func_8004D1A4
/* EF2BD0 802405C0 0220282D */   daddu    $a1, $s1, $zero
/* EF2BD4 802405C4 10400025 */  beqz      $v0, .L8024065C
/* EF2BD8 802405C8 0000202D */   daddu    $a0, $zero, $zero
/* EF2BDC 802405CC 0200282D */  daddu     $a1, $s0, $zero
/* EF2BE0 802405D0 0000302D */  daddu     $a2, $zero, $zero
/* EF2BE4 802405D4 2412000C */  addiu     $s2, $zero, 0xc
/* EF2BE8 802405D8 860300A8 */  lh        $v1, 0xa8($s0)
/* EF2BEC 802405DC 3C013F80 */  lui       $at, 0x3f80
/* EF2BF0 802405E0 44810000 */  mtc1      $at, $f0
/* EF2BF4 802405E4 3C014000 */  lui       $at, 0x4000
/* EF2BF8 802405E8 44811000 */  mtc1      $at, $f2
/* EF2BFC 802405EC 3C01C1A0 */  lui       $at, 0xc1a0
/* EF2C00 802405F0 44812000 */  mtc1      $at, $f4
/* EF2C04 802405F4 44834000 */  mtc1      $v1, $f8
/* EF2C08 802405F8 00000000 */  nop
/* EF2C0C 802405FC 46804220 */  cvt.s.w   $f8, $f8
/* EF2C10 80240600 44074000 */  mfc1      $a3, $f8
/* EF2C14 80240604 27A20038 */  addiu     $v0, $sp, 0x38
/* EF2C18 80240608 AFB2001C */  sw        $s2, 0x1c($sp)
/* EF2C1C 8024060C AFA20020 */  sw        $v0, 0x20($sp)
/* EF2C20 80240610 E7A00010 */  swc1      $f0, 0x10($sp)
/* EF2C24 80240614 E7A20014 */  swc1      $f2, 0x14($sp)
/* EF2C28 80240618 0C01D444 */  jal       func_80075110
/* EF2C2C 8024061C E7A40018 */   swc1     $f4, 0x18($sp)
/* EF2C30 80240620 0200202D */  daddu     $a0, $s0, $zero
/* EF2C34 80240624 240502F4 */  addiu     $a1, $zero, 0x2f4
/* EF2C38 80240628 C480003C */  lwc1      $f0, 0x3c($a0)
/* EF2C3C 8024062C 3C060020 */  lui       $a2, 0x20
/* EF2C40 80240630 0C013600 */  jal       func_8004D800
/* EF2C44 80240634 E4800064 */   swc1     $f0, 0x64($a0)
/* EF2C48 80240638 8E220018 */  lw        $v0, 0x18($s1)
/* EF2C4C 8024063C 9442002A */  lhu       $v0, 0x2a($v0)
/* EF2C50 80240640 30420001 */  andi      $v0, $v0, 1
/* EF2C54 80240644 10400003 */  beqz      $v0, .L80240654
/* EF2C58 80240648 2402000A */   addiu    $v0, $zero, 0xa
/* EF2C5C 8024064C 08090205 */  j         .L80240814
/* EF2C60 80240650 AE620070 */   sw       $v0, 0x70($s3)
.L80240654:
/* EF2C64 80240654 08090205 */  j         .L80240814
/* EF2C68 80240658 AE720070 */   sw       $s2, 0x70($s3)
.L8024065C:
/* EF2C6C 8024065C 8E620074 */  lw        $v0, 0x74($s3)
/* EF2C70 80240660 2442FFFF */  addiu     $v0, $v0, -1
.L80240664:
/* EF2C74 80240664 0809019C */  j         .L80240670
/* EF2C78 80240668 AE620074 */   sw       $v0, 0x74($s3)
.L8024066C:
/* EF2C7C 8024066C AE220090 */  sw        $v0, 0x90($s1)
.L80240670:
/* EF2C80 80240670 8E2300D0 */  lw        $v1, 0xd0($s1)
/* EF2C84 80240674 C6000040 */  lwc1      $f0, 0x40($s0)
/* EF2C88 80240678 C4620000 */  lwc1      $f2, ($v1)
/* EF2C8C 8024067C 468010A0 */  cvt.s.w   $f2, $f2
/* EF2C90 80240680 C4640008 */  lwc1      $f4, 8($v1)
/* EF2C94 80240684 46802120 */  cvt.s.w   $f4, $f4
/* EF2C98 80240688 E7A00010 */  swc1      $f0, 0x10($sp)
/* EF2C9C 8024068C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EF2CA0 80240690 44051000 */  mfc1      $a1, $f2
/* EF2CA4 80240694 C440000C */  lwc1      $f0, 0xc($v0)
/* EF2CA8 80240698 46800020 */  cvt.s.w   $f0, $f0
/* EF2CAC 8024069C E7A00014 */  swc1      $f0, 0x14($sp)
/* EF2CB0 802406A0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EF2CB4 802406A4 44062000 */  mfc1      $a2, $f4
/* EF2CB8 802406A8 C4400010 */  lwc1      $f0, 0x10($v0)
/* EF2CBC 802406AC 46800020 */  cvt.s.w   $f0, $f0
/* EF2CC0 802406B0 E7A00018 */  swc1      $f0, 0x18($sp)
/* EF2CC4 802406B4 8C640018 */  lw        $a0, 0x18($v1)
/* EF2CC8 802406B8 0C013431 */  jal       func_8004D0C4
/* EF2CCC 802406BC 8E070038 */   lw       $a3, 0x38($s0)
/* EF2CD0 802406C0 1040001A */  beqz      $v0, .L8024072C
/* EF2CD4 802406C4 00000000 */   nop
/* EF2CD8 802406C8 8E060038 */  lw        $a2, 0x38($s0)
/* EF2CDC 802406CC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EF2CE0 802406D0 8E070040 */  lw        $a3, 0x40($s0)
/* EF2CE4 802406D4 C44C0000 */  lwc1      $f12, ($v0)
/* EF2CE8 802406D8 46806320 */  cvt.s.w   $f12, $f12
/* EF2CEC 802406DC C44E0008 */  lwc1      $f14, 8($v0)
/* EF2CF0 802406E0 0C00AC71 */  jal       func_8002B1C4
/* EF2CF4 802406E4 468073A0 */   cvt.s.w  $f14, $f14
/* EF2CF8 802406E8 C6020018 */  lwc1      $f2, 0x18($s0)
/* EF2CFC 802406EC 4600103C */  c.lt.s    $f2, $f0
/* EF2D00 802406F0 00000000 */  nop
/* EF2D04 802406F4 4500000D */  bc1f      .L8024072C
/* EF2D08 802406F8 E7A00034 */   swc1     $f0, 0x34($sp)
/* EF2D0C 802406FC C60C0038 */  lwc1      $f12, 0x38($s0)
/* EF2D10 80240700 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EF2D14 80240704 C60E0040 */  lwc1      $f14, 0x40($s0)
/* EF2D18 80240708 C4480000 */  lwc1      $f8, ($v0)
/* EF2D1C 8024070C 46804220 */  cvt.s.w   $f8, $f8
/* EF2D20 80240710 44064000 */  mfc1      $a2, $f8
/* EF2D24 80240714 C4480008 */  lwc1      $f8, 8($v0)
/* EF2D28 80240718 46804220 */  cvt.s.w   $f8, $f8
/* EF2D2C 8024071C 44074000 */  mfc1      $a3, $f8
/* EF2D30 80240720 0C00ABDC */  jal       fio_validate_header_checksums
/* EF2D34 80240724 24140001 */   addiu    $s4, $zero, 1
/* EF2D38 80240728 E600000C */  swc1      $f0, 0xc($s0)
.L8024072C:
/* EF2D3C 8024072C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EF2D40 80240730 8C43000C */  lw        $v1, 0xc($v0)
/* EF2D44 80240734 8C420010 */  lw        $v0, 0x10($v0)
/* EF2D48 80240738 00621825 */  or        $v1, $v1, $v0
/* EF2D4C 8024073C 00741825 */  or        $v1, $v1, $s4
/* EF2D50 80240740 10600008 */  beqz      $v1, .L80240764
/* EF2D54 80240744 00000000 */   nop
/* EF2D58 80240748 8602008C */  lh        $v0, 0x8c($s0)
/* EF2D5C 8024074C 14400031 */  bnez      $v0, .L80240814
/* EF2D60 80240750 00000000 */   nop
/* EF2D64 80240754 8E050018 */  lw        $a1, 0x18($s0)
/* EF2D68 80240758 8E06000C */  lw        $a2, 0xc($s0)
/* EF2D6C 8024075C 0C00F909 */  jal       func_8003E424
/* EF2D70 80240760 0200202D */   daddu    $a0, $s0, $zero
.L80240764:
/* EF2D74 80240764 C600003C */  lwc1      $f0, 0x3c($s0)
/* EF2D78 80240768 3C014059 */  lui       $at, 0x4059
/* EF2D7C 8024076C 44811800 */  mtc1      $at, $f3
/* EF2D80 80240770 44801000 */  mtc1      $zero, $f2
/* EF2D84 80240774 46000021 */  cvt.d.s   $f0, $f0
/* EF2D88 80240778 46220002 */  mul.d     $f0, $f0, $f2
/* EF2D8C 8024077C 00000000 */  nop
/* EF2D90 80240780 4620020D */  trunc.w.d $f8, $f0
/* EF2D94 80240784 E628007C */  swc1      $f8, 0x7c($s1)
/* EF2D98 80240788 8E420004 */  lw        $v0, 4($s2)
/* EF2D9C 8024078C 18400021 */  blez      $v0, .L80240814
/* EF2DA0 80240790 00000000 */   nop
/* EF2DA4 80240794 8602008E */  lh        $v0, 0x8e($s0)
/* EF2DA8 80240798 9603008E */  lhu       $v1, 0x8e($s0)
/* EF2DAC 8024079C 18400005 */  blez      $v0, .L802407B4
/* EF2DB0 802407A0 2462FFFF */   addiu    $v0, $v1, -1
/* EF2DB4 802407A4 A602008E */  sh        $v0, 0x8e($s0)
/* EF2DB8 802407A8 00021400 */  sll       $v0, $v0, 0x10
/* EF2DBC 802407AC 1C400019 */  bgtz      $v0, .L80240814
/* EF2DC0 802407B0 00000000 */   nop
.L802407B4:
/* EF2DC4 802407B4 240403E8 */  addiu     $a0, $zero, 0x3e8
/* EF2DC8 802407B8 24020002 */  addiu     $v0, $zero, 2
/* EF2DCC 802407BC 0C00AB3B */  jal       dead_rand_int
/* EF2DD0 802407C0 AE620070 */   sw       $v0, 0x70($s3)
/* EF2DD4 802407C4 3C035555 */  lui       $v1, 0x5555
/* EF2DD8 802407C8 34635556 */  ori       $v1, $v1, 0x5556
/* EF2DDC 802407CC 00430018 */  mult      $v0, $v1
/* EF2DE0 802407D0 000227C3 */  sra       $a0, $v0, 0x1f
/* EF2DE4 802407D4 00004010 */  mfhi      $t0
/* EF2DE8 802407D8 01042023 */  subu      $a0, $t0, $a0
/* EF2DEC 802407DC 00041840 */  sll       $v1, $a0, 1
/* EF2DF0 802407E0 00641821 */  addu      $v1, $v1, $a0
/* EF2DF4 802407E4 00431023 */  subu      $v0, $v0, $v1
/* EF2DF8 802407E8 24430002 */  addiu     $v1, $v0, 2
/* EF2DFC 802407EC AE630074 */  sw        $v1, 0x74($s3)
/* EF2E00 802407F0 8E42002C */  lw        $v0, 0x2c($s2)
/* EF2E04 802407F4 58400007 */  blezl     $v0, .L80240814
/* EF2E08 802407F8 AE600070 */   sw       $zero, 0x70($s3)
/* EF2E0C 802407FC 8E420008 */  lw        $v0, 8($s2)
/* EF2E10 80240800 18400003 */  blez      $v0, .L80240810
/* EF2E14 80240804 28620003 */   slti     $v0, $v1, 3
/* EF2E18 80240808 10400002 */  beqz      $v0, .L80240814
/* EF2E1C 8024080C 00000000 */   nop
.L80240810:
/* EF2E20 80240810 AE600070 */  sw        $zero, 0x70($s3)
.L80240814:
/* EF2E24 80240814 8FBF0058 */  lw        $ra, 0x58($sp)
/* EF2E28 80240818 8FB50054 */  lw        $s5, 0x54($sp)
/* EF2E2C 8024081C 8FB40050 */  lw        $s4, 0x50($sp)
/* EF2E30 80240820 8FB3004C */  lw        $s3, 0x4c($sp)
/* EF2E34 80240824 8FB20048 */  lw        $s2, 0x48($sp)
/* EF2E38 80240828 8FB10044 */  lw        $s1, 0x44($sp)
/* EF2E3C 8024082C 8FB00040 */  lw        $s0, 0x40($sp)
/* EF2E40 80240830 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* EF2E44 80240834 D7B80070 */  ldc1      $f24, 0x70($sp)
/* EF2E48 80240838 D7B60068 */  ldc1      $f22, 0x68($sp)
/* EF2E4C 8024083C D7B40060 */  ldc1      $f20, 0x60($sp)
/* EF2E50 80240840 03E00008 */  jr        $ra
/* EF2E54 80240844 27BD0080 */   addiu    $sp, $sp, 0x80
