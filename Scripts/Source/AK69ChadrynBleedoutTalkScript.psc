Scriptname AK69ChadrynBleedoutTalkScript extends ObjectReference  

Quest Property AK69EasterEggsQuest Auto
Location Property Riverwood Auto
Actor Property Katana Auto
ReferenceAlias Property Chadryn Auto
Actor Property Megara Auto

Event OnEnterBleedout()
    actor AkSpeaker = Chadryn.GetReference() as Actor
    Akspeaker.AllowBleedoutDialogue(true)
  
    if (Game.GetPlayer().GetCurrentLocation() == Riverwood)
    AkSpeaker.ForceActorValue("Aggression", 0)
    AkSpeaker.StopCombat()
    Katana.StopCombat()
    Katana.StopCombatAlarm()
    Megara.StopCombat()
    Megara.StopCombatAlarm()
    AK69EasterEggsQuest.SetStage(50)
    Endif

endEvent