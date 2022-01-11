Scriptname AK69KatanaDialogueQuestAliasScript extends ReferenceAlias  

Faction Property CurrentHireling Auto

Message Property FollowerDismissMessage  Auto

Actor Property PlayerREF Auto

 

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)

     If (akTarget == PlayerREF)

          (GetOwningQuest() as AK69KatanaController).DismissFollower(0, 0)

     EndIf

EndEvent

 

Event OnDeath(Actor akKiller)

     Self.GetActorRef().RemoveFromFaction(CurrentHireling)

     Self.Clear()

EndEvent