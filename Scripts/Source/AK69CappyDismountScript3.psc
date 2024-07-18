Scriptname AK69CappyDismountScript3 extends ObjectReference  

int Property SceneTriggered  Auto  
Quest Property AK69KatanaPersonalQuest Auto
Actor Property Megara Auto

Event OnTriggerEnter(ObjectReference akActionRef)
    if (akActionRef == Megara && AK69KatanaPersonalQuest.GetStage() >= 110 && AK69KatanaPersonalQuest.GetStage() < 125)
        if SceneTriggered == 0
            Megara.Dismount()
            Megara.EvaluatePackage()
            AK69KatanaPersonalQuest.SetStage(125)
            SceneTriggered = 1
        endif
    endif
endEvent