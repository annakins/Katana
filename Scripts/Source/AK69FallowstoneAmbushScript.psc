Scriptname AK69FallowstoneAmbushScript extends ObjectReference  

Scene Property AK69AmbushScene Auto  
int Property SceneTriggered  Auto  
GlobalVariable Property AK69MegaraRecruitedVar Auto
GlobalVariable Property AK69KatanaRecruitedVar Auto
Quest Property AK69TheRavensLamentQuest Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Game.GetPlayer() && AK69KatanaRecruitedVar.GetValue() == 1 && AK69MegaraRecruitedVar.GetValue() == 1 && AK69TheRavensLamentQuest.GetStage() == 110)
        if SceneTriggered == 0
            AK69TheRavensLamentQuest.SetObjectiveCompleted(110)
            AK69TheRavensLamentQuest.SetStage(120)
            AK69AmbushScene.Start()
                SceneTriggered = 1
        endif
    endif
endEvent