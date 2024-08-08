Scriptname AK69EasterEggsScript extends Quest Conditional

ObjectReference property Azatar auto
ObjectReference property Chadryn auto
ObjectReference property Deepvos auto
ObjectReference Property AzatarMarker  Auto 
ObjectReference Property AzatarDrunkMarker  Auto 
ObjectReference Property DeepvosMarker  Auto 
ObjectReference Property DeepvosDrunkMarker  Auto 
ObjectReference Property AK69ChadrynWhiterunMarker  Auto 
ObjectReference Property AK69ChadrynSolitudeMarker  Auto 
ObjectReference Property AK69ChadrynHuntMarker  Auto 
ObjectReference Property AK69ChadrynHuntMarker2  Auto 
ObjectReference Property AK69ChadrynRiverwoodMarker  Auto 
Quest Property AK69CarrotQuest Auto
ObjectReference Property AK69NutBoysSceneTrigger Auto

bool property EEFlirtatious = false auto conditional

Function Setup()	
    Azatar.Enable()
    AzatarDrunkMarker.Enable()
    DeepvosDrunkMarker.Enable()
    AK69NutBoysSceneTrigger.Enable()
    AK69ChadrynWhiterunMarker.Enable()
    Chadryn.Enable()
    Deepvos.Enable()
    Azatar.moveto(AzatarMarker)
    Deepvos.moveto(DeepvosMarker)
    Chadryn.moveto(AK69ChadrynWhiterunMarker)
    AK69CarrotQuest.Start()
EndFunction
    
GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69NutBoysGoodbyeTimeVar auto
GlobalVariable Property AK69ChadByeTimeVar auto

;Primarily used to handle functionality of setting globals that are used by individual WIComment quests to control how often comments about the player are heard

float UntilGoodbye = 0.96 ;0.04 is 1 game hour

Function GoodbyeNutBoys()
	float NutBoysGoodbye = GameDaysPassed.GetValue() + UntilGoodbye	
	AK69NutBoysGoodbyeTimeVar.SetValue(NutBoysGoodbye)
EndFunction


Function GoodbyeChadryn()
    AK69ChadrynWhiterunMarker.Disable()
    AK69ChadrynSolitudeMarker.Disable()
    AK69ChadrynHuntMarker.Disable()
    AK69ChadrynHuntMarker2.Disable()
    AK69ChadrynRiverwoodMarker.Disable()
    
    ChadByeTimer()
EndFunction

float ByeChad = 0.96 ;0.04 is 1 game hour

Function ChadByeTimer()
    float ChadByeBye = GameDaysPassed.GetValue() + ByeChad	
	AK69ChadByeTimeVar.SetValue(ChadByeBye)
EndFunction
