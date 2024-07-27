Scriptname AK69CQPlayerScript extends ReferenceAlias  

Location Property WhiterunBanneredMareLocation Auto  
int Property BanneredMareTime  Auto  
GlobalVariable Property AK69MegaraRecruitedVar Auto

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
if (GetOwningQuest().GetStage() == 40) && (akNewLoc == WhiterunBanneredMareLocation) && BanneredMareTime == 0 && AK69MegaraRecruitedVar.GetValue() == 1
    GetOwningQuest().SetObjectiveCompleted(40)
    GetOwningQuest().SetObjectiveDisplayed(41)
    BanneredMareTime = 1
endif
EndEvent