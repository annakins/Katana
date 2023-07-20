Scriptname AK69KatanaPersonalQuestData extends Quest  Conditional

bool property MarkarthScene = false auto conditional

bool property playerIsGreedy = false auto conditional 

bool property playerIsLoyal = true auto conditional 

bool property WinterholdScene = false auto conditional

bool property UnlockLoyaltyC = false auto conditional

bool property UnlockLoyaltyD = false auto conditional

bool property UnlockLoyaltyZ = false auto conditional

bool property Stage1 = false auto conditional

bool property Stage2 = false auto conditional

bool property DHStage = false auto conditional

;===

AK69KatanaController Property KatanaDataStorage  Auto  

Function PQCompletedIncrease()
KatanaDataStorage.IncreaseRatePQ()
EndFunction

;===

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69KatanaStage2Var auto
GlobalVariable Property AK69KatanaStage3Var auto
GlobalVariable Property AK69DHStageVar auto 
;Primarily used to handle functionality of setting globals that are used by individual WIComment quests to control how often comments about the player are heard

float DaysUntilReady = 0.12 ;0.04 is 1 game hour; so 3 hours

Function StageReadyTime()
	float StageReady = GameDaysPassed.GetValue() + DaysUntilReady	
	AK69KatanaStage2Var.SetValue(StageReady)
EndFunction

float Stage3UntilReady = 0.12 ;3 hours

Function Stage3ReadyTime()
	float Stage3Ready = GameDaysPassed.GetValue() + Stage3UntilReady	
	AK69KatanaStage3Var.SetValue(Stage3Ready)
EndFunction

float DHUntilReady = 0.24 ;6 hours

Function DHReadyTime()
	float DHReady = GameDaysPassed.GetValue() + DHUntilReady	
	AK69DHStageVar.SetValue(DHReady)
EndFunction

Function EndQuest()
Self.SetStage(300)
EndFunction