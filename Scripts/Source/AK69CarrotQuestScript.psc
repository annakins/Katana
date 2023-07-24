Scriptname AK69CarrotQuestScript extends Quest  

GlobalVariable Property AK69CappyCarrotTimeVar Auto
GlobalVariable Property GameDaysPassed Auto
ObjectReference Property AK69ChillfurrowXMarker  Auto 
ObjectReference Property AK69BanneredMareMarker2  Auto 
ObjectReference Property AK69CappyCarrot Auto

Function RemoveCarrot()
    Game.GetPlayer().RemoveItem(AK69CappyCarrot)
EndFunction


float UntilCappyTime = 1.92 ;0.04 is 1 game hour

Function CappyCarrotTimer()
	float CappyCarrots = GameDaysPassed.GetValue() + UntilCappyTime	
	AK69CappyCarrotTimeVar.SetValue(CappyCarrots)
    
EndFunction

Function DeleteTheStuff()
    AK69BanneredMareMarker2.Disable()
    AK69ChillfurrowXMarker.Disable()
    AK69CappyCarrot.Disable()
EndFunction