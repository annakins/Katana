Scriptname AK69SaSSceneScript extends ObjectReference  

Scene Property AK69KatlaNoMegara Auto  
Scene Property AK69KatlaWithMegara Auto  
int Property SceneTriggered1  Auto  
int Property SceneTriggered2  Auto  
GlobalVariable Property AK69MegaraRecruitedVar Auto
GlobalVariable Property AK69KatanaRecruitedVar Auto
Quest Property AK69SugarandSpiceQuest Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Game.GetPlayer() && AK69KatanaRecruitedVar.GetValue() == 1 && AK69SugarandSpiceQuest.GetStage() == 50)
        if (SceneTriggered1 == 0 && AK69MegaraRecruitedVar.GetValue() == 0)
            if Game.GetPlayer().IsInCombat() == 0
                AK69KatlaNoMegara.Start()
                SceneTriggered1 = 1
            endif
        endif
        if (SceneTriggered2 == 0 && AK69MegaraRecruitedVar.GetValue() == 1)
            if Game.GetPlayer().IsInCombat() == 0
                AK69KatlaWithMegara.Start()
                SceneTriggered2 = 1
            endif
        endif
    endif
endEvent