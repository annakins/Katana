Scriptname AK69MegaraDialogueQuestAliasScript extends ReferenceAlias  

Faction Property CurrentHireling Auto
Message Property FollowerDismissMessage  Auto
Actor Property PlayerREF Auto
Actor Property Megara Auto
GlobalVariable Property FollowerRecruited Auto
GlobalVariable Property AK69MegaraWasBetrayed Auto

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
     Actor combatTarget = Megara.GetCombatTarget()
     If (akTarget == PlayerREF) && (FollowerRecruited.GetValue() ==1) 
     AK69MegaraWasBetrayed.SetValue(1 as float)
     (GetOwningQuest() as AK69MegaraController).DismissFollower(0, 0)     
     endif
EndEvent

Event OnDeath(Actor akKiller)
     Self.GetActorReference().RemoveFromFaction(CurrentHireling)
     Self.Clear()
EndEvent

