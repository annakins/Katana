Scriptname AK69KatanaDialogueQuestAliasScript extends ReferenceAlias  

Faction Property CurrentHireling Auto
Message Property FollowerDismissMessage  Auto
Actor Property PlayerREF Auto
Actor Property Katana Auto
Quest Property AK69KatanaShadowAttackQuest Auto
GlobalVariable Property FollowerRecruited Auto
GlobalVariable Property AK69KatanaWanderKillVar Auto

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
Actor combatTarget = Katana.GetCombatTarget()
(AK69KatanaShadowAttackQuest as AK69KatanaShadowAttack).KatanaCombatStateChanged(akTarget, aeCombatState)
If (akTarget == PlayerREF) && (FollowerRecruited.GetValue() ==1) 
(GetOwningQuest() as AK69KatanaController).DismissFollower(0, 0)
elseif (aeCombatState == 1) || (Katana.GetDistance(PlayerREF) >= 2000)
AK69KatanaWanderKillVar.SetValue(0)
endif
Katana.EvaluatePackage()
EndEvent

Event OnDeath(Actor akKiller)
     Self.GetActorReference().RemoveFromFaction(CurrentHireling)
     Self.Clear()
EndEvent

