Scriptname AK69StopSneakScript extends activemagiceffect  

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    akcaster.StartSneaking()
    Debug.Notification ("Stop sneaking, babe")
endEvent