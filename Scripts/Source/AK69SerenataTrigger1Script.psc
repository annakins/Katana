Scriptname AK69SerenataTrigger1Script extends ObjectReference 

Scene Property AK69SQScene4 Auto  
int Property SceneTriggered  Auto  
Quest Property AK69SerenataQuest Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Game.GetPlayer() && AK69SerenataQuest.GetStage() == 80)
        if SceneTriggered == 0
            AK69SerenataQuest.SetStage(90)
            AK69SQScene4.Start()
                SceneTriggered = 1
            
        endif
    endif
endEvent