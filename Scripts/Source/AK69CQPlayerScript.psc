Scriptname AK69CQPlayerScript extends ReferenceAlias  

Location Property WhiterunBanneredMareLocation Auto  
Location Property ChillfurrowFarmInteriorLocation Auto  
int Property BanneredMareTime  Auto  
GlobalVariable Property AK69MegaraRecruitedVar Auto
GlobalVariable Property AK69MegaraRelax Auto
GlobalVariable Property AK69CappyCarrotTimeVar Auto
GlobalVariable Property GameDaysPassed Auto
ObjectReference Property AK69CappyCarrot Auto

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
if GetOwningQuest().GetStage() == 20 && (akNewLoc == ChillfurrowFarmInteriorLocation) 
    if (AK69MegaraRecruitedVar.GetValue() == 0 || AK69MegaraRelax.GetValue() == 1)
    AK69CappyCarrot.BlockActivation(True)
elseif (AK69MegaraRecruitedVar.GetValue() == 1 && AK69MegaraRelax.GetValue() == 0)
    AK69CappyCarrot.BlockActivation(False)
endif
endif

if (GetOwningQuest().GetStage() == 40) && (akNewLoc == WhiterunBanneredMareLocation) && BanneredMareTime == 0 && AK69MegaraRecruitedVar.GetValue() == 1 && AK69MegaraRelax.GetValue() == 0
    GetOwningQuest().SetObjectiveCompleted(40)
    GetOwningQuest().SetObjectiveDisplayed(41)
    BanneredMareTime = 1
endif
if (GetOwningQuest().GetStage() == 50 && akNewLoc != akOldLoc)
    If GameDaysPassed.GetValue() >= AK69CappyCarrotTimeVar.GetValue() && (AK69MegaraRecruitedVar.GetValue() == 1) && AK69MegaraRelax.GetValue() == 0
        GetOwningQuest().SetObjectiveCompleted(50)
    GetOwningQuest().SetObjectiveDisplayed(51)
    Endif
   endif
EndEvent