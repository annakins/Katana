Scriptname AK69CarrotQuestScript extends Quest Conditional

GlobalVariable Property AK69CappyCarrotTimeVar Auto
GlobalVariable Property GameDaysPassed Auto
ObjectReference Property AK69ChillfurrowXMarker  Auto 
ObjectReference Property AK69BanneredMareMarker2  Auto 
ObjectReference Property AK69CappyCarrot Auto

bool property CarrotIdle = false auto conditional


float UntilCappyTime = 0.04 ;0.04 is 1 game hour

Function CappyCarrotTimer()
	float CappyCarrots = GameDaysPassed.GetValue() + UntilCappyTime	
	AK69CappyCarrotTimeVar.SetValue(CappyCarrots)
    
EndFunction

Function DeleteTheStuff()
    AK69BanneredMareMarker2.Disable()
    AK69ChillfurrowXMarker.Disable()
    AK69CappyCarrot.Disable()
EndFunction