Scriptname AK69MountCuteScene extends activemagiceffect  

Scene Property AK69KatanaMountUpScene Auto
Scene Property AK69KatanaDismountScene Auto

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    AK69KatanaMountUpScene.Start()
    ;Debug.Notification ("Cute mount scene should have played unless all have played") 
EndEvent

Event OnEffectFinish(Actor target, Actor caster)
    AK69KatanaDismountScene.Start()
    ;Debug.Notification ("Cute mount scene should have stopped unless all have played") 
EndEvent 