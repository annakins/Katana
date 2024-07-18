Scriptname AK69PQRiverBleedoutScript extends ReferenceAlias  

Location Property Hideout Auto
Actor Property Katana Auto
Actor Property Elli Auto
ReferenceAlias Property River Auto

Event OnEnterBleedout()
    actor AkSpeaker = River.GetReference() as Actor
    Akspeaker.AllowBleedoutDialogue(true)
    if Elli.isDead()
    if (Game.GetPlayer().GetCurrentLocation() == Hideout)
    AkSpeaker.ForceActorValue("Aggression", 0)
    AkSpeaker.StopCombat()
    Katana.StopCombat()
    Katana.StopCombatAlarm()
    GetOwningQuest().SetStage(210)
    Endif
endif
endEvent