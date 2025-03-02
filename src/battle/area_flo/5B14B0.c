#include "common.h"

#define NAMESPACE b_area_flo

#include "common/UnkBattleFunc1.inc.c"

ApiStatus func_802180CC_5B157C(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 prevX = evt_get_variable(script, *args++);
    s32 prevZ = evt_get_variable(script, *args++);
    s32 length = evt_get_variable(script, *args++);
    s32 angle = evt_get_variable(script, *args++);

    f32 outX = prevX + (length * cos_deg(angle));
    f32 outZ = prevZ - (length * sin_deg(angle));

    evt_set_float_variable(script, *args++, outX);
    evt_set_float_variable(script, *args++, outZ);
    return ApiStatus_DONE2;
}
