Scriptname AK69GaltunBoldThiefDeathScript extends ObjectReference  

Quest Property AK69KatanaPersonalQuest Auto

Event OnDeath (Actor killer)
AK69KatanaPersonalQuest.SetObjectiveDisplayed(90)
AK69KatanaPersonalQuest.SetStage(90)
EndEvent