#include "omo_15.h"

INCLUDE_ASM(s32, "world/area_omo/omo_15/DE8770", func_80240000_DE8770);
/*
ApiStatus N(func_80240000_DE8770)(Evt* script, s32 isInitialCall) {
    arn_07_struct* ptr = script->varTable[0];

    sfx_adjust_env_sound_pos(0xA2, 0, ptr->unk_00, ptr->unk_04, ptr->unk_08);
    return ((ptr->unk_44 < 2) == 0) * ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_omo/omo_15/DE8770", func_8024004C_DE87BC);
/*
ApiStatus N(func_8024004C_DE87BC)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    if (isInitialCall) {
        arn_07_struct* ptr = heap_malloc(sizeof(arn_07_struct));
        script->varTable[0] = ptr;
        evt_set_variable(NULL, EVT_MAP_VAR(1), ptr);
        ptr->unk_38 = evt_get_variable(script, *args++);
        ptr->unk_3C = evt_get_variable(script, *args++);
        ptr->unk_0C = evt_get_float_variable(script, *args++);
        ptr->unk_10 = evt_get_float_variable(script, *args++);
        ptr->unk_14 = evt_get_float_variable(script, *args++);
        ptr->unk_18 = evt_get_float_variable(script, *args++);
        ptr->unk_1C = evt_get_float_variable(script, *args++);
        ptr->unk_20 = evt_get_float_variable(script, *args++);
        ptr->unk_24 = evt_get_float_variable(script, *args++);
        ptr->unk_28 = evt_get_float_variable(script, *args++);
        ptr->unk_50 = (struct N(temp)*)playFX_83(2, ptr->unk_0C, ptr->unk_10, ptr->unk_14, 1.0f, 0);
        ptr->unk_4E = 0;
        ptr->unk_48 = 0;
        ptr->unk_4A = 0;
        ptr->unk_44 = 0;
        ptr->unk_46 = 0;
    }

    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_omo/omo_15/DE8770", func_802401AC_DE891C);

static char* N(exit_str_0) = "kmr_23";
static char* N(exit_str_1) = "omo_14";

INCLUDE_ASM(s32, "world/area_omo/omo_15/DE8770", func_802405BC_DE8D2C);
/*
ApiStatus N(func_802405BC_DE8D2C)(Evt* script, s32 isInitialCall) {
    s32 var = evt_get_variable(script, *script->ptrReadPos);
    arn_07_struct* ptr = script->varTable[0];

    return (ptr->unk_4E == var) * ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_omo/omo_15/DE8770", func_802405FC_DE8D6C);
/*
ApiStatus N(func_802405FC_DE8D6C)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    if (isInitialCall) {
        arn_07_struct* ptr = heap_malloc(sizeof(arn_07_struct));
        script->varTable[0] = ptr;
        ptr->unk_38 = evt_get_variable(script, *args++);
        ptr->unk_18 = evt_get_float_variable(script, *args++);
        ptr->unk_24 = evt_get_float_variable(script, *args++);
        ptr->unk_20 = evt_get_float_variable(script, *args++);
        ptr->unk_28 = evt_get_float_variable(script, *args++);
        ptr->unk_54 = playFX_7B(1, ptr->unk_18, ptr->unk_24, ptr->unk_20, 1.0f, 0);
        ptr->unk_54->unk_0C->unk_34 = ptr->unk_38;
        ptr->unk_54->unk_0C->unk_20 = 0;
        ptr->unk_40 = create_shadow_type(0, ptr->unk_18, ptr->unk_28, ptr->unk_20);
        ptr->unk_4C = 0x10E;
    }

    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_omo/omo_15/DE8770", func_80240708_DE8E78);
