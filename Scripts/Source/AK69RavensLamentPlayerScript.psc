Scriptname AK69RavensLamentPlayerScript extends ReferenceAlias  

Scene Property AK69TheRavensLamentVoiceScene1 Auto
Scene Property AK69TheRavensLamentVoiceScene2 Auto
Scene Property AK69TheRavensLamentVoiceScene3 Auto
Scene Property AK69TheRavensLamentNoMegaraBeeandBarb Auto
Scene Property AK69TheRavensLamentBeeandBarb Auto
Scene Property AK69TheRavensLamentBeeandBarbUPSTAIRS Auto
Scene Property AK69VilemyrScene1 Auto
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69KatanaRelax Auto
GlobalVariable Property AK69MegaraRecruited Auto
GlobalVariable Property AK69MegaraRelax Auto
GlobalVariable Property AK69CheckedVilemyr Auto
ReferenceAlias Property AK69RiverVoiceMarker Auto
ReferenceAlias Property ShaleVoiceUnknown Auto
ReferenceAlias Property ShaleVoice Auto
Actor Property Katana Auto
Actor Property Megara Auto
Keyword property LocTypeCity auto
Keyword property LocTypeTown auto
Keyword property LocTypeClearable auto
Keyword property LocTypeDungeon auto
Keyword property LocTypeBanditCamp auto
Location Property RiftenBeeandBarbLocation auto
Location Property IvarsteadVilemyrInnLocation auto

ObjectReference Property AK69RiverRiddle auto
ObjectReference Property AK69RiverFlower auto
ObjectReference Property AK69VilemyrNote auto

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
    if (akNewLoc.HasKeyword(LocTypeCity) && GetOwningQuest().GetStage() == 0)
        if (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0)
        AK69RiverVoiceMarker.GetReference().MoveTo(Game.GetPlayer())
        Utility.Wait(1.0)
        AK69TheRavensLamentVoiceScene1.Start()
        endif
    endif
    if (akNewLoc.HasKeyword(LocTypeTown) && GetOwningQuest().GetStage() == 10)
        if (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0)
        AK69RiverVoiceMarker.GetReference().MoveTo(Game.GetPlayer())
        Utility.Wait(1.0)
        AK69TheRavensLamentVoiceScene2.Start()
        endif
    endif
    if ((akNewLoc.HasKeyword(LocTypeClearable) || akNewLoc.HasKeyword(LocTypeDungeon) || akNewLoc.HasKeyword(LocTypeBanditCamp))  && GetOwningQuest().GetStage() == 20 && !Game.GetPlayer().IsOnMount())
        if (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0)
        AK69RiverVoiceMarker.GetReference().MoveTo(Game.GetPlayer())
        Utility.Wait(0.1)
        AK69TheRavensLamentVoiceScene3.Start()
        endif
    endif
    if (RiftenBeeandBarbLocation == akNewLoc) && (GetOwningQuest().GetStage() == 40)
        if (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (!Megara.IsPlayerTeammate() || Megara.GetActorValue("WaitingForPlayer") == 1)
        AK69TheRavensLamentNoMegaraBeeandBarb.Start()
        endif
    endif
    if (RiftenBeeandBarbLocation == akNewLoc) && (GetOwningQuest().GetStage() == 40)
        if (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0)
        AK69RiverRiddle.Enable()
        AK69RiverFlower.Enable()
        AK69RiverFlower.BlockActivation(True)
        AK69RiverRiddle.BlockActivation(True)
        AK69RiverVoiceMarker.GetReference().MoveTo(Game.GetPlayer())
        ShaleVoiceUnknown.GetReference().MoveTo(Game.GetPlayer())
        GetOwningQuest().SetObjectiveCompleted(40)
        Utility.Wait(3.0)
        AK69TheRavensLamentBeeandBarb.Start()
        endif
    endif
    if (IvarsteadVilemyrInnLocation == akNewLoc) && (GetOwningQuest().GetStage() == 100)
        if (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0)
            if AK69CheckedVilemyr.GetValue() ==0
            AK69VilemyrNote.Enable()
            AK69CheckedVilemyr.SetValue(1)
            GetOwningQuest().SetObjectiveCompleted(100)
            AK69VilemyrScene1.Start()
            endif
        endif
    endif
    if (RiftenBeeandBarbLocation == akNewLoc) && (GetOwningQuest().GetStage() == 280)
        if (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0)
        GetOwningQuest().SetObjectiveCompleted(280)
        Utility.Wait(3.0)
        AK69TheRavensLamentBeeandBarbUPSTAIRS.Start()
        endif
    endif
EndEvent








