#include "common.h"
#include "battle/battle.h"

#define NAMESPACE b_area_kmr_part_1_kmr_03

#include "clouds.inc.c"

EvtSource N(beforeBattle_80220188) = SCRIPT({
    SetSpriteShading(-1);

    EVT_VAR(0) = 1; // model
    EVT_VAR(2) = 0; // speed
    spawn N(clouds1);

    EVT_VAR(0) = 4;
    EVT_VAR(2) = 70;
    spawn N(clouds1);
});

EvtSource N(afterBattle_80220200) = SCRIPT({
});

s32 N(foregroundModelList_80220210)[] = {
    0x00000027, 0x0000002B, 0x00000000,
};

Stage NAMESPACE = {
    .texture = "kmr_tex",
    .shape = "kmr_bt03_shape",
    .hit = "kmr_bt03_hit",
    .bg = "kmr_bg",
    .preBattle = N(beforeBattle_80220188),
    .postBattle = N(afterBattle_80220200),
    .foregroundModelList = N(foregroundModelList_80220210),
};
