Scriptname AK69NutBoysSceneScript extends ObjectReference  

Scene Property AK69EasterEgg1Scene Auto  
int Property SceneTriggered  Auto  

Event OnTriggerEnter(ObjectReference akActionRef)

    if akActionRef == Game.GetPlayer()
        if SceneTriggered == 0
            if Game.GetPlayer().IsInCombat() == 0
                AK69EasterEgg1Scene.Start()
                SceneTriggered = 1
            endif
        endif
    endif

endEvent