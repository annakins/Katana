Scriptname AK69ChadSceneTrigger2Script extends ObjectReference  


Scene Property ChadScene Auto  
int Property SceneTriggered  Auto  
GlobalVariable Property AK69KatanaRecruited Auto
Quest Property AK69EasterEggsQuest Auto
Actor Property Chadryn Auto
Actor Property Katana Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Katana && AK69KatanaRecruited.GetValue() == 1 && AK69EasterEggsQuest.GetStage() == 20)
        if (SceneTriggered == 0) && (Chadryn.GetParentCell() == Game.GetPlayer().GetParentCell())
            if Game.GetPlayer().IsInCombat() == 0
                ChadScene.Start()
                SceneTriggered = 1
            endif
        endif
    endif
endEvent