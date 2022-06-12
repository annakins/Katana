Scriptname AK69MegaraDialogueQuestAliasScript extends ReferenceAlias  


Faction Property CurrentHireling Auto

Message Property FollowerDismissMessage  Auto

Actor Property PlayerREF Auto

Actor Property Megara Auto


Event OnCombatStateChanged(Actor akTarget, int aeCombatState)

     If (akTarget == PlayerREF)

          (GetOwningQuest() as AK69MegaraController).DismissFollower(0, 0)

     EndIf
EndEvent




Event OnDeath(Actor akKiller)

     Self.GetActorRef().RemoveFromFaction(CurrentHireling)

     Self.Clear()

EndEvent





