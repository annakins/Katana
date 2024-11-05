Scriptname AK69ShaleController extends Quest  Conditional

Actor Property PlayerREF Auto
ReferenceAlias Property Shale Auto
Faction Property DismissedFollowerFaction Auto
Faction Property CurrentHireling Auto
Message Property  FollowerDismissMessage Auto
Message Property  FollowerDismissMessageWedding Auto
Message Property  FollowerDismissMessageCompanions Auto
Message Property  FollowerDismissMessageCompanionsMale Auto
Message Property  FollowerDismissMessageCompanionsFemale Auto
Message Property  FollowerDismissMessageWait Auto
SetHirelingRehire Property HirelingRehireScript Auto
GlobalVariable Property AK69ShaleRelax Auto
GlobalVariable Property AK69ShaleRecruited Auto
Int Property iFollowerDismiss Auto Conditional
Quest Property AK69ShaleConfigQuest Auto
Quest Property AK69ShaleSkyrimQuests Auto
Quest Property AK69ShaleDismissedQuest Auto
Quest Property AK69ShaleAdorbsQuest Auto
ObjectReference Property AK69ChestREF  Auto  

Int Property AK69Quality Auto conditional
bool Property Riverwoodmotto = false auto conditional

Function SetFollower(ObjectReference FollowerRef)
     actor FollowerActor = FollowerRef as Actor
     FollowerActor.RemoveFromFaction(DismissedFollowerFaction)
     If FollowerActor.GetRelationshipRank(PlayerREF) <3 && FollowerActor.GetRelationshipRank(PlayerREF) >= 0
     FollowerActor.SetRelationshipRank(PlayerREF, 3)
     EndIf
     FollowerActor.SetPlayerTeammate()
     Shale.ForceRefTo(FollowerActor)
     FollowerActor.EvaluatePackage()
     AK69ShaleRecruited.SetValue(1)
	AK69ShaleConfigQuest.Start()
     ;AK69ShaleSkyrimQuests.Start()
     AK69ShaleAdorbsQuest.Start()
     AK69ShaleDismissedQuest.Stop()

EndFunction

Function FollowerWait()
     actor FollowerActor = Shale.GetReference() as Actor
     AK69ShaleRelax.SetValue(1)
     FollowerActor.SetActorValue("WaitingForPlayer", 1)
     SetObjectiveDisplayed(10, abforce = true)
	FollowerActor.EvaluatePackage()
EndFunction

Function FollowerFollow()
     actor FollowerActor = Shale.GetReference() as Actor
	AK69ShaleRelax.SetValue(0)
     FollowerActor.SetActorValue("WaitingForPlayer", 0)
     SetObjectiveDisplayed(10, abdisplayed = false)
     FollowerActor.EvaluatePackage()
EndFunction

Function DismissFollower(Int iMessage = 0, Int iSayLine = 1)
     If Shale && Shale.GetActorReference().IsDead() == False
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

          actor DismissedFollowerActor = Shale.GetReference() as Actor
          ;DismissedFollowerActor.StopCombatAlarm()
          DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)
          DismissedFollowerActor.SetPlayerTeammate(false)
          DismissedFollowerActor.RemoveFromFaction(CurrentHireling)
          DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)
          AK69ShaleRecruited.SetValue(0)
          AK69ShaleConfigQuest.Stop()
          ;AK69ShaleSkyrimQuests.Stop()
          AK69ShaleAdorbsQuest.Stop()
          AK69ShaleDismissedQuest.Start()
          HirelingRehireScript.DismissHireling(DismissedFollowerActor.GetActorBase())

          If iSayLine == 1
          iFollowerDismiss = 1
          DismissedFollowerActor.EvaluatePackage()
          Utility.Wait(2)
          EndIf
          ;Shale.Clear()
          iFollowerDismiss = 0
     EndIf
EndFunction

Function OpenChest()
     AK69ChestREF.Activate(PlayerREF)
EndFunction
