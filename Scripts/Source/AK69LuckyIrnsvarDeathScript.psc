Scriptname AK69LuckyIrnsvarDeathScript extends ObjectReference  

Quest Property AK69KatanaPersonalQuest Auto

Event OnDeath (Actor killer)
AK69KatanaPersonalQuest.SetObjectiveDisplayed(50)
AK69KatanaPersonalQuest.SetStage(50)
EndEvent