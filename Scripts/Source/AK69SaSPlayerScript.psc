Scriptname AK69SaSPlayerScript extends ReferenceAlias  

Location Property AK69RiverHideoutLocation Auto
Scene Property AK69SaSKRMegara Auto
Actor Property Katana Auto
Actor Property Megara Auto

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
    if (GetOwningQuest().GetStage() == 30 && AK69RiverHideoutLocation == akNewLoc && Katana.IsInLocation(AK69RiverHideoutLocation)) 
        GetOwningQuest().SetObjectiveCompleted(30)
        if Megara.IsInLocation(AK69RiverHideoutLocation)
        AK69SaSKRMegara.Start()
        endif
    Endif
EndEvent