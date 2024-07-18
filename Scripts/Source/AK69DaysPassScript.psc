Scriptname AK69DaysPassScript extends activemagiceffect  

AK69KatanaController property KatanaDataStorage auto
GlobalVariable Property AK69DaysPassVar Auto
GlobalVariable Property GameDaysPassed Auto

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    KatanaDataStorage.IncreaseRateMinor()
    Debug.Notification ("UpdateDaysPassed")
    AK69DaysPassVar.SetValue(0)
    Utility.Wait(0.1)
    DayTimer()
EndEvent

float dayspasstime = 0.96 ;0.04 is 1 game hour

Function DayTimer()
	float DaysPassed = GameDaysPassed.GetValue() + dayspasstime	
	AK69DaysPassVar.SetValue(DaysPassed)
EndFunction