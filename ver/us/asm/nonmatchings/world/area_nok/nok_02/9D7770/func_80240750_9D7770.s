.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240750_9D7770
/* 9D7770 80240750 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 9D7774 80240754 AFB20018 */  sw        $s2, 0x18($sp)
/* 9D7778 80240758 0080902D */  daddu     $s2, $a0, $zero
/* 9D777C 8024075C AFBF001C */  sw        $ra, 0x1c($sp)
/* 9D7780 80240760 AFB10014 */  sw        $s1, 0x14($sp)
/* 9D7784 80240764 AFB00010 */  sw        $s0, 0x10($sp)
/* 9D7788 80240768 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 9D778C 8024076C 10A00044 */  beqz      $a1, .L80240880
/* 9D7790 80240770 8E50000C */   lw       $s0, 0xc($s2)
/* 9D7794 80240774 0C00AB39 */  jal       heap_malloc
/* 9D7798 80240778 24040024 */   addiu    $a0, $zero, 0x24
/* 9D779C 8024077C 0040882D */  daddu     $s1, $v0, $zero
/* 9D77A0 80240780 AE510070 */  sw        $s1, 0x70($s2)
/* 9D77A4 80240784 8E050000 */  lw        $a1, ($s0)
/* 9D77A8 80240788 26100004 */  addiu     $s0, $s0, 4
/* 9D77AC 8024078C 0C0B1EAF */  jal       evt_get_variable
/* 9D77B0 80240790 0240202D */   daddu    $a0, $s2, $zero
/* 9D77B4 80240794 AE220020 */  sw        $v0, 0x20($s1)
/* 9D77B8 80240798 8E050000 */  lw        $a1, ($s0)
/* 9D77BC 8024079C 26100004 */  addiu     $s0, $s0, 4
/* 9D77C0 802407A0 0C0B210B */  jal       evt_get_float_variable
/* 9D77C4 802407A4 0240202D */   daddu    $a0, $s2, $zero
/* 9D77C8 802407A8 E6200000 */  swc1      $f0, ($s1)
/* 9D77CC 802407AC 8E050000 */  lw        $a1, ($s0)
/* 9D77D0 802407B0 26100004 */  addiu     $s0, $s0, 4
/* 9D77D4 802407B4 0C0B210B */  jal       evt_get_float_variable
/* 9D77D8 802407B8 0240202D */   daddu    $a0, $s2, $zero
/* 9D77DC 802407BC E6200004 */  swc1      $f0, 4($s1)
/* 9D77E0 802407C0 8E050000 */  lw        $a1, ($s0)
/* 9D77E4 802407C4 26100004 */  addiu     $s0, $s0, 4
/* 9D77E8 802407C8 0C0B210B */  jal       evt_get_float_variable
/* 9D77EC 802407CC 0240202D */   daddu    $a0, $s2, $zero
/* 9D77F0 802407D0 E6200008 */  swc1      $f0, 8($s1)
/* 9D77F4 802407D4 8E050000 */  lw        $a1, ($s0)
/* 9D77F8 802407D8 26100004 */  addiu     $s0, $s0, 4
/* 9D77FC 802407DC 0C0B1EAF */  jal       evt_get_variable
/* 9D7800 802407E0 0240202D */   daddu    $a0, $s2, $zero
/* 9D7804 802407E4 AE22001C */  sw        $v0, 0x1c($s1)
/* 9D7808 802407E8 8E050000 */  lw        $a1, ($s0)
/* 9D780C 802407EC 0C0B210B */  jal       evt_get_float_variable
/* 9D7810 802407F0 0240202D */   daddu    $a0, $s2, $zero
/* 9D7814 802407F4 8E240020 */  lw        $a0, 0x20($s1)
/* 9D7818 802407F8 0C04C3D6 */  jal       get_item_entity
/* 9D781C 802407FC E6200010 */   swc1     $f0, 0x10($s1)
/* 9D7820 80240800 0040802D */  daddu     $s0, $v0, $zero
/* 9D7824 80240804 C60C0008 */  lwc1      $f12, 8($s0)
/* 9D7828 80240808 C60E0010 */  lwc1      $f14, 0x10($s0)
/* 9D782C 8024080C 8E260000 */  lw        $a2, ($s1)
/* 9D7830 80240810 0C00A7B5 */  jal       dist2D
/* 9D7834 80240814 8E270008 */   lw       $a3, 8($s1)
/* 9D7838 80240818 C60C0008 */  lwc1      $f12, 8($s0)
/* 9D783C 8024081C C60E0010 */  lwc1      $f14, 0x10($s0)
/* 9D7840 80240820 8E260000 */  lw        $a2, ($s1)
/* 9D7844 80240824 8E270008 */  lw        $a3, 8($s1)
/* 9D7848 80240828 0C00A720 */  jal       atan2
/* 9D784C 8024082C 46000506 */   mov.s    $f20, $f0
/* 9D7850 80240830 C6240010 */  lwc1      $f4, 0x10($s1)
/* 9D7854 80240834 C626001C */  lwc1      $f6, 0x1c($s1)
/* 9D7858 80240838 468031A0 */  cvt.s.w   $f6, $f6
/* 9D785C 8024083C 46062102 */  mul.s     $f4, $f4, $f6
/* 9D7860 80240840 00000000 */  nop
/* 9D7864 80240844 3C013F00 */  lui       $at, 0x3f00
/* 9D7868 80240848 44811000 */  mtc1      $at, $f2
/* 9D786C 8024084C 00000000 */  nop
/* 9D7870 80240850 46022102 */  mul.s     $f4, $f4, $f2
/* 9D7874 80240854 00000000 */  nop
/* 9D7878 80240858 E620000C */  swc1      $f0, 0xc($s1)
/* 9D787C 8024085C C6200004 */  lwc1      $f0, 4($s1)
/* 9D7880 80240860 C602000C */  lwc1      $f2, 0xc($s0)
/* 9D7884 80240864 46020001 */  sub.s     $f0, $f0, $f2
/* 9D7888 80240868 46003086 */  mov.s     $f2, $f6
/* 9D788C 8024086C 46060003 */  div.s     $f0, $f0, $f6
/* 9D7890 80240870 46002100 */  add.s     $f4, $f4, $f0
/* 9D7894 80240874 4602A503 */  div.s     $f20, $f20, $f2
/* 9D7898 80240878 E6340014 */  swc1      $f20, 0x14($s1)
/* 9D789C 8024087C E6240018 */  swc1      $f4, 0x18($s1)
.L80240880:
/* 9D78A0 80240880 8E510070 */  lw        $s1, 0x70($s2)
/* 9D78A4 80240884 0C04C3D6 */  jal       get_item_entity
/* 9D78A8 80240888 8E240020 */   lw       $a0, 0x20($s1)
/* 9D78AC 8024088C 0040802D */  daddu     $s0, $v0, $zero
/* 9D78B0 80240890 16000005 */  bnez      $s0, .L802408A8
/* 9D78B4 80240894 00000000 */   nop
/* 9D78B8 80240898 0C00AB4B */  jal       heap_free
/* 9D78BC 8024089C 8E440070 */   lw       $a0, 0x70($s2)
/* 9D78C0 802408A0 08090253 */  j         .L8024094C
/* 9D78C4 802408A4 24020002 */   addiu    $v0, $zero, 2
.L802408A8:
/* 9D78C8 802408A8 C62C000C */  lwc1      $f12, 0xc($s1)
/* 9D78CC 802408AC 0C00A8BB */  jal       sin_deg
/* 9D78D0 802408B0 00000000 */   nop
/* 9D78D4 802408B4 C6220014 */  lwc1      $f2, 0x14($s1)
/* 9D78D8 802408B8 46001082 */  mul.s     $f2, $f2, $f0
/* 9D78DC 802408BC 00000000 */  nop
/* 9D78E0 802408C0 C6000008 */  lwc1      $f0, 8($s0)
/* 9D78E4 802408C4 46020000 */  add.s     $f0, $f0, $f2
/* 9D78E8 802408C8 E6000008 */  swc1      $f0, 8($s0)
/* 9D78EC 802408CC 0C00A8D4 */  jal       cos_deg
/* 9D78F0 802408D0 C62C000C */   lwc1     $f12, 0xc($s1)
/* 9D78F4 802408D4 C6220014 */  lwc1      $f2, 0x14($s1)
/* 9D78F8 802408D8 46001082 */  mul.s     $f2, $f2, $f0
/* 9D78FC 802408DC 00000000 */  nop
/* 9D7900 802408E0 C6000010 */  lwc1      $f0, 0x10($s0)
/* 9D7904 802408E4 46020001 */  sub.s     $f0, $f0, $f2
/* 9D7908 802408E8 E6000010 */  swc1      $f0, 0x10($s0)
/* 9D790C 802408EC C600000C */  lwc1      $f0, 0xc($s0)
/* 9D7910 802408F0 C6220018 */  lwc1      $f2, 0x18($s1)
/* 9D7914 802408F4 46020000 */  add.s     $f0, $f0, $f2
/* 9D7918 802408F8 E600000C */  swc1      $f0, 0xc($s0)
/* 9D791C 802408FC C6200018 */  lwc1      $f0, 0x18($s1)
/* 9D7920 80240900 C6220010 */  lwc1      $f2, 0x10($s1)
/* 9D7924 80240904 8E22001C */  lw        $v0, 0x1c($s1)
/* 9D7928 80240908 46020001 */  sub.s     $f0, $f0, $f2
/* 9D792C 8024090C 2442FFFF */  addiu     $v0, $v0, -1
/* 9D7930 80240910 AE22001C */  sw        $v0, 0x1c($s1)
/* 9D7934 80240914 04400003 */  bltz      $v0, .L80240924
/* 9D7938 80240918 E6200018 */   swc1     $f0, 0x18($s1)
/* 9D793C 8024091C 08090253 */  j         .L8024094C
/* 9D7940 80240920 0000102D */   daddu    $v0, $zero, $zero
.L80240924:
/* 9D7944 80240924 C6200000 */  lwc1      $f0, ($s1)
/* 9D7948 80240928 E6000008 */  swc1      $f0, 8($s0)
/* 9D794C 8024092C C6200004 */  lwc1      $f0, 4($s1)
/* 9D7950 80240930 E600000C */  swc1      $f0, 0xc($s0)
/* 9D7954 80240934 C6200008 */  lwc1      $f0, 8($s1)
/* 9D7958 80240938 E6000010 */  swc1      $f0, 0x10($s0)
/* 9D795C 8024093C AE200018 */  sw        $zero, 0x18($s1)
/* 9D7960 80240940 0C00AB4B */  jal       heap_free
/* 9D7964 80240944 8E440070 */   lw       $a0, 0x70($s2)
/* 9D7968 80240948 24020001 */  addiu     $v0, $zero, 1
.L8024094C:
/* 9D796C 8024094C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 9D7970 80240950 8FB20018 */  lw        $s2, 0x18($sp)
/* 9D7974 80240954 8FB10014 */  lw        $s1, 0x14($sp)
/* 9D7978 80240958 8FB00010 */  lw        $s0, 0x10($sp)
/* 9D797C 8024095C D7B40020 */  ldc1      $f20, 0x20($sp)
/* 9D7980 80240960 03E00008 */  jr        $ra
/* 9D7984 80240964 27BD0028 */   addiu    $sp, $sp, 0x28
/* 9D7988 80240968 00000000 */  nop
/* 9D798C 8024096C 00000000 */  nop
