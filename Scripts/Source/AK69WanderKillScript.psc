Scriptname AK69WanderKillScript extends activemagiceffect  

Quest property AK69WanderKillDetectorQuest auto
ReferenceAlias property Target1 auto
ReferenceAlias property Target2 auto
Actor property Katana auto
SPELL Property AK69Invisibility  Auto  
Faction Property AK69KatanaWanderKillFaction  Auto  



ObjectReference targetobj1
ObjectReference targetobj2

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    AK69Invisibility.Cast(Katana, Katana)
    Katana.AddToFaction(AK69KatanaWanderKillFaction)    
    AK69WanderKillDetectorQuest.start()
    GetActors()    
    self.RegisterForSingleUpdate(2)
    Katana.EvaluatePackage()
EndEvent

Function GetActors()
    Target1.getReference() as Actor
    targetobj1 = Target1.getReference()
    ;combatnolikeyobject2 = CombatNoLikey2.getReference()
EndFunction

Event OnUpdate()
    If Katana.GetDistance(Target1.getReference()) <= 400
    MaybeKillTime()
    endif
RegisterForSingleUpdate(2)
Katana.EvaluatePackage()
EndEvent

Function MaybeKillTime()
    Katana.StartCombat(Target1.getactorReference())
EndFunction


Event OnEffectFinish(Actor target, Actor caster)
    Katana.DispelSpell(AK69Invisibility)
    Katana.RemoveFromFaction(AK69KatanaWanderKillFaction)
    AK69WanderKillDetectorQuest.stop()
EndEvent 

