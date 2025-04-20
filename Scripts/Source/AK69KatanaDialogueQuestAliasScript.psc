Scriptname AK69KatanaDialogueQuestAliasScript extends ReferenceAlias  

Faction Property CurrentHireling Auto
Message Property FollowerDismissMessage  Auto
Actor Property PlayerREF Auto
Actor Property Katana Auto
Quest Property AK69KatanaShadowAttackQuest Auto
GlobalVariable Property FollowerRecruited Auto
GlobalVariable Property AK69KatanaWanderKillVar Auto
GlobalVariable Property AK69KatanaWasBetrayed Auto
GlobalVariable Property AK69KatanaWorkWithPlayer Auto
AK69KatanaController property KatanaDataStorage auto

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
Actor combatTarget = Katana.GetCombatTarget()
(AK69KatanaShadowAttackQuest as AK69KatanaShadowAttack).KatanaCombatStateChanged(akTarget, aeCombatState)
If (akTarget == PlayerREF) && Katana.IsPlayerTeammate() 
AK69KatanaWasBetrayed.SetValue(1 as float)
KatanaDataStorage.DecreaseRateMajor()
(GetOwningQuest() as AK69KatanaController).DismissFollower(0, 0)
elseif (aeCombatState == 1) || (Katana.GetDistance(PlayerREF) >= 5000)
AK69KatanaWanderKillVar.SetValue(0)
endif
if !PlayerREF.IsInCombat() && (AK69KatanaWorkWithPlayer.GetValue() == 2)
AK69KatanaWorkWithPlayer.SetValue(1 as float)
endif
 
Katana.EvaluatePackage()
EndEvent

Event OnDeath(Actor akKiller)
     Self.GetActorReference().RemoveFromFaction(CurrentHireling)
     Self.Clear()
EndEvent

