.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802408E0_87A4C0
/* 87A4C0 802408E0 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 87A4C4 802408E4 AFB60040 */  sw        $s6, 0x40($sp)
/* 87A4C8 802408E8 0080B02D */  daddu     $s6, $a0, $zero
/* 87A4CC 802408EC AFB00028 */  sw        $s0, 0x28($sp)
/* 87A4D0 802408F0 00A0802D */  daddu     $s0, $a1, $zero
/* 87A4D4 802408F4 AFBF0044 */  sw        $ra, 0x44($sp)
/* 87A4D8 802408F8 AFB5003C */  sw        $s5, 0x3c($sp)
/* 87A4DC 802408FC AFB40038 */  sw        $s4, 0x38($sp)
/* 87A4E0 80240900 AFB30034 */  sw        $s3, 0x34($sp)
/* 87A4E4 80240904 AFB20030 */  sw        $s2, 0x30($sp)
/* 87A4E8 80240908 AFB1002C */  sw        $s1, 0x2c($sp)
/* 87A4EC 8024090C F7B80058 */  sdc1      $f24, 0x58($sp)
/* 87A4F0 80240910 F7B60050 */  sdc1      $f22, 0x50($sp)
/* 87A4F4 80240914 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 87A4F8 80240918 8ED3000C */  lw        $s3, 0xc($s6)
/* 87A4FC 8024091C 0C00EAD2 */  jal       get_npc_safe
/* 87A500 80240920 2404FFFC */   addiu    $a0, $zero, -4
/* 87A504 80240924 27A50018 */  addiu     $a1, $sp, 0x18
/* 87A508 80240928 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 87A50C 8024092C 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 87A510 80240930 27A6001C */  addiu     $a2, $sp, 0x1c
/* 87A514 80240934 00041880 */  sll       $v1, $a0, 2
/* 87A518 80240938 00641821 */  addu      $v1, $v1, $a0
/* 87A51C 8024093C 00031880 */  sll       $v1, $v1, 2
/* 87A520 80240940 00641823 */  subu      $v1, $v1, $a0
/* 87A524 80240944 000320C0 */  sll       $a0, $v1, 3
/* 87A528 80240948 00641821 */  addu      $v1, $v1, $a0
/* 87A52C 8024094C 000318C0 */  sll       $v1, $v1, 3
/* 87A530 80240950 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* 87A534 80240954 00230821 */  addu      $at, $at, $v1
/* 87A538 80240958 C42C1DEC */  lwc1      $f12, %lo(gCameras+0x6C)($at)
/* 87A53C 8024095C 0C00A88D */  jal       sin_cos_deg
/* 87A540 80240960 0040A82D */   daddu    $s5, $v0, $zero
/* 87A544 80240964 1200005D */  beqz      $s0, .L80240ADC
/* 87A548 80240968 00000000 */   nop
/* 87A54C 8024096C 0C00AB0A */  jal       general_heap_malloc
/* 87A550 80240970 24040068 */   addiu    $a0, $zero, 0x68
/* 87A554 80240974 0040902D */  daddu     $s2, $v0, $zero
/* 87A558 80240978 02C0202D */  daddu     $a0, $s6, $zero
/* 87A55C 8024097C 0000882D */  daddu     $s1, $zero, $zero
/* 87A560 80240980 2414FFFF */  addiu     $s4, $zero, -1
/* 87A564 80240984 AED20060 */  sw        $s2, 0x60($s6)
/* 87A568 80240988 8E650000 */  lw        $a1, ($s3)
/* 87A56C 8024098C 3C014148 */  lui       $at, 0x4148
/* 87A570 80240990 4481C000 */  mtc1      $at, $f24
/* 87A574 80240994 3C013F80 */  lui       $at, 0x3f80
/* 87A578 80240998 4481B000 */  mtc1      $at, $f22
/* 87A57C 8024099C 4480A000 */  mtc1      $zero, $f20
/* 87A580 802409A0 0C0B1EAF */  jal       evt_get_variable
/* 87A584 802409A4 0240802D */   daddu    $s0, $s2, $zero
/* 87A588 802409A8 0C04417A */  jal       get_entity_by_index
/* 87A58C 802409AC 0040202D */   daddu    $a0, $v0, $zero
/* 87A590 802409B0 AE42005C */  sw        $v0, 0x5c($s2)
.L802409B4:
/* 87A594 802409B4 8E42005C */  lw        $v0, 0x5c($s2)
/* 87A598 802409B8 C440004C */  lwc1      $f0, 0x4c($v0)
/* 87A59C 802409BC 0000202D */  daddu     $a0, $zero, $zero
/* 87A5A0 802409C0 E7B60010 */  swc1      $f22, 0x10($sp)
/* 87A5A4 802409C4 AFB40014 */  sw        $s4, 0x14($sp)
/* 87A5A8 802409C8 46180000 */  add.s     $f0, $f0, $f24
/* 87A5AC 802409CC 8C450048 */  lw        $a1, 0x48($v0)
/* 87A5B0 802409D0 8C470050 */  lw        $a3, 0x50($v0)
/* 87A5B4 802409D4 44060000 */  mfc1      $a2, $f0
/* 87A5B8 802409D8 0C01C5BC */  jal       playFX_51
/* 87A5BC 802409DC 26310001 */   addiu    $s1, $s1, 1
/* 87A5C0 802409E0 AE020008 */  sw        $v0, 8($s0)
/* 87A5C4 802409E4 E614002C */  swc1      $f20, 0x2c($s0)
/* 87A5C8 802409E8 E6140020 */  swc1      $f20, 0x20($s0)
/* 87A5CC 802409EC E6140014 */  swc1      $f20, 0x14($s0)
/* 87A5D0 802409F0 E6140050 */  swc1      $f20, 0x50($s0)
/* 87A5D4 802409F4 E6140044 */  swc1      $f20, 0x44($s0)
/* 87A5D8 802409F8 E6140038 */  swc1      $f20, 0x38($s0)
/* 87A5DC 802409FC 2A220003 */  slti      $v0, $s1, 3
/* 87A5E0 80240A00 1440FFEC */  bnez      $v0, .L802409B4
/* 87A5E4 80240A04 26100004 */   addiu    $s0, $s0, 4
/* 87A5E8 80240A08 0000882D */  daddu     $s1, $zero, $zero
/* 87A5EC 80240A0C 0240802D */  daddu     $s0, $s2, $zero
/* 87A5F0 80240A10 3C148024 */  lui       $s4, %hi(D_80243A48_87D628)
/* 87A5F4 80240A14 26943A48 */  addiu     $s4, $s4, %lo(D_80243A48_87D628)
/* 87A5F8 80240A18 3C014248 */  lui       $at, 0x4248
/* 87A5FC 80240A1C 4481A000 */  mtc1      $at, $f20
/* 87A600 80240A20 24130044 */  addiu     $s3, $zero, 0x44
/* 87A604 80240A24 AE400000 */  sw        $zero, ($s2)
/* 87A608 80240A28 AE400004 */  sw        $zero, 4($s2)
/* 87A60C 80240A2C AE400060 */  sw        $zero, 0x60($s2)
/* 87A610 80240A30 AE400064 */  sw        $zero, 0x64($s2)
.L80240A34:
/* 87A614 80240A34 27A40020 */  addiu     $a0, $sp, 0x20
/* 87A618 80240A38 4406A000 */  mfc1      $a2, $f20
/* 87A61C 80240A3C 8E870000 */  lw        $a3, ($s4)
/* 87A620 80240A40 02532821 */  addu      $a1, $s2, $s3
/* 87A624 80240A44 0C00A7E7 */  jal       add_vec2D_polar
/* 87A628 80240A48 AFA00020 */   sw       $zero, 0x20($sp)
/* 87A62C 80240A4C C7A2001C */  lwc1      $f2, 0x1c($sp)
/* 87A630 80240A50 C7A40020 */  lwc1      $f4, 0x20($sp)
/* 87A634 80240A54 46041082 */  mul.s     $f2, $f2, $f4
/* 87A638 80240A58 00000000 */  nop
/* 87A63C 80240A5C C7A00018 */  lwc1      $f0, 0x18($sp)
/* 87A640 80240A60 46040002 */  mul.s     $f0, $f0, $f4
/* 87A644 80240A64 00000000 */  nop
/* 87A648 80240A68 E6020038 */  swc1      $f2, 0x38($s0)
/* 87A64C 80240A6C E6000050 */  swc1      $f0, 0x50($s0)
/* 87A650 80240A70 8E42005C */  lw        $v0, 0x5c($s2)
/* 87A654 80240A74 C6000038 */  lwc1      $f0, 0x38($s0)
/* 87A658 80240A78 C4420048 */  lwc1      $f2, 0x48($v0)
/* 87A65C 80240A7C 46001080 */  add.s     $f2, $f2, $f0
/* 87A660 80240A80 C6A00038 */  lwc1      $f0, 0x38($s5)
/* 87A664 80240A84 46020001 */  sub.s     $f0, $f0, $f2
/* 87A668 80240A88 E6000038 */  swc1      $f0, 0x38($s0)
/* 87A66C 80240A8C 8E42005C */  lw        $v0, 0x5c($s2)
/* 87A670 80240A90 C6000044 */  lwc1      $f0, 0x44($s0)
/* 87A674 80240A94 C442004C */  lwc1      $f2, 0x4c($v0)
/* 87A678 80240A98 46001080 */  add.s     $f2, $f2, $f0
/* 87A67C 80240A9C C6A0003C */  lwc1      $f0, 0x3c($s5)
/* 87A680 80240AA0 46020001 */  sub.s     $f0, $f0, $f2
/* 87A684 80240AA4 E6000044 */  swc1      $f0, 0x44($s0)
/* 87A688 80240AA8 8E42005C */  lw        $v0, 0x5c($s2)
/* 87A68C 80240AAC C6000050 */  lwc1      $f0, 0x50($s0)
/* 87A690 80240AB0 C4420050 */  lwc1      $f2, 0x50($v0)
/* 87A694 80240AB4 26940004 */  addiu     $s4, $s4, 4
/* 87A698 80240AB8 46001080 */  add.s     $f2, $f2, $f0
/* 87A69C 80240ABC C6A00040 */  lwc1      $f0, 0x40($s5)
/* 87A6A0 80240AC0 26730004 */  addiu     $s3, $s3, 4
/* 87A6A4 80240AC4 46020001 */  sub.s     $f0, $f0, $f2
/* 87A6A8 80240AC8 26310001 */  addiu     $s1, $s1, 1
/* 87A6AC 80240ACC 2A220003 */  slti      $v0, $s1, 3
/* 87A6B0 80240AD0 E6000050 */  swc1      $f0, 0x50($s0)
/* 87A6B4 80240AD4 1440FFD7 */  bnez      $v0, .L80240A34
/* 87A6B8 80240AD8 26100004 */   addiu    $s0, $s0, 4
.L80240ADC:
/* 87A6BC 80240ADC 8ED20060 */  lw        $s2, 0x60($s6)
/* 87A6C0 80240AE0 8E430000 */  lw        $v1, ($s2)
/* 87A6C4 80240AE4 24020001 */  addiu     $v0, $zero, 1
/* 87A6C8 80240AE8 10620038 */  beq       $v1, $v0, .L80240BCC
/* 87A6CC 80240AEC 28620002 */   slti     $v0, $v1, 2
/* 87A6D0 80240AF0 50400005 */  beql      $v0, $zero, .L80240B08
/* 87A6D4 80240AF4 24020002 */   addiu    $v0, $zero, 2
/* 87A6D8 80240AF8 10600007 */  beqz      $v1, .L80240B18
/* 87A6DC 80240AFC 24040005 */   addiu    $a0, $zero, 5
/* 87A6E0 80240B00 0809032C */  j         .L80240CB0
/* 87A6E4 80240B04 00000000 */   nop
.L80240B08:
/* 87A6E8 80240B08 10620058 */  beq       $v1, $v0, .L80240C6C
/* 87A6EC 80240B0C 00000000 */   nop
/* 87A6F0 80240B10 0809032C */  j         .L80240CB0
/* 87A6F4 80240B14 00000000 */   nop
.L80240B18:
/* 87A6F8 80240B18 0000882D */  daddu     $s1, $zero, $zero
/* 87A6FC 80240B1C 3C148024 */  lui       $s4, %hi(D_80243A48_87D628)
/* 87A700 80240B20 26943A48 */  addiu     $s4, $s4, %lo(D_80243A48_87D628)
/* 87A704 80240B24 24130020 */  addiu     $s3, $zero, 0x20
/* 87A708 80240B28 3C064248 */  lui       $a2, 0x4248
/* 87A70C 80240B2C 44800000 */  mtc1      $zero, $f0
/* 87A710 80240B30 24020014 */  addiu     $v0, $zero, 0x14
/* 87A714 80240B34 AFA20010 */  sw        $v0, 0x10($sp)
/* 87A718 80240B38 44050000 */  mfc1      $a1, $f0
/* 87A71C 80240B3C 8E470060 */  lw        $a3, 0x60($s2)
/* 87A720 80240B40 4485B000 */  mtc1      $a1, $f22
/* 87A724 80240B44 0C00A8ED */  jal       update_lerp
/* 87A728 80240B48 0240802D */   daddu    $s0, $s2, $zero
/* 87A72C 80240B4C 46000506 */  mov.s     $f20, $f0
.L80240B50:
/* 87A730 80240B50 4406A000 */  mfc1      $a2, $f20
/* 87A734 80240B54 27A40020 */  addiu     $a0, $sp, 0x20
/* 87A738 80240B58 E6160020 */  swc1      $f22, 0x20($s0)
/* 87A73C 80240B5C 8E870000 */  lw        $a3, ($s4)
/* 87A740 80240B60 02532821 */  addu      $a1, $s2, $s3
/* 87A744 80240B64 0C00A7E7 */  jal       add_vec2D_polar
/* 87A748 80240B68 E7B60020 */   swc1     $f22, 0x20($sp)
/* 87A74C 80240B6C C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 87A750 80240B70 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 87A754 80240B74 46002102 */  mul.s     $f4, $f4, $f0
/* 87A758 80240B78 00000000 */  nop
/* 87A75C 80240B7C C7A20018 */  lwc1      $f2, 0x18($sp)
/* 87A760 80240B80 26940004 */  addiu     $s4, $s4, 4
/* 87A764 80240B84 46001082 */  mul.s     $f2, $f2, $f0
/* 87A768 80240B88 00000000 */  nop
/* 87A76C 80240B8C 26730004 */  addiu     $s3, $s3, 4
/* 87A770 80240B90 26310001 */  addiu     $s1, $s1, 1
/* 87A774 80240B94 2A220003 */  slti      $v0, $s1, 3
/* 87A778 80240B98 E6040014 */  swc1      $f4, 0x14($s0)
/* 87A77C 80240B9C E602002C */  swc1      $f2, 0x2c($s0)
/* 87A780 80240BA0 1440FFEB */  bnez      $v0, .L80240B50
/* 87A784 80240BA4 26100004 */   addiu    $s0, $s0, 4
/* 87A788 80240BA8 8E420060 */  lw        $v0, 0x60($s2)
/* 87A78C 80240BAC 24420001 */  addiu     $v0, $v0, 1
/* 87A790 80240BB0 AE420060 */  sw        $v0, 0x60($s2)
/* 87A794 80240BB4 28420015 */  slti      $v0, $v0, 0x15
/* 87A798 80240BB8 1440003D */  bnez      $v0, .L80240CB0
/* 87A79C 80240BBC 24020001 */   addiu    $v0, $zero, 1
/* 87A7A0 80240BC0 AE420000 */  sw        $v0, ($s2)
/* 87A7A4 80240BC4 0809032C */  j         .L80240CB0
/* 87A7A8 80240BC8 AE400060 */   sw       $zero, 0x60($s2)
.L80240BCC:
/* 87A7AC 80240BCC 0000882D */  daddu     $s1, $zero, $zero
/* 87A7B0 80240BD0 3C148024 */  lui       $s4, %hi(D_80243A48_87D628)
/* 87A7B4 80240BD4 26943A48 */  addiu     $s4, $s4, %lo(D_80243A48_87D628)
/* 87A7B8 80240BD8 24130020 */  addiu     $s3, $zero, 0x20
/* 87A7BC 80240BDC 0240802D */  daddu     $s0, $s2, $zero
/* 87A7C0 80240BE0 3C014248 */  lui       $at, 0x4248
/* 87A7C4 80240BE4 4481A000 */  mtc1      $at, $f20
/* 87A7C8 80240BE8 4480B000 */  mtc1      $zero, $f22
.L80240BEC:
/* 87A7CC 80240BEC 4406A000 */  mfc1      $a2, $f20
/* 87A7D0 80240BF0 27A40020 */  addiu     $a0, $sp, 0x20
/* 87A7D4 80240BF4 E6160020 */  swc1      $f22, 0x20($s0)
/* 87A7D8 80240BF8 8E870000 */  lw        $a3, ($s4)
/* 87A7DC 80240BFC 02532821 */  addu      $a1, $s2, $s3
/* 87A7E0 80240C00 0C00A7E7 */  jal       add_vec2D_polar
/* 87A7E4 80240C04 E7B60020 */   swc1     $f22, 0x20($sp)
/* 87A7E8 80240C08 C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 87A7EC 80240C0C C7A00020 */  lwc1      $f0, 0x20($sp)
/* 87A7F0 80240C10 46002102 */  mul.s     $f4, $f4, $f0
/* 87A7F4 80240C14 00000000 */  nop
/* 87A7F8 80240C18 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 87A7FC 80240C1C 26940004 */  addiu     $s4, $s4, 4
/* 87A800 80240C20 46001082 */  mul.s     $f2, $f2, $f0
/* 87A804 80240C24 00000000 */  nop
/* 87A808 80240C28 26730004 */  addiu     $s3, $s3, 4
/* 87A80C 80240C2C 26310001 */  addiu     $s1, $s1, 1
/* 87A810 80240C30 2A220003 */  slti      $v0, $s1, 3
/* 87A814 80240C34 E6040014 */  swc1      $f4, 0x14($s0)
/* 87A818 80240C38 E602002C */  swc1      $f2, 0x2c($s0)
/* 87A81C 80240C3C 1440FFEB */  bnez      $v0, .L80240BEC
/* 87A820 80240C40 26100004 */   addiu    $s0, $s0, 4
/* 87A824 80240C44 8E420060 */  lw        $v0, 0x60($s2)
/* 87A828 80240C48 24420001 */  addiu     $v0, $v0, 1
/* 87A82C 80240C4C AE420060 */  sw        $v0, 0x60($s2)
/* 87A830 80240C50 28420010 */  slti      $v0, $v0, 0x10
/* 87A834 80240C54 14400016 */  bnez      $v0, .L80240CB0
/* 87A838 80240C58 2402000F */   addiu    $v0, $zero, 0xf
/* 87A83C 80240C5C AE420060 */  sw        $v0, 0x60($s2)
/* 87A840 80240C60 24020002 */  addiu     $v0, $zero, 2
/* 87A844 80240C64 0809032C */  j         .L80240CB0
/* 87A848 80240C68 AE420000 */   sw       $v0, ($s2)
.L80240C6C:
/* 87A84C 80240C6C 8E420060 */  lw        $v0, 0x60($s2)
/* 87A850 80240C70 24420001 */  addiu     $v0, $v0, 1
/* 87A854 80240C74 AE420060 */  sw        $v0, 0x60($s2)
/* 87A858 80240C78 2842001F */  slti      $v0, $v0, 0x1f
/* 87A85C 80240C7C 1440000C */  bnez      $v0, .L80240CB0
/* 87A860 80240C80 0000882D */   daddu    $s1, $zero, $zero
/* 87A864 80240C84 0240282D */  daddu     $a1, $s2, $zero
.L80240C88:
/* 87A868 80240C88 8CA20008 */  lw        $v0, 8($a1)
/* 87A86C 80240C8C 8C430000 */  lw        $v1, ($v0)
/* 87A870 80240C90 26310001 */  addiu     $s1, $s1, 1
/* 87A874 80240C94 34630010 */  ori       $v1, $v1, 0x10
/* 87A878 80240C98 AC430000 */  sw        $v1, ($v0)
/* 87A87C 80240C9C 2A220003 */  slti      $v0, $s1, 3
/* 87A880 80240CA0 1440FFF9 */  bnez      $v0, .L80240C88
/* 87A884 80240CA4 24A50004 */   addiu    $a1, $a1, 4
/* 87A888 80240CA8 08090379 */  j         .L80240DE4
/* 87A88C 80240CAC 24020002 */   addiu    $v0, $zero, 2
.L80240CB0:
/* 87A890 80240CB0 8E430004 */  lw        $v1, 4($s2)
/* 87A894 80240CB4 10600005 */  beqz      $v1, .L80240CCC
/* 87A898 80240CB8 24020001 */   addiu    $v0, $zero, 1
/* 87A89C 80240CBC 1062000B */  beq       $v1, $v0, .L80240CEC
/* 87A8A0 80240CC0 0000882D */   daddu    $s1, $zero, $zero
/* 87A8A4 80240CC4 08090368 */  j         .L80240DA0
/* 87A8A8 80240CC8 0240282D */   daddu    $a1, $s2, $zero
.L80240CCC:
/* 87A8AC 80240CCC 8E420064 */  lw        $v0, 0x64($s2)
/* 87A8B0 80240CD0 24420001 */  addiu     $v0, $v0, 1
/* 87A8B4 80240CD4 AE420064 */  sw        $v0, 0x64($s2)
/* 87A8B8 80240CD8 28420010 */  slti      $v0, $v0, 0x10
/* 87A8BC 80240CDC 1440002F */  bnez      $v0, .L80240D9C
/* 87A8C0 80240CE0 0000882D */   daddu    $s1, $zero, $zero
/* 87A8C4 80240CE4 08090364 */  j         .L80240D90
/* 87A8C8 80240CE8 24020001 */   addiu    $v0, $zero, 1
.L80240CEC:
/* 87A8CC 80240CEC 4480A000 */  mtc1      $zero, $f20
/* 87A8D0 80240CF0 24130014 */  addiu     $s3, $zero, 0x14
/* 87A8D4 80240CF4 0240802D */  daddu     $s0, $s2, $zero
.L80240CF8:
/* 87A8D8 80240CF8 4405A000 */  mfc1      $a1, $f20
/* 87A8DC 80240CFC AFB30010 */  sw        $s3, 0x10($sp)
/* 87A8E0 80240D00 8E060038 */  lw        $a2, 0x38($s0)
/* 87A8E4 80240D04 8E470064 */  lw        $a3, 0x64($s2)
/* 87A8E8 80240D08 0C00A8ED */  jal       update_lerp
/* 87A8EC 80240D0C 24040001 */   addiu    $a0, $zero, 1
/* 87A8F0 80240D10 C6020014 */  lwc1      $f2, 0x14($s0)
/* 87A8F4 80240D14 46001080 */  add.s     $f2, $f2, $f0
/* 87A8F8 80240D18 4405A000 */  mfc1      $a1, $f20
/* 87A8FC 80240D1C E6020014 */  swc1      $f2, 0x14($s0)
/* 87A900 80240D20 AFB30010 */  sw        $s3, 0x10($sp)
/* 87A904 80240D24 8E060044 */  lw        $a2, 0x44($s0)
/* 87A908 80240D28 8E470064 */  lw        $a3, 0x64($s2)
/* 87A90C 80240D2C 0C00A8ED */  jal       update_lerp
/* 87A910 80240D30 24040001 */   addiu    $a0, $zero, 1
/* 87A914 80240D34 C6020020 */  lwc1      $f2, 0x20($s0)
/* 87A918 80240D38 46001080 */  add.s     $f2, $f2, $f0
/* 87A91C 80240D3C 4405A000 */  mfc1      $a1, $f20
/* 87A920 80240D40 E6020020 */  swc1      $f2, 0x20($s0)
/* 87A924 80240D44 AFB30010 */  sw        $s3, 0x10($sp)
/* 87A928 80240D48 8E060050 */  lw        $a2, 0x50($s0)
/* 87A92C 80240D4C 8E470064 */  lw        $a3, 0x64($s2)
/* 87A930 80240D50 0C00A8ED */  jal       update_lerp
/* 87A934 80240D54 24040001 */   addiu    $a0, $zero, 1
/* 87A938 80240D58 C602002C */  lwc1      $f2, 0x2c($s0)
/* 87A93C 80240D5C 46001080 */  add.s     $f2, $f2, $f0
/* 87A940 80240D60 26310001 */  addiu     $s1, $s1, 1
/* 87A944 80240D64 2A220003 */  slti      $v0, $s1, 3
/* 87A948 80240D68 E602002C */  swc1      $f2, 0x2c($s0)
/* 87A94C 80240D6C 1440FFE2 */  bnez      $v0, .L80240CF8
/* 87A950 80240D70 26100004 */   addiu    $s0, $s0, 4
/* 87A954 80240D74 8E420064 */  lw        $v0, 0x64($s2)
/* 87A958 80240D78 24420001 */  addiu     $v0, $v0, 1
/* 87A95C 80240D7C AE420064 */  sw        $v0, 0x64($s2)
/* 87A960 80240D80 28420015 */  slti      $v0, $v0, 0x15
/* 87A964 80240D84 14400005 */  bnez      $v0, .L80240D9C
/* 87A968 80240D88 0000882D */   daddu    $s1, $zero, $zero
/* 87A96C 80240D8C 24020002 */  addiu     $v0, $zero, 2
.L80240D90:
/* 87A970 80240D90 AE420004 */  sw        $v0, 4($s2)
/* 87A974 80240D94 AE400064 */  sw        $zero, 0x64($s2)
/* 87A978 80240D98 0000882D */  daddu     $s1, $zero, $zero
.L80240D9C:
/* 87A97C 80240D9C 0240282D */  daddu     $a1, $s2, $zero
.L80240DA0:
/* 87A980 80240DA0 8CA20008 */  lw        $v0, 8($a1)
/* 87A984 80240DA4 C4A00014 */  lwc1      $f0, 0x14($a1)
/* 87A988 80240DA8 8C42000C */  lw        $v0, 0xc($v0)
/* 87A98C 80240DAC E4400010 */  swc1      $f0, 0x10($v0)
/* 87A990 80240DB0 8CA20008 */  lw        $v0, 8($a1)
/* 87A994 80240DB4 C4A00020 */  lwc1      $f0, 0x20($a1)
/* 87A998 80240DB8 8C42000C */  lw        $v0, 0xc($v0)
/* 87A99C 80240DBC 26310001 */  addiu     $s1, $s1, 1
/* 87A9A0 80240DC0 E4400014 */  swc1      $f0, 0x14($v0)
/* 87A9A4 80240DC4 8CA20008 */  lw        $v0, 8($a1)
/* 87A9A8 80240DC8 C4A0002C */  lwc1      $f0, 0x2c($a1)
/* 87A9AC 80240DCC 8C42000C */  lw        $v0, 0xc($v0)
/* 87A9B0 80240DD0 E4400018 */  swc1      $f0, 0x18($v0)
/* 87A9B4 80240DD4 2A220003 */  slti      $v0, $s1, 3
/* 87A9B8 80240DD8 1440FFF1 */  bnez      $v0, .L80240DA0
/* 87A9BC 80240DDC 24A50004 */   addiu    $a1, $a1, 4
/* 87A9C0 80240DE0 0000102D */  daddu     $v0, $zero, $zero
.L80240DE4:
/* 87A9C4 80240DE4 8FBF0044 */  lw        $ra, 0x44($sp)
/* 87A9C8 80240DE8 8FB60040 */  lw        $s6, 0x40($sp)
/* 87A9CC 80240DEC 8FB5003C */  lw        $s5, 0x3c($sp)
/* 87A9D0 80240DF0 8FB40038 */  lw        $s4, 0x38($sp)
/* 87A9D4 80240DF4 8FB30034 */  lw        $s3, 0x34($sp)
/* 87A9D8 80240DF8 8FB20030 */  lw        $s2, 0x30($sp)
/* 87A9DC 80240DFC 8FB1002C */  lw        $s1, 0x2c($sp)
/* 87A9E0 80240E00 8FB00028 */  lw        $s0, 0x28($sp)
/* 87A9E4 80240E04 D7B80058 */  ldc1      $f24, 0x58($sp)
/* 87A9E8 80240E08 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 87A9EC 80240E0C D7B40048 */  ldc1      $f20, 0x48($sp)
/* 87A9F0 80240E10 03E00008 */  jr        $ra
/* 87A9F4 80240E14 27BD0060 */   addiu    $sp, $sp, 0x60
