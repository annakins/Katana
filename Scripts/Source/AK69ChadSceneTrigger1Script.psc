Scriptname AK69ChadSceneTrigger1Script extends ObjectReference  

Scene Property ChadScene Auto  
int Property SceneTriggered  Auto  
GlobalVariable Property AK69MegaraRecruitedVar Auto
GlobalVariable Property AK69KatanaRecruitedVar Auto
GlobalVariable Property AK69MegaraRelax Auto
Quest Property AK69EasterEggsQuest Auto
Actor Property Chadryn Auto
Actor Property Katana Auto

;Solitude

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Katana && AK69KatanaRecruitedVar.GetValue() == 1 && AK69MegaraRecruitedVar.GetValue() == 1 && AK69MegaraRelax.GetValue() == 0 && AK69EasterEggsQuest.GetStage() == 10)
        if (SceneTriggered == 0) && (Chadryn.GetParentCell() == Game.GetPlayer().GetParentCell())
            if Game.GetPlayer().IsInCombat() == 0
                ChadScene.Start()
                SceneTriggered = 1
                AK69EasterEggsQuest.SetObjectiveCompleted(10)
            endif
        endif
    endif
endEvent