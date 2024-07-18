Scriptname AK69ActorDetectorScript extends activemagiceffect  

Quest property AK69ActorDetectorQuest auto
ReferenceAlias property Chicken auto
ReferenceAlias property Dog auto
ReferenceAlias property MaleDrunk auto

ObjectReference ChickenRef
ObjectReference DogRef
ObjectReference MaleDrunkRef

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    AK69ActorDetectorQuest.start()
    GetActors()    
EndEvent

Function GetActors()
    ;Chicken.getReference() as Actor
    ChickenRef = Chicken.getReference()
    DogRef = Dog.getReference()
    MaleDrunkRef = MaleDrunk.getReference()
EndFunction

Event OnEffectFinish(Actor target, Actor caster)
    AK69ActorDetectorQuest.stop()
EndEvent 

;Chicken
;Dog
;MaleDrunk
;Cow
;Beggar - check for the perk
;Khajiit Caravan
;Children
;Adopted children
;Orphans
;Jarls

;========Bank of info========;









