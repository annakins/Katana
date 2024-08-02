Scriptname AK69LockpickMGEFScript extends activemagiceffect  

Quest property AK69KatanaLockpickQuest auto
ReferenceAlias property UnlockMe auto
Scene Property AK69LockpickScene auto
Scene Property AK69NOLockpickScene auto
Actor property Katana auto

ObjectReference targetobj1

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    AK69KatanaLockpickQuest.start()
    CheckAround()    
    Katana.EvaluatePackage()
    ;Debug.Notification ("Lockpick effect started")
EndEvent

Function CheckAround()
    UnlockMe.getReference()
    targetobj1 = UnlockMe.getReference()
    If Katana.GetDistance(UnlockMe.getReference()) <= 700
    AK69LockpickScene.Start()
     Else
    AK69NOLockpickScene.Start()
    endif
    ;Debug.Notification ("Lockpick check + scene")
EndFunction

Event OnEffectFinish(Actor target, Actor caster)
    AK69KatanaLockpickQuest.stop()
    ;Debug.Notification ("Lockpick effect end")
EndEvent 

