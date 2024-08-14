Scriptname AK69FallowstoneSceneTriggerScript extends ObjectReference  

Scene Property AK69FallowstoneSceneA Auto
ReferenceAlias Property AK69RiverVoiceMarker Auto
ReferenceAlias Property ShaleVoice Auto
int Property SceneTriggered  Auto  
GlobalVariable Property AK69MegaraRecruited Auto
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69MegaraRelax Auto
GlobalVariable Property AK69KatanaRelax Auto
Quest Property AK69TheRavensLamentQuest Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Game.GetPlayer() && AK69KatanaRecruited.GetValue() == 1 && AK69MegaraRecruited.GetValue() == 1 && AK69KatanaRelax.GetValue() == 0 && AK69MegaraRelax.GetValue() == 0 && AK69TheRavensLamentQuest.GetStage() == 100)
        if SceneTriggered == 0
            if Game.GetPlayer().IsInCombat() == 0
                AK69RiverVoiceMarker.GetReference().MoveTo(Game.GetPlayer())
                ShaleVoice.GetReference().MoveTo(Game.GetPlayer())
                AK69TheRavensLamentQuest.SetObjectiveCompleted(101)
                AK69TheRavensLamentQuest.SetObjectiveCompleted(100)
                AK69FallowstoneSceneA.Start()  
                SceneTriggered = 1
            endif
        endif
    endif
endEvent