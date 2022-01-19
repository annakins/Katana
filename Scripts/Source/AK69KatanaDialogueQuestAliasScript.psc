Scriptname AK69KatanaDialogueQuestAliasScript extends ReferenceAlias  

Faction Property CurrentHireling Auto

Message Property FollowerDismissMessage  Auto

Actor Property PlayerREF Auto

Quest Property AK69KatanaShadowAttackQuest Auto

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)

(AK69KatanaShadowAttackQuest as AK69KatanaShadowAttack).KatanaCombatStateChanged(akTarget, aeCombatState)

     If (akTarget == PlayerREF)

          (GetOwningQuest() as AK69KatanaController).DismissFollower(0, 0)

     EndIf

EndEvent

 

Event OnDeath(Actor akKiller)

     Self.GetActorRef().RemoveFromFaction(CurrentHireling)

     Self.Clear()

EndEvent



Event OnPackageStart(Package akNewPackage)
	(AK69KatanaShadowAttackQuest as AK69KatanaShadowAttack).KatanaPackageStart(akNewPackage)
EndEvent
