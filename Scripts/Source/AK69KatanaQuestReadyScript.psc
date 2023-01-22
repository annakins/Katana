Scriptname AK69KatanaQuestReadyScript extends Quest  

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69KatanaQuestReadyTimeVar auto

;Primarily used to handle functionality of setting globals that are used by individual WIComment quests to control how often comments about the player are heard

float DaysUntilQuestStart = 0.04 ;0.04 is 1 game hour

Function QuestReadyTime()
	float QuestReady = GameDaysPassed.GetValue() + DaysUntilQuestStart	
	AK69KatanaQuestReadyTimeVar.SetValue(QuestReady)
EndFunction