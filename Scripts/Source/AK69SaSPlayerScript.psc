Scriptname AK69SaSPlayerScript extends ReferenceAlias  

Location Property AK69RiverHideoutLocation Auto
Scene Property AK69SaSKRMegara Auto
Actor Property Katana Auto
Actor Property Megara Auto
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69KatanaRelax Auto
GlobalVariable Property AK69MegaraRecruited Auto
GlobalVariable Property AK69MegaraRelax Auto

;This used to have Katana.IsInLocation
Event OnLocationChange(Location akOldLoc, Location akNewLoc)
    if (GetOwningQuest().GetStage() == 30 && AK69RiverHideoutLocation == akNewLoc && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0)) 
        GetOwningQuest().SetObjectiveCompleted(30)
    if (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0)
        AK69SaSKRMegara.Start()
    endif
    Endif
EndEvent