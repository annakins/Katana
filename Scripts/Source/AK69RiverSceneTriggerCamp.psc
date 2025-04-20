Scriptname AK69RiverSceneTriggerCamp extends ObjectReference  

Actor Property Katana auto
Actor Property Megara Auto
int Property SceneTriggered  Auto  
GlobalVariable Property AK69MegaraRecruitedVar Auto
GlobalVariable Property AK69KatanaRecruitedVar Auto
GlobalVariable Property AK69MegaraRelax Auto
Quest Property AK69TheRavensLamentQuest Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Katana && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0) && AK69TheRavensLamentQuest.GetStage() == 210)
        if SceneTriggered == 0
            
            AK69TheRavensLamentQuest.SetStage(220)
                SceneTriggered = 1
            
        endif
    endif
endEvent