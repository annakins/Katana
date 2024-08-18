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
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69KatanaRelax Auto
GlobalVariable Property AK69ShaleRecruited Auto
GlobalVariable Property AK69ShaleRelax Auto
ObjectReference Property AK69CozyRecallMarker Auto
ObjectReference Property AK69CozyMarker1 Auto
ObjectReference Property AK69KatanaSQMarker Auto
Activator Property AK69CozyFXActivator Auto
Int Property iFollowerDismiss Auto Conditional
Quest Property AK69MegaraConfigQuest Auto
Quest Property AK69MegaraSkyrimQuests Auto
Quest Property AK69MegaraDismissedQuest Auto
Actor Property MegaraActor Auto
Actor Property KatanaActor Auto
Actor Property ShaleActor Auto
bool Property SaidImpressive = false auto conditional
bool Property SaidHoarding = false auto conditional
bool Property SaidHoarding30books = false auto conditional
bool Property SaidHoarding40books = false auto conditional
bool Property SaidPSEE = false auto conditional
bool Property KhatsEyeStart = false auto conditional
Int Property AK69Quality Auto conditional

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
     AK69MegaraSkyrimQuests.Start()
     AK69MegaraDismissedQuest.Stop()

EndFunction

Function FollowerWait()
     actor FollowerActor = Megara.GetReference() as Actor
     MegaraRelaxVar.SetValue(1)
     FollowerActor.SetActorValue("WaitingForPlayer", 1)
     SetObjectiveDisplayed(10, abforce = true)
	FollowerActor.EvaluatePackage()
EndFunction

Function FollowerFollow()
     actor FollowerActor = Megara.GetReference() as Actor
	MegaraRelaxVar.SetValue(0)
     FollowerActor.SetActorValue("WaitingForPlayer", 0)
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
          ;DismissedFollowerActor.StopCombatAlarm()
          DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)
          DismissedFollowerActor.SetPlayerTeammate(false)
          DismissedFollowerActor.RemoveFromFaction(CurrentHireling)
          DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)
          FollowerRecruited.SetValue(0)
          AK69MegaraConfigQuest.Stop()
          AK69MegaraSkyrimQuests.Stop()
          AK69MegaraDismissedQuest.Start()
          HirelingRehireScript.DismissHireling(DismissedFollowerActor.GetActorBase())

          If iSayLine == 1
          iFollowerDismiss = 1
          DismissedFollowerActor.EvaluatePackage()
          Utility.Wait(2)
          EndIf
          ;Megara.Clear()
          iFollowerDismiss = 0
     EndIf
	  
EndFunction

;This is the function to call in dialogue
Function CozyTeleport()
AK69CozyRecallMarker.MoveTo(PlayerREF)
CompanionTeleport()
EndFunction

Function CompanionTeleport()
if AK69KatanaRecruited.GetValue() == 1 && AK69KatanaRelax.GetValue() == 0
     KatanaActor.MoveTo(AK69CozyMarker1)
endif
if AK69ShaleRecruited.GetValue() == 1 && AK69ShaleRelax.GetValue() == 0    
     ShaleActor.MoveTo(AK69CozyMarker1)
endif
CozyTele()
MegaraActor.MoveTo(AK69CozyMarker1)
EndFunction

;This is the function to call when you wanna go back
Function CompanionRecall()
if AK69KatanaRecruited.GetValue() == 1 && AK69KatanaRelax.GetValue() == 0
     KatanaActor.MoveTo(AK69CozyRecallMarker)
endif
if AK69ShaleRecruited.GetValue() == 1 && AK69ShaleRelax.GetValue() == 0    
     ShaleActor.MoveTo(AK69CozyRecallMarker)
endif
CozyRecall()
MegaraActor.MoveTo(AK69CozyRecallMarker)
EndFunction

Function CozyTele()
PlayerRef.PlaceAtMe(AK69CozyFXActivator)	
PlayerRef.MoveTo(AK69KatanaSQMarker)
PlayerRef.PlaceAtMe(AK69CozyFXActivator)	
EndFunction
     
Function CozyRecall()
PlayerRef.PlaceAtMe(AK69CozyFXActivator)	
PlayerRef.MoveTo(AK69CozyRecallMarker)
PlayerRef.PlaceAtMe(AK69CozyFXActivator)	
EndFunction

bool property Solitude = false auto conditional
bool property SolitudeSis = false auto conditional
bool property Dragonsreach = false auto conditional
bool property Whiterun = false auto conditional