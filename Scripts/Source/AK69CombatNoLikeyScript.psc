Scriptname AK69CombatNoLikeyScript extends activemagiceffect  

Quest property AK69CombatTargetNoLikeyQuest auto
ReferenceAlias property CombatNoLikey auto
ReferenceAlias property CombatNoLikey2 auto
Actor property Katana auto
GlobalVariable property AK69KatanaNoLikeyKillVar auto

ObjectReference combatnolikeyobject1
ObjectReference combatnolikeyobject2

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    AK69CombatTargetNoLikeyQuest.start()
    GetActors()    
EndEvent

Function GetActors()
    CombatNoLikey.getReference() as Actor
    combatnolikeyobject1 = CombatNoLikey.getReference()
    combatnolikeyobject2 = CombatNoLikey2.getReference()
    MaybeKillTime()
EndFunction

Function MaybeKillTime()
    ObjectReference combatTarget = Katana.GetCombatTarget()
    if (combatTarget == combatnolikeyobject1 || combatTarget == combatnolikeyobject2)
        AK69KatanaNoLikeyKillVar.SetValue(1 as Float)
        ;Debug.Notification("EFFECT This is 1")    
    endif
    if !(combatTarget == combatnolikeyobject1 || combatTarget == combatnolikeyobject2)
        AK69KatanaNoLikeyKillVar.SetValue(0 as Float)
        ;Debug.Notification("EFFECT This is 0")   
    endif
    Utility.Wait(3.0)
EndFunction

Event OnEffectFinish(Actor target, Actor caster)
    AK69CombatTargetNoLikeyQuest.stop()
EndEvent 

