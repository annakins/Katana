Scriptname AK69ChadSceneTrigger3Script extends ObjectReference  

Scene Property ChadScene Auto  
int Property SceneTriggered  Auto  
GlobalVariable Property AK69MegaraRecruited Auto
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69MegaraRelax Auto
Quest Property AK69EasterEggsQuest Auto
Actor Property Chadryn Auto
Actor Property Katana Auto
Actor Property Megara Auto

;Riverwood

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Katana && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0) && AK69EasterEggsQuest.GetStage() == 30)
        if (SceneTriggered == 0) && (Chadryn.GetParentCell() == Game.GetPlayer().GetParentCell())
            if Game.GetPlayer().IsInCombat() == 0
                ChadScene.Start()
                SceneTriggered = 1
                AK69EasterEggsQuest.SetObjectiveCompleted(30)
            endif
        endif
    endif
endEvent