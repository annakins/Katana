Scriptname AK69SaSSceneScript extends ObjectReference  

Scene Property AK69KatlaNoMegara Auto  
Scene Property AK69KatlaWithMegara Auto  
int Property SceneTriggered1  Auto  
GlobalVariable Property AK69MegaraRecruitedVar Auto
GlobalVariable Property AK69MegaraRelax Auto
GlobalVariable Property AK69KatanaRelax Auto
GlobalVariable Property AK69KatanaRecruitedVar Auto
GlobalVariable Property AK69KatlaNoMegaraFGVar Auto
Quest Property AK69SugarandSpiceQuest Auto
Actor Property Katana Auto
Actor Property Megara Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    IF (akActionRef == Katana && AK69SugarandSpiceQuest.GetStage() == 50 && Game.GetPlayer().IsInCombat() == 0) && SceneTriggered1 == 0
        if AK69MegaraRecruitedVar.GetValue() == 1 && AK69MegaraRelax.GetValue() == 0 && SceneTriggered1 == 0 
            AK69KatlaWithMegara.Start()
            SceneTriggered1 = 1
        elseif (AK69MegaraRecruitedVar.GetValue() == 0 || AK69MegaraRelax.GetValue() == 1) && AK69KatlaNoMegaraFGVar.GetValue() == 0
            AK69KatlaNoMegara.Start()
            SceneTriggered1 = 1
    endif
endif
endEvent

