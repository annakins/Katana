Scriptname AK69ActorDetectorScript extends activemagiceffect  

Quest property AK69ActorDetectorQuest auto
ReferenceAlias property Chicken auto
ReferenceAlias property Dog auto
Actor property Megara auto

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
EndFunction

Event OnEffectFinish(Actor target, Actor caster)
    AK69ActorDetectorQuest.stop()
EndEvent 

;Dev Notes for AK69ActorVar
;1 for chicken
;2 for dog