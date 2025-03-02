.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024234C_EF495C
/* EF495C 8024234C 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* EF4960 80242350 AFB3003C */  sw        $s3, 0x3c($sp)
/* EF4964 80242354 0080982D */  daddu     $s3, $a0, $zero
/* EF4968 80242358 AFBF0040 */  sw        $ra, 0x40($sp)
/* EF496C 8024235C AFB20038 */  sw        $s2, 0x38($sp)
/* EF4970 80242360 AFB10034 */  sw        $s1, 0x34($sp)
/* EF4974 80242364 AFB00030 */  sw        $s0, 0x30($sp)
/* EF4978 80242368 8E710148 */  lw        $s1, 0x148($s3)
/* EF497C 8024236C 0C00F92F */  jal       dead_get_npc_unsafe
/* EF4980 80242370 86240008 */   lh       $a0, 8($s1)
/* EF4984 80242374 0040802D */  daddu     $s0, $v0, $zero
/* EF4988 80242378 8E22007C */  lw        $v0, 0x7c($s1)
/* EF498C 8024237C 8603008E */  lh        $v1, 0x8e($s0)
/* EF4990 80242380 2442FFFF */  addiu     $v0, $v0, -1
/* EF4994 80242384 14620012 */  bne       $v1, $v0, .L802423D0
/* EF4998 80242388 00000000 */   nop
/* EF499C 8024238C C6000038 */  lwc1      $f0, 0x38($s0)
/* EF49A0 80242390 4600020D */  trunc.w.s $f8, $f0
/* EF49A4 80242394 44024000 */  mfc1      $v0, $f8
/* EF49A8 80242398 00000000 */  nop
/* EF49AC 8024239C A6220010 */  sh        $v0, 0x10($s1)
/* EF49B0 802423A0 C600003C */  lwc1      $f0, 0x3c($s0)
/* EF49B4 802423A4 4600020D */  trunc.w.s $f8, $f0
/* EF49B8 802423A8 44024000 */  mfc1      $v0, $f8
/* EF49BC 802423AC 00000000 */  nop
/* EF49C0 802423B0 A6220012 */  sh        $v0, 0x12($s1)
/* EF49C4 802423B4 C6000040 */  lwc1      $f0, 0x40($s0)
/* EF49C8 802423B8 24020001 */  addiu     $v0, $zero, 1
/* EF49CC 802423BC A2220007 */  sb        $v0, 7($s1)
/* EF49D0 802423C0 4600020D */  trunc.w.s $f8, $f0
/* EF49D4 802423C4 44024000 */  mfc1      $v0, $f8
/* EF49D8 802423C8 00000000 */  nop
/* EF49DC 802423CC A6220014 */  sh        $v0, 0x14($s1)
.L802423D0:
/* EF49E0 802423D0 C6000038 */  lwc1      $f0, 0x38($s0)
/* EF49E4 802423D4 C602003C */  lwc1      $f2, 0x3c($s0)
/* EF49E8 802423D8 C6040040 */  lwc1      $f4, 0x40($s0)
/* EF49EC 802423DC C6060018 */  lwc1      $f6, 0x18($s0)
/* EF49F0 802423E0 E7A00020 */  swc1      $f0, 0x20($sp)
/* EF49F4 802423E4 E7A20024 */  swc1      $f2, 0x24($sp)
/* EF49F8 802423E8 E7A40028 */  swc1      $f4, 0x28($sp)
/* EF49FC 802423EC E7A60010 */  swc1      $f6, 0x10($sp)
/* EF4A00 802423F0 C600000C */  lwc1      $f0, 0xc($s0)
/* EF4A04 802423F4 E7A00014 */  swc1      $f0, 0x14($sp)
/* EF4A08 802423F8 860200A8 */  lh        $v0, 0xa8($s0)
/* EF4A0C 802423FC 27A50020 */  addiu     $a1, $sp, 0x20
/* EF4A10 80242400 44820000 */  mtc1      $v0, $f0
/* EF4A14 80242404 00000000 */  nop
/* EF4A18 80242408 46800020 */  cvt.s.w   $f0, $f0
/* EF4A1C 8024240C E7A00018 */  swc1      $f0, 0x18($sp)
/* EF4A20 80242410 860200A6 */  lh        $v0, 0xa6($s0)
/* EF4A24 80242414 27A60024 */  addiu     $a2, $sp, 0x24
/* EF4A28 80242418 44820000 */  mtc1      $v0, $f0
/* EF4A2C 8024241C 00000000 */  nop
/* EF4A30 80242420 46800020 */  cvt.s.w   $f0, $f0
/* EF4A34 80242424 E7A0001C */  swc1      $f0, 0x1c($sp)
/* EF4A38 80242428 8E040080 */  lw        $a0, 0x80($s0)
/* EF4A3C 8024242C 0C0394C1 */  jal       func_800E5304
/* EF4A40 80242430 27A70028 */   addiu    $a3, $sp, 0x28
/* EF4A44 80242434 0040902D */  daddu     $s2, $v0, $zero
/* EF4A48 80242438 16400005 */  bnez      $s2, .L80242450
/* EF4A4C 8024243C 00000000 */   nop
/* EF4A50 80242440 8E050018 */  lw        $a1, 0x18($s0)
/* EF4A54 80242444 8E06000C */  lw        $a2, 0xc($s0)
/* EF4A58 80242448 0C00F909 */  jal       func_8003E424
/* EF4A5C 8024244C 0200202D */   daddu    $a0, $s0, $zero
.L80242450:
/* EF4A60 80242450 8602008E */  lh        $v0, 0x8e($s0)
/* EF4A64 80242454 9603008E */  lhu       $v1, 0x8e($s0)
/* EF4A68 80242458 18400007 */  blez      $v0, .L80242478
/* EF4A6C 8024245C 2462FFFF */   addiu    $v0, $v1, -1
/* EF4A70 80242460 A602008E */  sh        $v0, 0x8e($s0)
/* EF4A74 80242464 00021400 */  sll       $v0, $v0, 0x10
/* EF4A78 80242468 18400003 */  blez      $v0, .L80242478
/* EF4A7C 8024246C 00000000 */   nop
/* EF4A80 80242470 12400008 */  beqz      $s2, .L80242494
/* EF4A84 80242474 00000000 */   nop
.L80242478:
/* EF4A88 80242478 8E2200CC */  lw        $v0, 0xcc($s1)
/* EF4A8C 8024247C A2200007 */  sb        $zero, 7($s1)
/* EF4A90 80242480 8C420028 */  lw        $v0, 0x28($v0)
/* EF4A94 80242484 A600008E */  sh        $zero, 0x8e($s0)
/* EF4A98 80242488 AE020028 */  sw        $v0, 0x28($s0)
/* EF4A9C 8024248C 2402000F */  addiu     $v0, $zero, 0xf
/* EF4AA0 80242490 AE620070 */  sw        $v0, 0x70($s3)
.L80242494:
/* EF4AA4 80242494 8FBF0040 */  lw        $ra, 0x40($sp)
/* EF4AA8 80242498 8FB3003C */  lw        $s3, 0x3c($sp)
/* EF4AAC 8024249C 8FB20038 */  lw        $s2, 0x38($sp)
/* EF4AB0 802424A0 8FB10034 */  lw        $s1, 0x34($sp)
/* EF4AB4 802424A4 8FB00030 */  lw        $s0, 0x30($sp)
/* EF4AB8 802424A8 03E00008 */  jr        $ra
/* EF4ABC 802424AC 27BD0048 */   addiu    $sp, $sp, 0x48
