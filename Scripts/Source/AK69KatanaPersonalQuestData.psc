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

bool property GoToMarkarth = false auto conditional

bool property GoToRiften = false auto conditional

bool property GoToWinterhold = false auto conditional

bool property PQ40 = false auto conditional

bool property PQ50 = false auto conditional

bool property PQ90 = false auto conditional

bool property PQ90B = false auto conditional

bool property PQ120 = false auto conditional

bool property PQ130 = false auto conditional

bool property PQ180 = false auto conditional

bool property PQ180B = false auto conditional

bool property PQ1 = false auto conditional

bool property PQ2 = false auto conditional

bool property PQ3 = false auto conditional

;===


GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69KatanaStage2Var auto
GlobalVariable Property AK69KatanaStage3Var auto
GlobalVariable Property AK69DHStageVar auto 
;Primarily used to handle functionality of setting globals that are used by individual WIComment quests to control how often comments about the player are heard

float DaysUntilReady = 0.04 ;0.04 is 1 game hour; 

Function StageReadyTime()
	float StageReady = GameDaysPassed.GetValue() + DaysUntilReady	
	AK69KatanaStage2Var.SetValue(StageReady)
EndFunction

float Stage3UntilReady = 0.04 ;1 hour

Function Stage3ReadyTime()
	float Stage3Ready = GameDaysPassed.GetValue() + Stage3UntilReady	
	AK69KatanaStage3Var.SetValue(Stage3Ready)
EndFunction

float DHUntilReady = 0.04 ;1 hour

Function DHReadyTime()
	float DHReady = GameDaysPassed.GetValue() + DHUntilReady	
	AK69DHStageVar.SetValue(DHReady)
EndFunction

Function EndQuest()
Self.SetStage(300)
EndFunction