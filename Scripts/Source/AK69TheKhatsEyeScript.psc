Scriptname AK69TheKhatsEyeScript extends Quest  

ObjectReference property AlTharo auto
ObjectReference property AK69AlTharoMoorsideXMarker auto
GlobalVariable Property AK69ThalmorKillCount Auto
Quest Property AK69TheKhatsEyeQuest Auto

Function Setup()	
    AlTharo.Enable()
    AlTharo.moveto(AK69AlTharoMoorsideXMarker)
EndFunction

Function BossTally()
	if AK69ThalmorKillCount.GetValue() >= 5
		AK69TheKhatsEyeQuest.SetStage(60)
	endif
EndFunction

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69AlTharoGoodbyeTimeVar auto

;Primarily used to handle functionality of setting globals that are used by individual WIComment quests to control how often comments about the player are heard

float UntilGoodbye = 0.96 ;0.04 is 1 game hour

Function GoodbyeAlTharo()
	float KhatGoodbye = GameDaysPassed.GetValue() + UntilGoodbye	
	AK69AlTharoGoodbyeTimeVar.SetValue(KhatGoodbye)
EndFunction

Function EndQuest()
	AlTharo.Disable()
	self.SetStage(100)
EndFunction