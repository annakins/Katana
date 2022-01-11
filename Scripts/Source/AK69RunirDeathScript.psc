Scriptname AK69RunirDeathScript extends ObjectReference  

Quest Property AK69KatanaPersonalQuest Auto

Event OnDeath (Actor killer)
AK69KatanaPersonalQuest.SetObjectiveDisplayed(130)
AK69KatanaPersonalQuest.SetStage(130)
EndEvent