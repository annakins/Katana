Scriptname AK69NutBoysSceneScript extends ObjectReference  

Scene Property AK69EasterEgg1Scene Auto  
int Property SceneTriggered  Auto  
Quest Property AK69EasterEggsQuest Auto
GlobalVariable Property AK69KatanaRecruitedVar Auto
GlobalVariable Property AK69MegaraRecruitedVar Auto
GlobalVariable Property AK69MegaraRelax Auto
GlobalVariable Property AK69KatanaRelax Auto
Actor Property Katana Auto
Actor Property Megara Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    if akActionRef == Game.GetPlayer() && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0)
        if SceneTriggered == 0
            if Game.GetPlayer().IsInCombat() == 0
                AK69EasterEgg1Scene.Start()
                SceneTriggered = 1
                AK69EasterEggsQuest.SetObjectiveCompleted(11)
            endif
        endif
    endif

endEvent