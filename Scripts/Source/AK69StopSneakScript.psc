Scriptname AK69StopSneakScript extends activemagiceffect  

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    akcaster.StartSneaking()
    akcaster.Disable()
    akcaster.Enable()
    akcaster.EvaluatePackage()
    Debug.Notification ("Stop sneaking! They are now disabled+enabled, too")
endEvent