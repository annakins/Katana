Scriptname AK69ShaleDialogueQuestAliasScript extends ReferenceAlias  

Faction Property CurrentHireling Auto
Message Property FollowerDismissMessage  Auto
Actor Property PlayerREF Auto
Actor Property Shale Auto
GlobalVariable Property AK69ShaleRecruited Auto
GlobalVariable Property AK69ShaleWasBetrayed Auto
GlobalVariable Property AK69ShadowVar Auto
AK69KatanaController property KatanaDataStorage auto
GlobalVariable Property AK69ShaleWorkWithPlayer auto
Spell Property AK69Invisibility Auto

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
     Actor combatTarget = Shale.GetCombatTarget()
     If (akTarget == PlayerREF) && (Shale.IsPlayerTeammate())
     AK69ShaleWasBetrayed.SetValue(1 as float)
     KatanaDataStorage.DecreaseRateMajor()
     (GetOwningQuest() as AK69ShaleController).DismissFollower(0, 0)   
    endif
     if !PlayerREF.IsInCombat() && (AK69ShaleWorkWithPlayer.GetValue() == 2)
          AK69ShaleWorkWithPlayer.SetValue(1 as float)
     endif
     If AK69ShadowVar.GetValue() == 1 && PlayerREF.IsInCombat()
          AK69Invisibility.Cast(Shale, Shale)
     endif
     Shale.EvaluatePackage()
EndEvent


Event OnDeath(Actor akKiller)
     Self.GetActorReference().RemoveFromFaction(CurrentHireling)
     Self.Clear()
EndEvent

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
     if AK69ShaleWorkWithPlayer.GetValue() == 1
          AK69ShaleWorkWithPlayer.SetValue(2 as float)
     endif
     Shale.EvaluatePackage()
EndEvent
