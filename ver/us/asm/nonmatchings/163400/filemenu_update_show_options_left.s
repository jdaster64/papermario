.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel filemenu_update_show_options_left
/* 163C54 802433F4 3C028016 */  lui       $v0, %hi(gWindows)
/* 163C58 802433F8 24429D50 */  addiu     $v0, $v0, %lo(gWindows)
/* 163C5C 802433FC 00042140 */  sll       $a0, $a0, 5
/* 163C60 80243400 00822021 */  addu      $a0, $a0, $v0
/* 163C64 80243404 9083001C */  lbu       $v1, 0x1c($a0)
/* 163C68 80243408 14600005 */  bnez      $v1, .L80243420
/* 163C6C 8024340C 28620010 */   slti     $v0, $v1, 0x10
/* 163C70 80243410 90820000 */  lbu       $v0, ($a0)
/* 163C74 80243414 304200FB */  andi      $v0, $v0, 0xfb
/* 163C78 80243418 A0820000 */  sb        $v0, ($a0)
/* 163C7C 8024341C 28620010 */  slti      $v0, $v1, 0x10
.L80243420:
/* 163C80 80243420 10400008 */  beqz      $v0, .L80243444
/* 163C84 80243424 00031040 */   sll      $v0, $v1, 1
/* 163C88 80243428 3C038025 */  lui       $v1, %hi(D_80249BFC)
/* 163C8C 8024342C 00621821 */  addu      $v1, $v1, $v0
/* 163C90 80243430 84639BFC */  lh        $v1, %lo(D_80249BFC)($v1)
/* 163C94 80243434 8CC20000 */  lw        $v0, ($a2)
/* 163C98 80243438 00431023 */  subu      $v0, $v0, $v1
/* 163C9C 8024343C 03E00008 */  jr        $ra
/* 163CA0 80243440 ACC20000 */   sw       $v0, ($a2)
.L80243444:
/* 163CA4 80243444 3C028025 */  lui       $v0, %hi(D_80249C1A)
/* 163CA8 80243448 84429C1A */  lh        $v0, %lo(D_80249C1A)($v0)
/* 163CAC 8024344C 8CC30000 */  lw        $v1, ($a2)
/* 163CB0 80243450 00621823 */  subu      $v1, $v1, $v0
/* 163CB4 80243454 ACC30000 */  sw        $v1, ($a2)
/* 163CB8 80243458 90820000 */  lbu       $v0, ($a0)
/* 163CBC 8024345C 304200F7 */  andi      $v0, $v0, 0xf7
/* 163CC0 80243460 03E00008 */  jr        $ra
/* 163CC4 80243464 A0820000 */   sb       $v0, ($a0)
