Scriptname AK69PlayerSerenataHoneymoonScript extends ReferenceAlias  

GlobalVariable Property AK69SQCourierReadyVar Auto
GlobalVariable Property AK69HoneymoonBabesTimer auto
GlobalVariable Property AK69ShaleRecruited Auto
GlobalVariable Property AK69ShaleRelax Auto
GlobalVariable Property GameDaysPassed Auto
Location Property AK69CozyLocation Auto
Keyword Property LocTypeClearable Auto
Scroll Property AK69SQScroll Auto
Cell Property AK69CozyInterior Auto

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
    if (GetOwningQuest().GetStage() == 40 && akNewLoc != akOldLoc)
    If GameDaysPassed.GetValue() >= AK69SQCourierReadyVar.GetValue() && (AK69ShaleRecruited.GetValue() == 1) && (AK69ShaleRelax.GetValue() == 0)
        GetOwningQuest().SetStage(50)
    Endif
   endif

   if (GetOwningQuest().GetStage() == 140 && akNewLoc != akOldLoc && !akNewLoc.HasKeyword(LocTypeClearable))
    If (GameDaysPassed.GetValue() >= AK69HoneymoonBabesTimer.GetValue()) && (AK69ShaleRecruited.GetValue() == 1) && (AK69ShaleRelax.GetValue() == 0)
        GetOwningQuest().SetStage(150)
    Endif
   endif

if GetOwningQuest().GetStage() == 60 || GetOwningQuest().GetStage() == 70
    if Game.GetPlayer().GetItemCount(AK69SQScroll) == 0
        Game.GetPlayer().AddItem(AK69SQScroll)
        Debug.Notification ("Should have a new scroll since it went away")
    endIf
endif


EndEvent
    
