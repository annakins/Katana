Scriptname AK69PlayerBountyHuntScript extends ReferenceAlias  

GlobalVariable Property AK69KatanaBountyTimer1 Auto
GlobalVariable Property GameDaysPassed Auto

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
    if (GetOwningQuest().GetStage() == 10 && akNewLoc != akOldLoc)
    If GameDaysPassed.GetValue() >= AK69KatanaBountyTimer1.GetValue()
        GetOwningQuest().SetStage(20)
    Endif
    endif
    
    EndEvent
    