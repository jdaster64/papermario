.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_33_main
/* 3547A0 E0042000 27BDFF50 */  addiu     $sp, $sp, -0xb0
/* 3547A4 E0042004 F7BE00A8 */  sdc1      $f30, 0xa8($sp)
/* 3547A8 E0042008 4485F000 */  mtc1      $a1, $f30
/* 3547AC E004200C AFB30074 */  sw        $s3, 0x74($sp)
/* 3547B0 E0042010 8FB300C8 */  lw        $s3, 0xc8($sp)
/* 3547B4 E0042014 AFB40078 */  sw        $s4, 0x78($sp)
/* 3547B8 E0042018 0080A02D */  daddu     $s4, $a0, $zero
/* 3547BC E004201C F7BC00A0 */  sdc1      $f28, 0xa0($sp)
/* 3547C0 E0042020 C7BC00C0 */  lwc1      $f28, 0xc0($sp)
/* 3547C4 E0042024 27A40010 */  addiu     $a0, $sp, 0x10
/* 3547C8 E0042028 AFBF007C */  sw        $ra, 0x7c($sp)
/* 3547CC E004202C AFB20070 */  sw        $s2, 0x70($sp)
/* 3547D0 E0042030 AFB1006C */  sw        $s1, 0x6c($sp)
/* 3547D4 E0042034 AFB00068 */  sw        $s0, 0x68($sp)
/* 3547D8 E0042038 F7BA0098 */  sdc1      $f26, 0x98($sp)
/* 3547DC E004203C F7B80090 */  sdc1      $f24, 0x90($sp)
/* 3547E0 E0042040 F7B60088 */  sdc1      $f22, 0x88($sp)
/* 3547E4 E0042044 F7B40080 */  sdc1      $f20, 0x80($sp)
/* 3547E8 E0042048 AFA600B8 */  sw        $a2, 0xb8($sp)
/* 3547EC E004204C 12600069 */  beqz      $s3, .LE00421F4
/* 3547F0 E0042050 AFA700BC */   sw       $a3, 0xbc($sp)
/* 3547F4 E0042054 26730001 */  addiu     $s3, $s3, 1
/* 3547F8 E0042058 3C02E004 */  lui       $v0, %hi(func_E004222C)
/* 3547FC E004205C 2442222C */  addiu     $v0, $v0, %lo(func_E004222C)
/* 354800 E0042060 AFA20018 */  sw        $v0, 0x18($sp)
/* 354804 E0042064 3C02E004 */  lui       $v0, %hi(func_E0042234)
/* 354808 E0042068 24422234 */  addiu     $v0, $v0, %lo(func_E0042234)
/* 35480C E004206C AFA2001C */  sw        $v0, 0x1c($sp)
/* 354810 E0042070 3C02E004 */  lui       $v0, %hi(func_E0042374)
/* 354814 E0042074 24422374 */  addiu     $v0, $v0, %lo(func_E0042374)
/* 354818 E0042078 AFA20020 */  sw        $v0, 0x20($sp)
/* 35481C E004207C 24020021 */  addiu     $v0, $zero, 0x21
/* 354820 E0042080 AFA00010 */  sw        $zero, 0x10($sp)
/* 354824 E0042084 AFA00024 */  sw        $zero, 0x24($sp)
/* 354828 E0042088 0C080124 */  jal       func_E0200490
/* 35482C E004208C AFA20014 */   sw       $v0, 0x14($sp)
/* 354830 E0042090 001320C0 */  sll       $a0, $s3, 3
/* 354834 E0042094 00932023 */  subu      $a0, $a0, $s3
/* 354838 E0042098 000420C0 */  sll       $a0, $a0, 3
/* 35483C E004209C 0040802D */  daddu     $s0, $v0, $zero
/* 354840 E00420A0 0C08012C */  jal       func_E02004B0
/* 354844 E00420A4 AE130008 */   sw       $s3, 8($s0)
/* 354848 E00420A8 0040882D */  daddu     $s1, $v0, $zero
/* 35484C E00420AC 16200003 */  bnez      $s1, .LE00420BC
/* 354850 E00420B0 AE11000C */   sw       $s1, 0xc($s0)
.LE00420B4:
/* 354854 E00420B4 0801082D */  j         .LE00420B4
/* 354858 E00420B8 00000000 */   nop
.LE00420BC:
/* 35485C E00420BC AE340000 */  sw        $s4, ($s1)
/* 354860 E00420C0 E63E0004 */  swc1      $f30, 4($s1)
/* 354864 E00420C4 C7A200B8 */  lwc1      $f2, 0xb8($sp)
/* 354868 E00420C8 2402001E */  addiu     $v0, $zero, 0x1e
/* 35486C E00420CC E6220008 */  swc1      $f2, 8($s1)
/* 354870 E00420D0 C7A200BC */  lwc1      $f2, 0xbc($sp)
/* 354874 E00420D4 24120001 */  addiu     $s2, $zero, 1
/* 354878 E00420D8 AE220030 */  sw        $v0, 0x30($s1)
/* 35487C E00420DC 240200FF */  addiu     $v0, $zero, 0xff
/* 354880 E00420E0 AE22002C */  sw        $v0, 0x2c($s1)
/* 354884 E00420E4 0253102A */  slt       $v0, $s2, $s3
/* 354888 E00420E8 AE200034 */  sw        $zero, 0x34($s1)
/* 35488C E00420EC E622000C */  swc1      $f2, 0xc($s1)
/* 354890 E00420F0 10400040 */  beqz      $v0, .LE00421F4
/* 354894 E00420F4 26310038 */   addiu    $s1, $s1, 0x38
/* 354898 E00420F8 26300024 */  addiu     $s0, $s1, 0x24
/* 35489C E00420FC 3C014024 */  lui       $at, 0x4024
/* 3548A0 E0042100 4481D800 */  mtc1      $at, $f27
/* 3548A4 E0042104 4480D000 */  mtc1      $zero, $f26
.LE0042108:
/* 3548A8 E0042108 0C080138 */  jal       func_E02004E0
/* 3548AC E004210C 2404000A */   addiu    $a0, $zero, 0xa
/* 3548B0 E0042110 32440002 */  andi      $a0, $s2, 2
/* 3548B4 E0042114 00121FC2 */  srl       $v1, $s2, 0x1f
/* 3548B8 E0042118 02431821 */  addu      $v1, $s2, $v1
/* 3548BC E004211C 00031843 */  sra       $v1, $v1, 1
/* 3548C0 E0042120 00830018 */  mult      $a0, $v1
/* 3548C4 E0042124 3C013E80 */  lui       $at, 0x3e80
/* 3548C8 E0042128 44811000 */  mtc1      $at, $f2
/* 3548CC E004212C 4482A000 */  mtc1      $v0, $f20
/* 3548D0 E0042130 00000000 */  nop
/* 3548D4 E0042134 4680A520 */  cvt.s.w   $f20, $f20
/* 3548D8 E0042138 4602A502 */  mul.s     $f20, $f20, $f2
/* 3548DC E004213C 00000000 */  nop
/* 3548E0 E0042140 AE340000 */  sw        $s4, ($s1)
/* 3548E4 E0042144 E61EFFE0 */  swc1      $f30, -0x20($s0)
/* 3548E8 E0042148 C7A200C4 */  lwc1      $f2, 0xc4($sp)
/* 3548EC E004214C 00004012 */  mflo      $t0
/* 3548F0 E0042150 00081080 */  sll       $v0, $t0, 2
/* 3548F4 E0042154 4482C000 */  mtc1      $v0, $f24
/* 3548F8 E0042158 00000000 */  nop
/* 3548FC E004215C 4680C620 */  cvt.s.w   $f24, $f24
/* 354900 E0042160 46181600 */  add.s     $f24, $f2, $f24
/* 354904 E0042164 C7A200B8 */  lwc1      $f2, 0xb8($sp)
/* 354908 E0042168 E602FFE4 */  swc1      $f2, -0x1c($s0)
/* 35490C E004216C C7A200BC */  lwc1      $f2, 0xbc($sp)
/* 354910 E0042170 E602FFE8 */  swc1      $f2, -0x18($s0)
/* 354914 E0042174 3C0140A0 */  lui       $at, 0x40a0
/* 354918 E0042178 44811000 */  mtc1      $at, $f2
/* 35491C E004217C 4600C306 */  mov.s     $f12, $f24
/* 354920 E0042180 0C080144 */  jal       func_E0200510
/* 354924 E0042184 4602A500 */   add.s    $f20, $f20, $f2
/* 354928 E0042188 4600E306 */  mov.s     $f12, $f28
/* 35492C E004218C 0C080140 */  jal       func_E0200500
/* 354930 E0042190 46000586 */   mov.s    $f22, $f0
/* 354934 E0042194 4600B582 */  mul.s     $f22, $f22, $f0
/* 354938 E0042198 00000000 */  nop
/* 35493C E004219C 26520001 */  addiu     $s2, $s2, 1
/* 354940 E00421A0 26310038 */  addiu     $s1, $s1, 0x38
/* 354944 E00421A4 4600C306 */  mov.s     $f12, $f24
/* 354948 E00421A8 0C080140 */  jal       func_E0200500
/* 35494C E00421AC E616FFEC */   swc1     $f22, -0x14($s0)
/* 354950 E00421B0 4600C306 */  mov.s     $f12, $f24
/* 354954 E00421B4 0C080144 */  jal       func_E0200510
/* 354958 E00421B8 E600FFF0 */   swc1     $f0, -0x10($s0)
/* 35495C E00421BC 4600E306 */  mov.s     $f12, $f28
/* 354960 E00421C0 0C080144 */  jal       func_E0200510
/* 354964 E00421C4 46000586 */   mov.s    $f22, $f0
/* 354968 E00421C8 E6140004 */  swc1      $f20, 4($s0)
/* 35496C E00421CC 4600A521 */  cvt.d.s   $f20, $f20
/* 354970 E00421D0 4600B582 */  mul.s     $f22, $f22, $f0
/* 354974 E00421D4 00000000 */  nop
/* 354978 E00421D8 463AA503 */  div.d     $f20, $f20, $f26
/* 35497C E00421DC 4620A520 */  cvt.s.d   $f20, $f20
/* 354980 E00421E0 0253102A */  slt       $v0, $s2, $s3
/* 354984 E00421E4 E6140000 */  swc1      $f20, ($s0)
/* 354988 E00421E8 E616FFF4 */  swc1      $f22, -0xc($s0)
/* 35498C E00421EC 1440FFC6 */  bnez      $v0, .LE0042108
/* 354990 E00421F0 26100038 */   addiu    $s0, $s0, 0x38
.LE00421F4:
/* 354994 E00421F4 8FBF007C */  lw        $ra, 0x7c($sp)
/* 354998 E00421F8 8FB40078 */  lw        $s4, 0x78($sp)
/* 35499C E00421FC 8FB30074 */  lw        $s3, 0x74($sp)
/* 3549A0 E0042200 8FB20070 */  lw        $s2, 0x70($sp)
/* 3549A4 E0042204 8FB1006C */  lw        $s1, 0x6c($sp)
/* 3549A8 E0042208 8FB00068 */  lw        $s0, 0x68($sp)
/* 3549AC E004220C D7BE00A8 */  ldc1      $f30, 0xa8($sp)
/* 3549B0 E0042210 D7BC00A0 */  ldc1      $f28, 0xa0($sp)
/* 3549B4 E0042214 D7BA0098 */  ldc1      $f26, 0x98($sp)
/* 3549B8 E0042218 D7B80090 */  ldc1      $f24, 0x90($sp)
/* 3549BC E004221C D7B60088 */  ldc1      $f22, 0x88($sp)
/* 3549C0 E0042220 D7B40080 */  ldc1      $f20, 0x80($sp)
/* 3549C4 E0042224 03E00008 */  jr        $ra
/* 3549C8 E0042228 27BD00B0 */   addiu    $sp, $sp, 0xb0
