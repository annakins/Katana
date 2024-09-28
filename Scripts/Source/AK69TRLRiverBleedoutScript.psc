Scriptname AK69TRLRiverBleedoutScript extends ReferenceAlias  

Actor Property Katana Auto
Actor Property Megara Auto
Actor Property Shale Auto
ReferenceAlias Property River Auto
Scene Property AK69ImpatientMuchScene Auto
Scene Property AK69FindRiverScene6 Auto
GlobalVariable Property AK69HagKillCount Auto

Event OnEnterBleedout()
    if GetOwningQuest().GetStage() == 230 && AK69HagKillCount.GetValue() >= 5
    actor AkSpeaker = River.GetReference() as Actor
    Akspeaker.AllowBleedoutDialogue(true)
    AkSpeaker.ForceActorValue("Aggression", 0)
    AkSpeaker.StopCombat()
    Katana.StopCombat()
    Katana.StopCombatAlarm()
    Megara.StopCombat()
    Megara.StopCombatAlarm()
    Shale.StopCombat()
    Shale.StopCombatAlarm()
    GetOwningQuest().SetStage(240)
    endif
endEvent

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
    if GetOwningQuest().GetStage() == 220 && akAggressor == game.getPlayer()
        AK69FindRiverScene6.Stop()
        River.GetActorReference().GetActorBase().SetInvulnerable(true)
        AK69ImpatientMuchScene.Start()
        River.GetActorReference().StartCombat(Game.GetPlayer())
        GetOwningQuest().SetStage(230)
    endif
  EndEvent