Scriptname AK69FallowstoneAmbushScript extends ObjectReference  

Scene Property AK69AmbushScene Auto  
int Property SceneTriggered  Auto  
GlobalVariable Property AK69MegaraRecruitedVar Auto
GlobalVariable Property AK69KatanaRecruitedVar Auto
GlobalVariable Property AK69MegaraRelax Auto
GlobalVariable Property AK69KatanaRelax Auto
Quest Property AK69TheRavensLamentQuest Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Game.GetPlayer() && AK69KatanaRecruitedVar.GetValue() == 1 && AK69MegaraRecruitedVar.GetValue() == 1 && AK69KatanaRelax.GetValue() == 0 && AK69MegaraRelax.GetValue() == 0 && AK69TheRavensLamentQuest.GetStage() == 110)
        if SceneTriggered == 0
            AK69TheRavensLamentQuest.SetObjectiveCompleted(110)
            AK69TheRavensLamentQuest.SetStage(120)
            AK69AmbushScene.Start()
                SceneTriggered = 1
        endif
    endif
endEvent