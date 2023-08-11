Scriptname AK69ActorDetectorScript extends activemagiceffect  

Quest property AK69ActorDetectorQuest auto
ReferenceAlias property Chicken auto
ReferenceAlias property Dog auto
Actor property Megara auto
GlobalVariable property AK69ActorVar auto

ObjectReference ChickenRef
ObjectReference DogRef

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    AK69ActorDetectorQuest.start()
    GetActors()    
EndEvent

Function GetActors()
    Chicken.getReference() as Actor
    ChickenRef = Chicken.getReference()
    DogRef = Dog.getReference()
    WhoIsIt()
EndFunction

Function WhoIsIt()
    If Megara.GetDistance(Chicken.getReference()) <= 700
        AK69ActorVar.SetValue(1 as Float)
       ;Debug.Notification("CHICKEN")    
    elseif Megara.GetDistance(Dog.getReference()) <= 700
        AK69ActorVar.SetValue(2 as Float)
        ;Debug.Notification("DOG")    
    else
        AK69ActorVar.SetValue(0 as Float)
    endif
    Utility.Wait(3.0)
EndFunction

Event OnEffectFinish(Actor target, Actor caster)
    AK69ActorDetectorQuest.stop()
EndEvent 

;Dev Notes for AK69ActorVar
;1 for chicken
;2 for dog