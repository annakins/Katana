Scriptname AK69CookMGEFScript extends activemagiceffect  

Quest property AK69CookQuest auto
ReferenceAlias property CookingPot auto
Scene Property AK69CookScene auto
Scene Property AK69NOCookScene auto
Actor property Follower auto

ObjectReference targetobj1

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    AK69CookQuest.start()
    CheckAround()    
    Follower.EvaluatePackage()
    Debug.Notification ("Cook effect started")
EndEvent

Function CheckAround()
    CookingPot.getReference()
    targetobj1 = CookingPot.getReference()
    If (Follower.GetDistance(targetobj1) <= 700 && !targetobj1.IsFurnitureInUse())
        AK69CookScene.Start()
     Else
        AK69NOCookScene.Start()
    endif
    Debug.Notification ("Cook check + scene")
EndFunction

Event OnEffectFinish(Actor target, Actor caster)
    AK69CookQuest.stop()
    Debug.Notification ("Cook effect end")
EndEvent 

