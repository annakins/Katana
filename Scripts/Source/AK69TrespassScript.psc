Scriptname AK69TrespassScript extends activemagiceffect  

AK69KatanaController property KatanaDataStorage auto

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    KatanaDataStorage.DecreaseRateMinor()
    ;Debug.Notification ("UpdateTrespasses")
EndEvent

