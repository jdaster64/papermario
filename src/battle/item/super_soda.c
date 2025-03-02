#include "super_soda.h"
#include "effects.h"

#include "ItemRefund.inc.c"

ApiStatus N(func_802A123C_724F1C)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 a = evt_get_variable(script, *args++);
    s32 b = evt_get_variable(script, *args++);
    s32 c = evt_get_variable(script, *args++);
    ItemEntity* item = get_item_entity(script->varTable[14]);

    item->position.x = a;
    item->position.y = b;
    item->position.z = c;

    return ApiStatus_DONE2;
}

ApiStatus N(func_802A12EC_724FCC)(Evt* script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* partner = battleStatus->partnerActor;
    Bytecode* args = script->ptrReadPos;

    if (partner->koDuration == 0) {
        return ApiStatus_DONE2;
    }

    partner->koDuration -= evt_get_variable(script, *args++);
    if (partner->koDuration < 0) {
        partner->koDuration = 0;
    }
    if (partner->koDuration > 0) {
        partner->ptrDefuffIcon->ptrPropertyList[0xF] = partner->koDuration;
    } else {
        partner->koStatus = 0;
        dispatch_event_partner(0x34);
        partner->ptrDefuffIcon->ptrPropertyList[0xF] = 0;
    }

    return ApiStatus_DONE2;
}

ApiStatus N(func_802A1378_725058)(Evt* script, s32 isInitialCall) {
    s32 actorId = evt_get_variable(script, *script->ptrReadPos);
    Actor* actor = get_actor(actorId);
    s32 id = actor->actorID & 0x700;

    if (actor->debuff != STATUS_END) {
        actor->debuffDuration = 0;
        actor->debuff = 0;
        remove_status_1(actor->unk_436);
    }

    if (actor->koStatus != 0) {
        actor->koDuration = 0;
        actor->koStatus = 0;
        if (id != 0) {
            if (id == 0x100) {
                dispatch_event_partner(0x31);
            }
        }
        actor->ptrDefuffIcon->ptrPropertyList[15] = 0;
    }

    btl_update_ko_status();

    return ApiStatus_DONE2;
}

ApiStatus N(func_802A1418_7250F8)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 a = evt_get_variable(script, *args++);
    s32 b = evt_get_variable(script, *args++);
    s32 c = evt_get_variable(script, *args++);
    s32 d = evt_get_variable(script, *args++);

    playFX_40(1, a, b, c, d);
    return ApiStatus_DONE2;
}

#include "common/AddFP.inc.c"

#include "UseItem.inc.c"

EvtSource N(script6) = SCRIPT({
    SetActorYaw(ACTOR_PLAYER, 30);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 60);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 90);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 120);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 150);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 180);
    sleep 10;
    EVT_VAR(1) = EVT_VAR(15);
    await N(UseItem);
    EVT_VAR(14) = EVT_VAR(10);
    SetAnimation(ACTOR_PLAYER, 0, ANIM_THROW);
    spawn {
        sleep 20;
        SetAnimation(ACTOR_PLAYER, 0, ANIM_10002);
    }
    CreateVirtualEntity(EVT_VAR(10), 0x80283EE8);
    GetActorPos(ACTOR_PLAYER, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    EVT_VAR(0) += 0;
    EVT_VAR(1) += 30;
    EVT_VAR(2) += 5;
    SetVirtualEntityPosition(EVT_VAR(10), EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    SetVirtualEntityFlags(EVT_VAR(10), 32);
    spawn {
        GetActorPos(ACTOR_PLAYER, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
        EVT_VAR(1) += 45;
        MakeItemEntity(EVT_VAR(14), EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), 1, 0);
        EVT_VAR(14) = EVT_VAR(0);
        loop 25 {
            GetVirtualEntityPosition(EVT_VAR(10), EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
            N(func_802A123C_724F1C)(EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
            sleep 1;
        }
        RemoveItemEntity(EVT_VAR(14));
    }
    InitTargetIterator();
    SetGoalToTarget(ACTOR_SELF);
    GetGoalPos(ACTOR_SELF, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    SetBattleCamTarget(0xFFFFFF83, 1, 0);
    SetBattleCamOffsetZ(41);
    SetBattleCamZoom(248);
    MoveBattleCamOver(25);
    SetVirtualEntityJumpGravity(EVT_VAR(10), 0.400390625);
    EVT_VAR(2) += 5;
    VirtualEntityJumpTo(EVT_VAR(10), EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), 25);
    AddBattleCamZoom(100);
    MoveBattleCamOver(30);
    GetActorPos(ACTOR_PARTNER, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    EVT_VAR(1) += 25;
    func_802D7520(EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), EVT_VAR(11));
    if (EVT_VAR(11) > 0) {
        N(func_802A12EC_724FCC)(EVT_VAR(11));
    }
    sleep 30;
    GetActorPos(ACTOR_PARTNER, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    func_802D75D8(EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), EVT_VAR(11));
    sleep 20;
    SetActorYaw(ACTOR_PLAYER, 150);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 120);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 90);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 60);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 30);
    sleep 1;
    SetActorYaw(ACTOR_PLAYER, 0);
    sleep 10;
});

EvtSource N(main) = SCRIPT({
    EVT_VAR(10) = (const) ITEM_SUPER_SODA;
    await N(UseItemWithEffect);
    InitTargetIterator();
    GetOwnerTarget(EVT_VAR(0), EVT_VAR(1));
    if (EVT_VAR(0) == ACTOR_PLAYER) {
        PlaySoundAtActor(ACTOR_PLAYER, SOUND_UNKNOWN_2095);
        SetAnimation(ACTOR_PLAYER, 0, ANIM_DRINK);
        sleep 45;
        GetActorPos(ACTOR_PLAYER, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
        EVT_VAR(0) += 0;
        EVT_VAR(1) += 35;
        N(func_802A1418_7250F8)(EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), 5);
        N(AddFP)(5);
        GetActorPos(ACTOR_PLAYER, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
        EVT_VAR(1) += 25;
        func_802D7520(EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), 5);
        GetActorPos(ACTOR_PLAYER, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
        EVT_VAR(1) += 20;
        SetAnimation(ACTOR_PLAYER, 0, ANIM_THUMBS_UP);
        sleep 30;
        SetAnimation(ACTOR_PLAYER, 0, ANIM_10002);
        GetActorPos(ACTOR_PLAYER, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
        func_802D75D8(EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), 5);
        InitTargetIterator();
        GetOwnerTarget(EVT_VAR(0), EVT_VAR(1));
        N(func_802A1378_725058)(ACTOR_PLAYER);
        sleep 20;
    } else {
        EVT_VAR(11) = 0;
        EVT_VAR(12) = 0;
        EVT_VAR(15) = 0;
        await N(script6);
    }
    await N(PlayerGoHome);
});
