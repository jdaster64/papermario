.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_132_main
/* 412730 E0124000 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 412734 E0124004 F7B40050 */  sdc1      $f20, 0x50($sp)
/* 412738 E0124008 4485A000 */  mtc1      $a1, $f20
/* 41273C E012400C F7B60058 */  sdc1      $f22, 0x58($sp)
/* 412740 E0124010 4486B000 */  mtc1      $a2, $f22
/* 412744 E0124014 AFA40070 */  sw        $a0, 0x70($sp)
/* 412748 E0124018 27A40010 */  addiu     $a0, $sp, 0x10
/* 41274C E012401C F7B80060 */  sdc1      $f24, 0x60($sp)
/* 412750 E0124020 4487C000 */  mtc1      $a3, $f24
/* 412754 E0124024 3C02E012 */  lui       $v0, %hi(func_E01242FC)
/* 412758 E0124028 244242FC */  addiu     $v0, $v0, %lo(func_E01242FC)
/* 41275C E012402C AFA20018 */  sw        $v0, 0x18($sp)
/* 412760 E0124030 3C02E012 */  lui       $v0, %hi(func_E0124304)
/* 412764 E0124034 24424304 */  addiu     $v0, $v0, %lo(func_E0124304)
/* 412768 E0124038 AFA2001C */  sw        $v0, 0x1c($sp)
/* 41276C E012403C 3C02E012 */  lui       $v0, %hi(func_E012448C)
/* 412770 E0124040 2442448C */  addiu     $v0, $v0, %lo(func_E012448C)
/* 412774 E0124044 AFA20020 */  sw        $v0, 0x20($sp)
/* 412778 E0124048 24020084 */  addiu     $v0, $zero, 0x84
/* 41277C E012404C AFBF004C */  sw        $ra, 0x4c($sp)
/* 412780 E0124050 AFBE0048 */  sw        $fp, 0x48($sp)
/* 412784 E0124054 AFB70044 */  sw        $s7, 0x44($sp)
/* 412788 E0124058 AFB60040 */  sw        $s6, 0x40($sp)
/* 41278C E012405C AFB5003C */  sw        $s5, 0x3c($sp)
/* 412790 E0124060 AFB40038 */  sw        $s4, 0x38($sp)
/* 412794 E0124064 AFB30034 */  sw        $s3, 0x34($sp)
/* 412798 E0124068 AFB20030 */  sw        $s2, 0x30($sp)
/* 41279C E012406C AFB1002C */  sw        $s1, 0x2c($sp)
/* 4127A0 E0124070 AFB00028 */  sw        $s0, 0x28($sp)
/* 4127A4 E0124074 F7BA0068 */  sdc1      $f26, 0x68($sp)
/* 4127A8 E0124078 AFA00010 */  sw        $zero, 0x10($sp)
/* 4127AC E012407C AFA00024 */  sw        $zero, 0x24($sp)
/* 4127B0 E0124080 0C080124 */  jal       func_E0200490
/* 4127B4 E0124084 AFA20014 */   sw       $v0, 0x14($sp)
/* 4127B8 E0124088 2404115C */  addiu     $a0, $zero, 0x115c
/* 4127BC E012408C 24170065 */  addiu     $s7, $zero, 0x65
/* 4127C0 E0124090 0040F02D */  daddu     $fp, $v0, $zero
/* 4127C4 E0124094 0C08012C */  jal       func_E02004B0
/* 4127C8 E0124098 AFD70008 */   sw       $s7, 8($fp)
/* 4127CC E012409C 0040882D */  daddu     $s1, $v0, $zero
/* 4127D0 E01240A0 16200003 */  bnez      $s1, .LE01240B0
/* 4127D4 E01240A4 AFD1000C */   sw       $s1, 0xc($fp)
.LE01240A8:
/* 4127D8 E01240A8 0804902A */  j         .LE01240A8
/* 4127DC E01240AC 00000000 */   nop
.LE01240B0:
/* 4127E0 E01240B0 24020050 */  addiu     $v0, $zero, 0x50
/* 4127E4 E01240B4 24120001 */  addiu     $s2, $zero, 1
/* 4127E8 E01240B8 E6340004 */  swc1      $f20, 4($s1)
/* 4127EC E01240BC E6360008 */  swc1      $f22, 8($s1)
/* 4127F0 E01240C0 E638000C */  swc1      $f24, 0xc($s1)
/* 4127F4 E01240C4 AE200020 */  sw        $zero, 0x20($s1)
/* 4127F8 E01240C8 8FA80070 */  lw        $t0, 0x70($sp)
/* 4127FC E01240CC 3C01E012 */  lui       $at, %hi(D_E0124C00)
/* 412800 E01240D0 D4384C00 */  ldc1      $f24, %lo(D_E0124C00)($at)
/* 412804 E01240D4 3C01E012 */  lui       $at, %hi(D_E0124C08)
/* 412808 E01240D8 D4364C08 */  ldc1      $f22, %lo(D_E0124C08)($at)
/* 41280C E01240DC 0000A82D */  daddu     $s5, $zero, $zero
/* 412810 E01240E0 AE22001C */  sw        $v0, 0x1c($s1)
/* 412814 E01240E4 AE280000 */  sw        $t0, ($s1)
/* 412818 E01240E8 2631002C */  addiu     $s1, $s1, 0x2c
/* 41281C E01240EC C7BA0084 */  lwc1      $f26, 0x84($sp)
/* 412820 E01240F0 0000982D */  daddu     $s3, $zero, $zero
.LE01240F4:
/* 412824 E01240F4 2408000F */  addiu     $t0, $zero, 0xf
/* 412828 E01240F8 01151023 */  subu      $v0, $t0, $s5
/* 41282C E01240FC 0002B100 */  sll       $s6, $v0, 4
/* 412830 E0124100 2414FFF0 */  addiu     $s4, $zero, -0x10
/* 412834 E0124104 26300020 */  addiu     $s0, $s1, 0x20
.LE0124108:
/* 412838 E0124108 8FA80070 */  lw        $t0, 0x70($sp)
/* 41283C E012410C 02761021 */  addu      $v0, $s3, $s6
/* 412840 E0124110 00081A00 */  sll       $v1, $t0, 8
/* 412844 E0124114 00431021 */  addu      $v0, $v0, $v1
/* 412848 E0124118 3C08E012 */  lui       $t0, %hi(D_E01248C0)
/* 41284C E012411C 250848C0 */  addiu     $t0, $t0, %lo(D_E01248C0)
/* 412850 E0124120 00481021 */  addu      $v0, $v0, $t0
/* 412854 E0124124 80430000 */  lb        $v1, ($v0)
/* 412858 E0124128 2402002E */  addiu     $v0, $zero, 0x2e
/* 41285C E012412C 50620049 */  beql      $v1, $v0, .LE0124254
/* 412860 E0124130 26730001 */   addiu    $s3, $s3, 1
/* 412864 E0124134 0C080138 */  jal       func_E02004E0
/* 412868 E0124138 24040014 */   addiu    $a0, $zero, 0x14
/* 41286C E012413C 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 412870 E0124140 44820000 */  mtc1      $v0, $f0
/* 412874 E0124144 00000000 */  nop
/* 412878 E0124148 46800021 */  cvt.d.w   $f0, $f0
/* 41287C E012414C 46380002 */  mul.d     $f0, $f0, $f24
/* 412880 E0124150 00000000 */  nop
/* 412884 E0124154 4494A000 */  mtc1      $s4, $f20
/* 412888 E0124158 00000000 */  nop
/* 41288C E012415C 4680A521 */  cvt.d.w   $f20, $f20
/* 412890 E0124160 4620A500 */  add.d     $f20, $f20, $f0
/* 412894 E0124164 4600D306 */  mov.s     $f12, $f26
/* 412898 E0124168 0C080144 */  jal       func_E0200510
/* 41289C E012416C 4620A520 */   cvt.s.d  $f20, $f20
/* 4128A0 E0124170 4600A002 */  mul.s     $f0, $f20, $f0
/* 4128A4 E0124174 00000000 */  nop
/* 4128A8 E0124178 24040014 */  addiu     $a0, $zero, 0x14
/* 4128AC E012417C 0C080138 */  jal       func_E02004E0
/* 4128B0 E0124180 E600FFE4 */   swc1     $f0, -0x1c($s0)
/* 4128B4 E0124184 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 4128B8 E0124188 44821000 */  mtc1      $v0, $f2
/* 4128BC E012418C 00000000 */  nop
/* 4128C0 E0124190 468010A1 */  cvt.d.w   $f2, $f2
/* 4128C4 E0124194 46381082 */  mul.d     $f2, $f2, $f24
/* 4128C8 E0124198 00000000 */  nop
/* 4128CC E012419C 00151040 */  sll       $v0, $s5, 1
/* 4128D0 E01241A0 44820000 */  mtc1      $v0, $f0
/* 4128D4 E01241A4 00000000 */  nop
/* 4128D8 E01241A8 46800021 */  cvt.d.w   $f0, $f0
/* 4128DC E01241AC 46220000 */  add.d     $f0, $f0, $f2
/* 4128E0 E01241B0 4600D306 */  mov.s     $f12, $f26
/* 4128E4 E01241B4 46200020 */  cvt.s.d   $f0, $f0
/* 4128E8 E01241B8 0C080140 */  jal       func_E0200500
/* 4128EC E01241BC E600FFE8 */   swc1     $f0, -0x18($s0)
/* 4128F0 E01241C0 C602FFE4 */  lwc1      $f2, -0x1c($s0)
/* 4128F4 E01241C4 460010A1 */  cvt.d.s   $f2, $f2
/* 4128F8 E01241C8 46361082 */  mul.d     $f2, $f2, $f22
/* 4128FC E01241CC 00000000 */  nop
/* 412900 E01241D0 4600A502 */  mul.s     $f20, $f20, $f0
/* 412904 E01241D4 00000000 */  nop
/* 412908 E01241D8 C600FFE8 */  lwc1      $f0, -0x18($s0)
/* 41290C E01241DC 46000021 */  cvt.d.s   $f0, $f0
/* 412910 E01241E0 46360002 */  mul.d     $f0, $f0, $f22
/* 412914 E01241E4 00000000 */  nop
/* 412918 E01241E8 2404000A */  addiu     $a0, $zero, 0xa
/* 41291C E01241EC E614FFEC */  swc1      $f20, -0x14($s0)
/* 412920 E01241F0 462010A0 */  cvt.s.d   $f2, $f2
/* 412924 E01241F4 46200020 */  cvt.s.d   $f0, $f0
/* 412928 E01241F8 E602FFF0 */  swc1      $f2, -0x10($s0)
/* 41292C E01241FC 0C080138 */  jal       func_E02004E0
/* 412930 E0124200 E600FFF4 */   swc1     $f0, -0xc($s0)
/* 412934 E0124204 3C01E012 */  lui       $at, %hi(D_E0124C10)
/* 412938 E0124208 D4224C10 */  ldc1      $f2, %lo(D_E0124C10)($at)
/* 41293C E012420C 44820000 */  mtc1      $v0, $f0
/* 412940 E0124210 00000000 */  nop
/* 412944 E0124214 46800021 */  cvt.d.w   $f0, $f0
/* 412948 E0124218 46220002 */  mul.d     $f0, $f0, $f2
/* 41294C E012421C 00000000 */  nop
/* 412950 E0124220 26520001 */  addiu     $s2, $s2, 1
/* 412954 E0124224 2631002C */  addiu     $s1, $s1, 0x2c
/* 412958 E0124228 24040007 */  addiu     $a0, $zero, 7
/* 41295C E012422C 46200020 */  cvt.s.d   $f0, $f0
/* 412960 E0124230 0C080138 */  jal       func_E02004E0
/* 412964 E0124234 E600FFF8 */   swc1     $f0, -8($s0)
/* 412968 E0124238 2442001E */  addiu     $v0, $v0, 0x1e
/* 41296C E012423C AE02FFFC */  sw        $v0, -4($s0)
/* 412970 E0124240 AE000000 */  sw        $zero, ($s0)
/* 412974 E0124244 0257102A */  slt       $v0, $s2, $s7
/* 412978 E0124248 1040001B */  beqz      $v0, .LE01242B8
/* 41297C E012424C 2610002C */   addiu    $s0, $s0, 0x2c
/* 412980 E0124250 26730001 */  addiu     $s3, $s3, 1
.LE0124254:
/* 412984 E0124254 2A620010 */  slti      $v0, $s3, 0x10
/* 412988 E0124258 1440FFAB */  bnez      $v0, .LE0124108
/* 41298C E012425C 26940002 */   addiu    $s4, $s4, 2
/* 412990 E0124260 0257102A */  slt       $v0, $s2, $s7
/* 412994 E0124264 10400014 */  beqz      $v0, .LE01242B8
/* 412998 E0124268 26B50001 */   addiu    $s5, $s5, 1
/* 41299C E012426C 2AA20010 */  slti      $v0, $s5, 0x10
/* 4129A0 E0124270 5440FFA0 */  bnel      $v0, $zero, .LE01240F4
/* 4129A4 E0124274 0000982D */   daddu    $s3, $zero, $zero
/* 4129A8 E0124278 44800000 */  mtc1      $zero, $f0
/* 4129AC E012427C 2404FFFF */  addiu     $a0, $zero, -1
/* 4129B0 E0124280 26230020 */  addiu     $v1, $s1, 0x20
.LE0124284:
/* 4129B4 E0124284 26520001 */  addiu     $s2, $s2, 1
/* 4129B8 E0124288 E4600004 */  swc1      $f0, 4($v1)
/* 4129BC E012428C E460FFF8 */  swc1      $f0, -8($v1)
/* 4129C0 E0124290 E460FFF4 */  swc1      $f0, -0xc($v1)
/* 4129C4 E0124294 E460FFF0 */  swc1      $f0, -0x10($v1)
/* 4129C8 E0124298 E460FFEC */  swc1      $f0, -0x14($v1)
/* 4129CC E012429C E460FFE8 */  swc1      $f0, -0x18($v1)
/* 4129D0 E01242A0 E460FFE4 */  swc1      $f0, -0x1c($v1)
/* 4129D4 E01242A4 AC64FFFC */  sw        $a0, -4($v1)
/* 4129D8 E01242A8 AC600000 */  sw        $zero, ($v1)
/* 4129DC E01242AC 0257102A */  slt       $v0, $s2, $s7
/* 4129E0 E01242B0 1440FFF4 */  bnez      $v0, .LE0124284
/* 4129E4 E01242B4 2463002C */   addiu    $v1, $v1, 0x2c
.LE01242B8:
/* 4129E8 E01242B8 03C0102D */  daddu     $v0, $fp, $zero
/* 4129EC E01242BC 8FBF004C */  lw        $ra, 0x4c($sp)
/* 4129F0 E01242C0 8FBE0048 */  lw        $fp, 0x48($sp)
/* 4129F4 E01242C4 8FB70044 */  lw        $s7, 0x44($sp)
/* 4129F8 E01242C8 8FB60040 */  lw        $s6, 0x40($sp)
/* 4129FC E01242CC 8FB5003C */  lw        $s5, 0x3c($sp)
/* 412A00 E01242D0 8FB40038 */  lw        $s4, 0x38($sp)
/* 412A04 E01242D4 8FB30034 */  lw        $s3, 0x34($sp)
/* 412A08 E01242D8 8FB20030 */  lw        $s2, 0x30($sp)
/* 412A0C E01242DC 8FB1002C */  lw        $s1, 0x2c($sp)
/* 412A10 E01242E0 8FB00028 */  lw        $s0, 0x28($sp)
/* 412A14 E01242E4 D7BA0068 */  ldc1      $f26, 0x68($sp)
/* 412A18 E01242E8 D7B80060 */  ldc1      $f24, 0x60($sp)
/* 412A1C E01242EC D7B60058 */  ldc1      $f22, 0x58($sp)
/* 412A20 E01242F0 D7B40050 */  ldc1      $f20, 0x50($sp)
/* 412A24 E01242F4 03E00008 */  jr        $ra
/* 412A28 E01242F8 27BD0070 */   addiu    $sp, $sp, 0x70
