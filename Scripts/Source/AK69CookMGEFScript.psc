Scriptname AK69CookMGEFScript extends activemagiceffect  

Quest property AK69CookQuest auto
GlobalVariable property IsCookingVar auto
ReferenceAlias property CookingPot auto
Scene Property AK69CookScene auto
Scene Property AK69NOCookScene auto
Scene Property AK69CookOccScene Auto
Scene Property AK69YASCookScene Auto
Actor property Follower auto


ObjectReference targetobj1

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    AK69CookQuest.start()
    CheckAround()    
    Follower.EvaluatePackage()
    ;Debug.Notification ("Cook effect started")
EndEvent

Function CheckAround()
    CookingPot.getReference()
    targetobj1 = CookingPot.getReference()
    If (Follower.GetDistance(targetobj1) <= 800 && !targetobj1.IsFurnitureInUse(true))
        AK69CookScene.Start()
        ;Debug.Notification ("Will use cooking pot")
        ;this means the pot should not be in use so they walk to it
    ElseIf IsCookingVar.GetValue() == 1
        AK69YASCookScene.Start()
        ;Debug.Notification ("they are already cooking - will give you food")
        ;this means they are already using the cooking pot
    Elseif (Follower.GetDistance(targetobj1) <= 800 && targetobj1.IsFurnitureInUse(true))
        AK69CookOccScene.Start()
        ;Debug.Notification ("Occupied cooking pot")
        ;someone else is using the pot
     Else
        AK69NOCookScene.Start()
        ;Debug.Notification ("No cooking pot")
    endif
    ;Debug.Notification ("Cook check + scene")
EndFunction

Event OnEffectFinish(Actor target, Actor caster)
    AK69CookQuest.stop()
    ;Debug.Notification ("Cook effect end")
EndEvent 

