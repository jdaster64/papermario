.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_B70860
/* B70860 80240000 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* B70864 80240004 AFB00018 */  sw        $s0, 0x18($sp)
/* B70868 80240008 0080802D */  daddu     $s0, $a0, $zero
/* B7086C 8024000C 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* B70870 80240010 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* B70874 80240014 AFB1001C */  sw        $s1, 0x1c($sp)
/* B70878 80240018 3C118011 */  lui       $s1, %hi(gPlayerData)
/* B7087C 8024001C 2631F290 */  addiu     $s1, $s1, %lo(gPlayerData)
/* B70880 80240020 AFB20020 */  sw        $s2, 0x20($sp)
/* B70884 80240024 0220902D */  daddu     $s2, $s1, $zero
/* B70888 80240028 10A00004 */  beqz      $a1, .L8024003C
/* B7088C 8024002C AFBF0024 */   sw       $ra, 0x24($sp)
/* B70890 80240030 240200FF */  addiu     $v0, $zero, 0xff
/* B70894 80240034 AE020070 */  sw        $v0, 0x70($s0)
/* B70898 80240038 AE000074 */  sw        $zero, 0x74($s0)
.L8024003C:
/* B7089C 8024003C 24040001 */  addiu     $a0, $zero, 1
/* B708A0 80240040 C460002C */  lwc1      $f0, 0x2c($v1)
/* B708A4 80240044 3C014100 */  lui       $at, 0x4100
/* B708A8 80240048 44811000 */  mtc1      $at, $f2
/* B708AC 8024004C 00000000 */  nop
/* B708B0 80240050 46020000 */  add.s     $f0, $f0, $f2
/* B708B4 80240054 C4620030 */  lwc1      $f2, 0x30($v1)
/* B708B8 80240058 C4640028 */  lwc1      $f4, 0x28($v1)
/* B708BC 8024005C 4600118D */  trunc.w.s $f6, $f2
/* B708C0 80240060 E7A60010 */  swc1      $f6, 0x10($sp)
/* B708C4 80240064 4600218D */  trunc.w.s $f6, $f4
/* B708C8 80240068 44063000 */  mfc1      $a2, $f6
/* B708CC 8024006C 4600018D */  trunc.w.s $f6, $f0
/* B708D0 80240070 44073000 */  mfc1      $a3, $f6
/* B708D4 80240074 0C04DFB0 */  jal       set_screen_overlay_center_worldpos
/* B708D8 80240078 0080282D */   daddu    $a1, $a0, $zero
/* B708DC 8024007C 3C028011 */  lui       $v0, %hi(gPartnerActionStatus)
/* B708E0 80240080 8042EBB0 */  lb        $v0, %lo(gPartnerActionStatus)($v0)
/* B708E4 80240084 10400012 */  beqz      $v0, .L802400D0
/* B708E8 80240088 24020006 */   addiu    $v0, $zero, 6
/* B708EC 8024008C 82230012 */  lb        $v1, 0x12($s1)
/* B708F0 80240090 14620022 */  bne       $v1, $v0, .L8024011C
/* B708F4 80240094 00000000 */   nop
/* B708F8 80240098 8E020074 */  lw        $v0, 0x74($s0)
/* B708FC 8024009C 14400004 */  bnez      $v0, .L802400B0
/* B70900 802400A0 24020001 */   addiu    $v0, $zero, 1
/* B70904 802400A4 AE020074 */  sw        $v0, 0x74($s0)
/* B70908 802400A8 0C05272D */  jal       sfx_play_sound
/* B7090C 802400AC 24042011 */   addiu    $a0, $zero, 0x2011
.L802400B0:
/* B70910 802400B0 8E020070 */  lw        $v0, 0x70($s0)
/* B70914 802400B4 2442FFF8 */  addiu     $v0, $v0, -8
/* B70918 802400B8 AE020070 */  sw        $v0, 0x70($s0)
/* B7091C 802400BC 2842005A */  slti      $v0, $v0, 0x5a
/* B70920 802400C0 10400016 */  beqz      $v0, .L8024011C
/* B70924 802400C4 2402005A */   addiu    $v0, $zero, 0x5a
/* B70928 802400C8 08090047 */  j         .L8024011C
/* B7092C 802400CC AE020070 */   sw       $v0, 0x70($s0)
.L802400D0:
/* B70930 802400D0 82430012 */  lb        $v1, 0x12($s2)
/* B70934 802400D4 14620010 */  bne       $v1, $v0, .L80240118
/* B70938 802400D8 240200FF */   addiu    $v0, $zero, 0xff
/* B7093C 802400DC 8E020074 */  lw        $v0, 0x74($s0)
/* B70940 802400E0 10400007 */  beqz      $v0, .L80240100
/* B70944 802400E4 00000000 */   nop
/* B70948 802400E8 8E020070 */  lw        $v0, 0x70($s0)
/* B7094C 802400EC 284200FF */  slti      $v0, $v0, 0xff
/* B70950 802400F0 10400003 */  beqz      $v0, .L80240100
/* B70954 802400F4 AE000074 */   sw       $zero, 0x74($s0)
/* B70958 802400F8 0C05272D */  jal       sfx_play_sound
/* B7095C 802400FC 24042012 */   addiu    $a0, $zero, 0x2012
.L80240100:
/* B70960 80240100 8E020070 */  lw        $v0, 0x70($s0)
/* B70964 80240104 24420008 */  addiu     $v0, $v0, 8
/* B70968 80240108 AE020070 */  sw        $v0, 0x70($s0)
/* B7096C 8024010C 284200FF */  slti      $v0, $v0, 0xff
/* B70970 80240110 14400002 */  bnez      $v0, .L8024011C
/* B70974 80240114 240200FF */   addiu    $v0, $zero, 0xff
.L80240118:
/* B70978 80240118 AE020070 */  sw        $v0, 0x70($s0)
.L8024011C:
/* B7097C 8024011C C6060070 */  lwc1      $f6, 0x70($s0)
/* B70980 80240120 468031A0 */  cvt.s.w   $f6, $f6
/* B70984 80240124 44053000 */  mfc1      $a1, $f6
/* B70988 80240128 0C04E035 */  jal       set_screen_overlay_alpha
/* B7098C 8024012C 24040001 */   addiu    $a0, $zero, 1
/* B70990 80240130 3C05437F */  lui       $a1, 0x437f
/* B70994 80240134 0C04DF69 */  jal       set_screen_overlay_params_back
/* B70998 80240138 2404000B */   addiu    $a0, $zero, 0xb
/* B7099C 8024013C 8FBF0024 */  lw        $ra, 0x24($sp)
/* B709A0 80240140 8FB20020 */  lw        $s2, 0x20($sp)
/* B709A4 80240144 8FB1001C */  lw        $s1, 0x1c($sp)
/* B709A8 80240148 8FB00018 */  lw        $s0, 0x18($sp)
/* B709AC 8024014C 0000102D */  daddu     $v0, $zero, $zero
/* B709B0 80240150 03E00008 */  jr        $ra
/* B709B4 80240154 27BD0028 */   addiu    $sp, $sp, 0x28
