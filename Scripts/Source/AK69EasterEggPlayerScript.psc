Scriptname AK69EasterEggPlayerScript extends ReferenceAlias  

GlobalVariable Property AK69NutBoysGoodbyeTimeVar Auto
GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69NutTalkNowVar Auto
GlobalVariable Property AK69ChadByeTimeVar Auto
Location Property BanneredMare Auto  
Location Property Whiterun Auto  
Location Property Solitude Auto  
Location Property Riften Auto  
Location Property SleepingGiantInn Auto  
ObjectReference property Azatar auto
ObjectReference property Deepvos auto
ObjectReference property Chadryn auto
ObjectReference property BanneredMareMarker auto
ObjectReference Property AK69ChadrynSleepingGiantInnMarker  Auto 
ObjectReference property DeepvosMarker auto
ObjectReference property AzatarMarker auto
ObjectReference property AK69DeepGoHereMeow auto
ObjectReference Property AK69ChadrynSolitudeMarker  Auto 
ObjectReference Property AK69ChadrynHuntMarker  Auto 
ObjectReference Property AK69ChadrynRiverwoodMarker  Auto 
Scene Property AK69ChadrynIntroScene Auto
Actor Property Katana Auto
Actor Property Megara Auto
GlobalVariable Property AK69KatanaRecruitedVar Auto
GlobalVariable Property AK69MegaraRecruitedVar Auto
ObjectReference Property AK69ChadrynWhiterunMarker  Auto 
ObjectReference Property AK69NutBoysSceneTrigger  Auto 

int Property SolitudeTime  Auto  
int Property RiftenTime  Auto  
int Property RiverwoodTime  Auto  

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
    
if (GetOwningQuest().GetStage() == 10) && (akNewLoc != Whiterun) && SolitudeTime == 0
    Chadryn.MoveTo(AK69ChadrynSolitudeMarker)
    SolitudeTime = 1
endif

if (GetOwningQuest().GetStage() == 20) && (akNewLoc != Solitude) && RiftenTime == 0
    Chadryn.MoveTo(AK69ChadrynHuntMarker)
    RiftenTime == 1
endif

if (GetOwningQuest().GetStage() == 30) && (akNewLoc != Riften) && RiverwoodTime == 0
    Chadryn.MoveTo(AK69ChadrynRiverwoodMarker)
    RiverwoodTime == 1
endif

if (AK69NutTalkNowVar.GetValue() == 1 && akNewLoc != BanneredMare)
If GameDaysPassed.GetValue() >= AK69NutBoysGoodbyeTimeVar.GetValue()
    Azatar.Disable()
    Deepvos.Disable()
    BanneredMareMarker.Disable()
    DeepvosMarker.Disable()
    AzatarMarker.Disable()
    AK69DeepGoHereMeow.Disable()
    AK69NutBoysSceneTrigger.Disable()
Endif
endif

if (AK69KatanaRecruitedVar.GetValue() == 1) && (AK69MegaraRecruitedVar.GetValue() == 1) && (GetOwningQuest().GetStage() == 0)
    Chadryn.moveto(AK69ChadrynWhiterunMarker)
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

if (GetOwningQuest().GetStage() == 60 && AK69NutTalkNowVar.GetValue() == 1) && Chadryn.IsDisabled()
GetOwningQuest().SetStage(70)
endif
EndEvent