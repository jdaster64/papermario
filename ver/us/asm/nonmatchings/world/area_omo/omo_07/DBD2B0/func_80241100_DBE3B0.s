.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel jtbl_80246D80_DC4030
.word L802412E4_DBE594, L802412F4_DBE5A4, L8024130C_DBE5BC, L8024131C_DBE5CC, L80241334_DBE5E4, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L8024134C_DBE5FC, L8024135C_DBE60C, L80241374_DBE624, L80241384_DBE634, L8024139C_DBE64C, L802413B4_DBE664, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413D4_DBE684, L802413CC_DBE67C

.section .text

glabel func_80241100_DBE3B0
/* DBE3B0 80241100 27BDFF98 */  addiu     $sp, $sp, -0x68
/* DBE3B4 80241104 AFB40058 */  sw        $s4, 0x58($sp)
/* DBE3B8 80241108 0080A02D */  daddu     $s4, $a0, $zero
/* DBE3BC 8024110C AFBF0060 */  sw        $ra, 0x60($sp)
/* DBE3C0 80241110 AFB5005C */  sw        $s5, 0x5c($sp)
/* DBE3C4 80241114 AFB30054 */  sw        $s3, 0x54($sp)
/* DBE3C8 80241118 AFB20050 */  sw        $s2, 0x50($sp)
/* DBE3CC 8024111C AFB1004C */  sw        $s1, 0x4c($sp)
/* DBE3D0 80241120 AFB00048 */  sw        $s0, 0x48($sp)
/* DBE3D4 80241124 8E910148 */  lw        $s1, 0x148($s4)
/* DBE3D8 80241128 86240008 */  lh        $a0, 8($s1)
/* DBE3DC 8024112C 0C00EABB */  jal       get_npc_unsafe
/* DBE3E0 80241130 00A0802D */   daddu    $s0, $a1, $zero
/* DBE3E4 80241134 8E83000C */  lw        $v1, 0xc($s4)
/* DBE3E8 80241138 0280202D */  daddu     $a0, $s4, $zero
/* DBE3EC 8024113C 8C650000 */  lw        $a1, ($v1)
/* DBE3F0 80241140 0C0B1EAF */  jal       evt_get_variable
/* DBE3F4 80241144 0040902D */   daddu    $s2, $v0, $zero
/* DBE3F8 80241148 AFA00018 */  sw        $zero, 0x18($sp)
/* DBE3FC 8024114C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DBE400 80241150 8C630094 */  lw        $v1, 0x94($v1)
/* DBE404 80241154 AFA3001C */  sw        $v1, 0x1c($sp)
/* DBE408 80241158 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DBE40C 8024115C 8C630080 */  lw        $v1, 0x80($v1)
/* DBE410 80241160 AFA30020 */  sw        $v1, 0x20($sp)
/* DBE414 80241164 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DBE418 80241168 8C630088 */  lw        $v1, 0x88($v1)
/* DBE41C 8024116C AFA30024 */  sw        $v1, 0x24($sp)
/* DBE420 80241170 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DBE424 80241174 8C63008C */  lw        $v1, 0x8c($v1)
/* DBE428 80241178 27B50018 */  addiu     $s5, $sp, 0x18
/* DBE42C 8024117C AFA30028 */  sw        $v1, 0x28($sp)
/* DBE430 80241180 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DBE434 80241184 3C014282 */  lui       $at, 0x4282
/* DBE438 80241188 44810000 */  mtc1      $at, $f0
/* DBE43C 8024118C 8C630090 */  lw        $v1, 0x90($v1)
/* DBE440 80241190 0040982D */  daddu     $s3, $v0, $zero
/* DBE444 80241194 E7A00030 */  swc1      $f0, 0x30($sp)
/* DBE448 80241198 A7A00034 */  sh        $zero, 0x34($sp)
/* DBE44C 8024119C 16000005 */  bnez      $s0, .L802411B4
/* DBE450 802411A0 AFA3002C */   sw       $v1, 0x2c($sp)
/* DBE454 802411A4 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DBE458 802411A8 30420004 */  andi      $v0, $v0, 4
/* DBE45C 802411AC 10400044 */  beqz      $v0, .L802412C0
/* DBE460 802411B0 00000000 */   nop
.L802411B4:
/* DBE464 802411B4 2404F7FF */  addiu     $a0, $zero, -0x801
/* DBE468 802411B8 AE800070 */  sw        $zero, 0x70($s4)
/* DBE46C 802411BC A640008E */  sh        $zero, 0x8e($s2)
/* DBE470 802411C0 8E2200CC */  lw        $v0, 0xcc($s1)
/* DBE474 802411C4 8E430000 */  lw        $v1, ($s2)
/* DBE478 802411C8 8C420000 */  lw        $v0, ($v0)
/* DBE47C 802411CC 00641824 */  and       $v1, $v1, $a0
/* DBE480 802411D0 AE430000 */  sw        $v1, ($s2)
/* DBE484 802411D4 AE420028 */  sw        $v0, 0x28($s2)
/* DBE488 802411D8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* DBE48C 802411DC 8C420098 */  lw        $v0, 0x98($v0)
/* DBE490 802411E0 54400005 */  bnel      $v0, $zero, .L802411F8
/* DBE494 802411E4 2402FDFF */   addiu    $v0, $zero, -0x201
/* DBE498 802411E8 34620200 */  ori       $v0, $v1, 0x200
/* DBE49C 802411EC 2403FFF7 */  addiu     $v1, $zero, -9
/* DBE4A0 802411F0 08090480 */  j         .L80241200
/* DBE4A4 802411F4 00431024 */   and      $v0, $v0, $v1
.L802411F8:
/* DBE4A8 802411F8 00621024 */  and       $v0, $v1, $v0
/* DBE4AC 802411FC 34420008 */  ori       $v0, $v0, 8
.L80241200:
/* DBE4B0 80241200 AE420000 */  sw        $v0, ($s2)
/* DBE4B4 80241204 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DBE4B8 80241208 30420004 */  andi      $v0, $v0, 4
/* DBE4BC 8024120C 10400008 */  beqz      $v0, .L80241230
/* DBE4C0 80241210 24020063 */   addiu    $v0, $zero, 0x63
/* DBE4C4 80241214 AE820070 */  sw        $v0, 0x70($s4)
/* DBE4C8 80241218 AE800074 */  sw        $zero, 0x74($s4)
/* DBE4CC 8024121C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DBE4D0 80241220 2403FFFB */  addiu     $v1, $zero, -5
/* DBE4D4 80241224 00431024 */  and       $v0, $v0, $v1
/* DBE4D8 80241228 08090497 */  j         .L8024125C
/* DBE4DC 8024122C AE2200B0 */   sw       $v0, 0xb0($s1)
.L80241230:
/* DBE4E0 80241230 8E220000 */  lw        $v0, ($s1)
/* DBE4E4 80241234 3C034000 */  lui       $v1, 0x4000
/* DBE4E8 80241238 00431024 */  and       $v0, $v0, $v1
/* DBE4EC 8024123C 10400007 */  beqz      $v0, .L8024125C
/* DBE4F0 80241240 3C03BFFF */   lui      $v1, 0xbfff
/* DBE4F4 80241244 2402000C */  addiu     $v0, $zero, 0xc
/* DBE4F8 80241248 AE820070 */  sw        $v0, 0x70($s4)
/* DBE4FC 8024124C 8E220000 */  lw        $v0, ($s1)
/* DBE500 80241250 3463FFFF */  ori       $v1, $v1, 0xffff
/* DBE504 80241254 00431024 */  and       $v0, $v0, $v1
/* DBE508 80241258 AE220000 */  sw        $v0, ($s1)
.L8024125C:
/* DBE50C 8024125C 27A50038 */  addiu     $a1, $sp, 0x38
/* DBE510 80241260 27A6003C */  addiu     $a2, $sp, 0x3c
/* DBE514 80241264 C6400038 */  lwc1      $f0, 0x38($s2)
/* DBE518 80241268 864200A8 */  lh        $v0, 0xa8($s2)
/* DBE51C 8024126C 3C0142C8 */  lui       $at, 0x42c8
/* DBE520 80241270 44812000 */  mtc1      $at, $f4
/* DBE524 80241274 44823000 */  mtc1      $v0, $f6
/* DBE528 80241278 00000000 */  nop
/* DBE52C 8024127C 468031A0 */  cvt.s.w   $f6, $f6
/* DBE530 80241280 27A20044 */  addiu     $v0, $sp, 0x44
/* DBE534 80241284 E7A00038 */  swc1      $f0, 0x38($sp)
/* DBE538 80241288 C640003C */  lwc1      $f0, 0x3c($s2)
/* DBE53C 8024128C C6420040 */  lwc1      $f2, 0x40($s2)
/* DBE540 80241290 46060000 */  add.s     $f0, $f0, $f6
/* DBE544 80241294 E7A40044 */  swc1      $f4, 0x44($sp)
/* DBE548 80241298 E7A20040 */  swc1      $f2, 0x40($sp)
/* DBE54C 8024129C E7A0003C */  swc1      $f0, 0x3c($sp)
/* DBE550 802412A0 AFA20010 */  sw        $v0, 0x10($sp)
/* DBE554 802412A4 8E440080 */  lw        $a0, 0x80($s2)
/* DBE558 802412A8 0C0372DF */  jal       npc_raycast_down_sides
/* DBE55C 802412AC 27A70040 */   addiu    $a3, $sp, 0x40
/* DBE560 802412B0 10400003 */  beqz      $v0, .L802412C0
/* DBE564 802412B4 00000000 */   nop
/* DBE568 802412B8 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* DBE56C 802412BC E640003C */  swc1      $f0, 0x3c($s2)
.L802412C0:
/* DBE570 802412C0 8E830070 */  lw        $v1, 0x70($s4)
/* DBE574 802412C4 2C620064 */  sltiu     $v0, $v1, 0x64
/* DBE578 802412C8 10400042 */  beqz      $v0, L802413D4_DBE684
/* DBE57C 802412CC 00031080 */   sll      $v0, $v1, 2
/* DBE580 802412D0 3C018024 */  lui       $at, %hi(jtbl_80246D80_DC4030)
/* DBE584 802412D4 00220821 */  addu      $at, $at, $v0
/* DBE588 802412D8 8C226D80 */  lw        $v0, %lo(jtbl_80246D80_DC4030)($at)
/* DBE58C 802412DC 00400008 */  jr        $v0
/* DBE590 802412E0 00000000 */   nop
glabel L802412E4_DBE594
/* DBE594 802412E4 0280202D */  daddu     $a0, $s4, $zero
/* DBE598 802412E8 0260282D */  daddu     $a1, $s3, $zero
/* DBE59C 802412EC 0C09015B */  jal       omo_07_UnkNpcAIFunc24
/* DBE5A0 802412F0 02A0302D */   daddu    $a2, $s5, $zero
glabel L802412F4_DBE5A4
/* DBE5A4 802412F4 0280202D */  daddu     $a0, $s4, $zero
/* DBE5A8 802412F8 0260282D */  daddu     $a1, $s3, $zero
/* DBE5AC 802412FC 0C0901B1 */  jal       omo_07_UnkFunc13
/* DBE5B0 80241300 02A0302D */   daddu    $a2, $s5, $zero
/* DBE5B4 80241304 080904F5 */  j         L802413D4_DBE684
/* DBE5B8 80241308 00000000 */   nop
glabel L8024130C_DBE5BC
/* DBE5BC 8024130C 0280202D */  daddu     $a0, $s4, $zero
/* DBE5C0 80241310 0260282D */  daddu     $a1, $s3, $zero
/* DBE5C4 80241314 0C09025B */  jal       omo_07_UnkNpcAIFunc1
/* DBE5C8 80241318 02A0302D */   daddu    $a2, $s5, $zero
glabel L8024131C_DBE5CC
/* DBE5CC 8024131C 0280202D */  daddu     $a0, $s4, $zero
/* DBE5D0 80241320 0260282D */  daddu     $a1, $s3, $zero
/* DBE5D4 80241324 0C09028B */  jal       omo_07_UnkFunc14
/* DBE5D8 80241328 02A0302D */   daddu    $a2, $s5, $zero
/* DBE5DC 8024132C 080904F5 */  j         L802413D4_DBE684
/* DBE5E0 80241330 00000000 */   nop
glabel L80241334_DBE5E4
/* DBE5E4 80241334 0280202D */  daddu     $a0, $s4, $zero
/* DBE5E8 80241338 0260282D */  daddu     $a1, $s3, $zero
/* DBE5EC 8024133C 0C0902FA */  jal       omo_07_UnkNpcAIFunc25
/* DBE5F0 80241340 02A0302D */   daddu    $a2, $s5, $zero
/* DBE5F4 80241344 080904F5 */  j         L802413D4_DBE684
/* DBE5F8 80241348 00000000 */   nop
glabel L8024134C_DBE5FC
/* DBE5FC 8024134C 0280202D */  daddu     $a0, $s4, $zero
/* DBE600 80241350 0260282D */  daddu     $a1, $s3, $zero
/* DBE604 80241354 0C090327 */  jal       omo_07_NpcJumpFunc2
/* DBE608 80241358 02A0302D */   daddu    $a2, $s5, $zero
glabel L8024135C_DBE60C
/* DBE60C 8024135C 0280202D */  daddu     $a0, $s4, $zero
/* DBE610 80241360 0260282D */  daddu     $a1, $s3, $zero
/* DBE614 80241364 0C090344 */  jal       omo_07_NpcJumpFunc
/* DBE618 80241368 02A0302D */   daddu    $a2, $s5, $zero
/* DBE61C 8024136C 080904F5 */  j         L802413D4_DBE684
/* DBE620 80241370 00000000 */   nop
glabel L80241374_DBE624
/* DBE624 80241374 0280202D */  daddu     $a0, $s4, $zero
/* DBE628 80241378 0260282D */  daddu     $a1, $s3, $zero
/* DBE62C 8024137C 0C090362 */  jal       omo_07_UnkNpcAIFunc13
/* DBE630 80241380 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241384_DBE634
/* DBE634 80241384 0280202D */  daddu     $a0, $s4, $zero
/* DBE638 80241388 0260282D */  daddu     $a1, $s3, $zero
/* DBE63C 8024138C 0C0903AE */  jal       omo_07_UnkFunc15
/* DBE640 80241390 02A0302D */   daddu    $a2, $s5, $zero
/* DBE644 80241394 080904F5 */  j         L802413D4_DBE684
/* DBE648 80241398 00000000 */   nop
glabel L8024139C_DBE64C
/* DBE64C 8024139C 0280202D */  daddu     $a0, $s4, $zero
/* DBE650 802413A0 0260282D */  daddu     $a1, $s3, $zero
/* DBE654 802413A4 0C0903F6 */  jal       omo_07_UnkNpcDurationFlagFunc
/* DBE658 802413A8 02A0302D */   daddu    $a2, $s5, $zero
/* DBE65C 802413AC 080904F5 */  j         L802413D4_DBE684
/* DBE660 802413B0 00000000 */   nop
glabel L802413B4_DBE664
/* DBE664 802413B4 0280202D */  daddu     $a0, $s4, $zero
/* DBE668 802413B8 0260282D */  daddu     $a1, $s3, $zero
/* DBE66C 802413BC 0C090410 */  jal       omo_07_UnkFunc16
/* DBE670 802413C0 02A0302D */   daddu    $a2, $s5, $zero
/* DBE674 802413C4 080904F5 */  j         L802413D4_DBE684
/* DBE678 802413C8 00000000 */   nop
glabel L802413CC_DBE67C
/* DBE67C 802413CC 0C0129CF */  jal       func_8004A73C
/* DBE680 802413D0 0280202D */   daddu    $a0, $s4, $zero
glabel L802413D4_DBE684
/* DBE684 802413D4 8FBF0060 */  lw        $ra, 0x60($sp)
/* DBE688 802413D8 8FB5005C */  lw        $s5, 0x5c($sp)
/* DBE68C 802413DC 8FB40058 */  lw        $s4, 0x58($sp)
/* DBE690 802413E0 8FB30054 */  lw        $s3, 0x54($sp)
/* DBE694 802413E4 8FB20050 */  lw        $s2, 0x50($sp)
/* DBE698 802413E8 8FB1004C */  lw        $s1, 0x4c($sp)
/* DBE69C 802413EC 8FB00048 */  lw        $s0, 0x48($sp)
/* DBE6A0 802413F0 0000102D */  daddu     $v0, $zero, $zero
/* DBE6A4 802413F4 03E00008 */  jr        $ra
/* DBE6A8 802413F8 27BD0068 */   addiu    $sp, $sp, 0x68
