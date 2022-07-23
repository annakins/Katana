Scriptname AK69MegaraController extends Quest  Conditional

Actor Property PlayerREF Auto
ReferenceAlias Property Megara Auto
Faction Property DismissedFollowerFaction Auto
Faction Property CurrentHireling Auto
Message Property  FollowerDismissMessage Auto
Message Property  FollowerDismissMessageWedding Auto
Message Property  FollowerDismissMessageCompanions Auto
Message Property  FollowerDismissMessageCompanionsMale Auto
Message Property  FollowerDismissMessageCompanionsFemale Auto
Message Property  FollowerDismissMessageWait Auto
SetHirelingRehire Property HirelingRehireScript Auto
GlobalVariable Property MegaraRelaxVar Auto
GlobalVariable Property FollowerRecruited Auto
Int Property iFollowerDismiss Auto Conditional
Quest Property AK69MegaraConfigQuest Auto
 
bool Property PlayerSettled auto conditional

Function SetFollower(ObjectReference FollowerRef)
     actor FollowerActor = FollowerRef as Actor
     FollowerActor.RemoveFromFaction(DismissedFollowerFaction)
     If FollowerActor.GetRelationshipRank(PlayerREF) <3 && FollowerActor.GetRelationshipRank(PlayerREF) >= 0
     FollowerActor.SetRelationshipRank(PlayerREF, 3)
     EndIf
     FollowerActor.SetPlayerTeammate()
     Megara.ForceRefTo(FollowerActor)
     FollowerActor.EvaluatePackage()
     FollowerRecruited.SetValue(1)
	AK69MegaraConfigQuest.Start()
EndFunction

Function FollowerWait()
     actor FollowerActor = Megara.GetReference() as Actor
     MegaraRelaxVar.SetValue(1)
     SetObjectiveDisplayed(10, abforce = true)
	FollowerActor.EvaluatePackage()
EndFunction

Function FollowerFollow()
     actor FollowerActor = Megara.GetReference() as Actor
	MegaraRelaxVar.SetValue(0)
     SetObjectiveDisplayed(10, abdisplayed = false)
     FollowerActor.EvaluatePackage()
EndFunction

Function DismissFollower(Int iMessage = 0, Int iSayLine = 1)
     If Megara && Megara.GetActorReference().IsDead() == False
          If iMessage == 0
               FollowerDismissMessage.Show()
          ElseIf iMessage == 1
               FollowerDismissMessageWedding.Show()
          ElseIf iMessage == 2
               FollowerDismissMessageCompanions.Show()
          ElseIf iMessage == 3
               FollowerDismissMessageCompanionsMale.Show()
          ElseIf iMessage == 4
               FollowerDismissMessageCompanionsFemale.Show()
          ElseIf iMessage == 5
               FollowerDismissMessageWait.Show()
          Else
              FollowerDismissMessage.Show()
          EndIf

          actor DismissedFollowerActor = Megara.GetReference() as Actor
          DismissedFollowerActor.StopCombatAlarm()
          DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)
          DismissedFollowerActor.SetPlayerTeammate(false)
          DismissedFollowerActor.RemoveFromFaction(CurrentHireling)
          DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)
          FollowerRecruited.SetValue(0)
          HirelingRehireScript.DismissHireling(DismissedFollowerActor.GetActorBase())

          If iSayLine == 1
          iFollowerDismiss = 1
          DismissedFollowerActor.EvaluatePackage()
          Utility.Wait(2)
          EndIf
          Megara.Clear()
          iFollowerDismiss = 0
     EndIf
	  AK69MegaraConfigQuest.Stop()
EndFunction