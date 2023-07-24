Scriptname AK69EasterEggPlayerScript extends ReferenceAlias  

GlobalVariable Property AK69NutBoysGoodbyeTimeVar Auto
GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69NutTalkNowVar Auto
GlobalVariable Property AK69ChadByeTimeVar Auto
Location Property BanneredMare Auto  
Location Property Whiterun Auto  
Location Property SleepingGiantInn Auto  
ObjectReference property Azatar auto
ObjectReference property Deepvos auto
ObjectReference property Chadryn auto
ObjectReference property BanneredMareMarker auto
ObjectReference Property AK69ChadrynSleepingGiantInnMarker  Auto 
ObjectReference property DeepvosMarker auto
ObjectReference property AzatarMarker auto
ObjectReference property AK69DeepGoHereMeow auto
Scene Property AK69ChadrynIntroScene Auto
Actor Property Katana Auto
Actor Property Megara Auto
GlobalVariable Property AK69KatanaRecruitedVar Auto
GlobalVariable Property AK69MegaraRecruitedVar Auto


Event OnLocationChange(Location akOldLoc, Location akNewLoc)
if (AK69NutTalkNowVar.GetValue() == 1 && akNewLoc != BanneredMare)
If GameDaysPassed.GetValue() >= AK69NutBoysGoodbyeTimeVar.GetValue()
    Azatar.Disable()
    Deepvos.Disable()
    BanneredMareMarker.Disable()
    DeepvosMarker.Disable()
    AzatarMarker.Disable()
    AK69DeepGoHereMeow.Disable()
Endif
endif

if (AK69KatanaRecruitedVar.GetValue() == 1) && (AK69MegaraRecruitedVar.GetValue() == 1)
if (GetOwningQuest().GetStage() == 0 && (akNewLoc == Whiterun) && Chadryn.GetParentCell() == Game.GetPlayer().GetParentCell())
	AK69ChadrynIntroScene.Start()
endif
Endif

if (GetOwningQuest().GetStage() == 60 && akNewLoc != SleepingGiantInn)
    If GameDaysPassed.GetValue() >= AK69ChadByeTimeVar.GetValue()
    AK69ChadrynSleepingGiantInnMarker.Disable()
    Chadryn.Disable()
    Endif
endif

if (GetOwningQuest().GetStage() == 60 && AK69NutTalkNowVar.GetValue() == 1)
GetOwningQuest().SetStage(70)
endif
EndEvent