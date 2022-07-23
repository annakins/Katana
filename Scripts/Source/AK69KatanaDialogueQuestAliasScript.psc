Scriptname AK69KatanaDialogueQuestAliasScript extends ReferenceAlias  

Faction Property CurrentHireling Auto
Message Property FollowerDismissMessage  Auto
Actor Property PlayerREF Auto
Actor Property Katana Auto
Quest Property AK69KatanaShadowAttackQuest Auto
GlobalVariable Property FollowerRecruited Auto

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
Actor combatTarget = Katana.GetCombatTarget()
(AK69KatanaShadowAttackQuest as AK69KatanaShadowAttack).KatanaCombatStateChanged(akTarget, aeCombatState)
If (akTarget == PlayerREF) && (FollowerRecruited.GetValue() ==1) 
     (GetOwningQuest() as AK69KatanaController).DismissFollower(0, 0)
endif
EndEvent

Event OnDeath(Actor akKiller)
     Self.GetActorReference().RemoveFromFaction(CurrentHireling)
     Self.Clear()
EndEvent

