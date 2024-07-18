Scriptname AK69KatanaController extends Quest  Conditional

;This is where Katana's memory is stored.

Actor Property PlayerREF Auto
Actor Property KatanaActor Auto
ReferenceAlias Property Katana Auto
Faction Property DismissedFollowerFaction Auto
Faction Property CurrentHireling Auto
Message Property  FollowerDismissMessage Auto
Message Property  FollowerDismissMessageWedding Auto
Message Property  FollowerDismissMessageCompanions Auto
Message Property  FollowerDismissMessageCompanionsMale Auto
Message Property  FollowerDismissMessageCompanionsFemale Auto
Message Property  FollowerDismissMessageWait Auto
SetHirelingRehire Property HirelingRehireScript Auto
GlobalVariable Property KatanaRelaxVar Auto
GlobalVariable Property FollowerRecruited Auto
Int Property iFollowerDismiss Auto Conditional
GlobalVariable property AK69DontHateMe Auto
GlobalVariable property AK69ShadowVar Auto
GlobalVariable Property AK69KatanaHomeVar Auto
ObjectReference Property HomeMarker auto
ObjectReference Property WinkingSkeeverMarker auto
Location Property SolitudeLocation Auto
Activator Property InVis Auto

Quest Property AK69KatanaPlayerReactionsQuest auto
Quest Property KatanaPQDialogue auto
Quest Property AK69KatanaSkyrimQuests auto
Quest Property AK69KatanaDismissedQuest auto

GlobalVariable Property AK69KatanaWanderKillVar Auto
Quest Property AK69ShadowQuest Auto

Int Property AK69Quality Auto conditional
bool Property SaidHoarding30books = false auto conditional
bool Property RiftenApplePie = false auto conditional

Function SetFollower(ObjectReference FollowerRef)
     actor FollowerActor = FollowerRef as Actor
     FollowerActor.RemoveFromFaction(DismissedFollowerFaction)
     If FollowerActor.GetRelationshipRank(PlayerREF) <3 && FollowerActor.GetRelationshipRank(PlayerREF) >= 0
          FollowerActor.SetRelationshipRank(PlayerREF, 3)
     EndIf
     FollowerActor.SetPlayerTeammate()
     Katana.ForceRefTo(FollowerActor)
     FollowerActor.EvaluatePackage()
     FollowerRecruited.SetValue(1)
	 AK69KatanaConfigQuest.Start()
	 AK69KatanaPlayerReactionsQuest.Start()
	 KatanaPQDialogue.Start()
	 AK69KatanaSkyrimQuests.Start()
	 AK69KatanaDismissedQuest.Stop()
EndFunction

Function FollowerWait()
     actor FollowerActor = Katana.GetReference() as Actor
     KatanaRelaxVar.SetValue(1)
	 FollowerActor.SetActorValue("WaitingForPlayer", 1)
     SetObjectiveDisplayed(10, abforce = true)
	 FollowerActor.EvaluatePackage()
	 FavorOff()
EndFunction

Function FollowerFollow()
     actor FollowerActor = Katana.GetReference() as Actor
	 KatanaRelaxVar.SetValue(0)
	 FollowerActor.SetActorValue("WaitingForPlayer", 0)
     SetObjectiveDisplayed(10, abdisplayed = false)
     FollowerActor.EvaluatePackage()
EndFunction

Function DismissFollower(Int iMessage = 0, Int iSayLine = 1)	
	
	If KatanaActor.IsDead() == False
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
          actor DismissedFollowerActor = Katana.GetReference() as Actor
          ;DismissedFollowerActor.StopCombatAlarm()
          DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)
          DismissedFollowerActor.SetPlayerTeammate(false)
          DismissedFollowerActor.RemoveFromFaction(CurrentHireling)
          DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)
          FollowerRecruited.SetValue(0)
		  AK69KatanaConfigQuest.Stop()
		  AK69KatanaPlayerReactionsQuest.Stop()
		  KatanaPQDialogue.Stop()
		  AK69KatanaSkyrimQuests.Stop()
		  AK69KatanaDismissedQuest.Start()
          HirelingRehireScript.DismissHireling(DismissedFollowerActor.GetActorBase())
          If iSayLine == 1
               iFollowerDismiss = 1
              DismissedFollowerActor.EvaluatePackage()
             Utility.Wait(2)
          EndIf
            ;Katana.Clear()
            iFollowerDismiss = 0
     EndIf
	 If AK69KatanaHomeVar.GetValue() == 1 && !KatanaActor.IsInCombat()
		KatanaGoHome()
	 endif
	if AK69KatanaHomeVar.GetValue() == 0 && !KatanaActor.IsInCombat()
		KatanaGoWinkingSkeever()
	endif
	FavorOff()
EndFunction

Function KatanaGoHome()
	If KatanaActor.GetDistance(HomeMarker) >= 1000
		Debug.SendAnimationEvent(KatanaActor, "IdleCleanSword")
		Utility.Wait(2)
		KatanaActor.setAlpha(0.1)
		Utility.Wait(0.3)
		KatanaActor.PlaceAtMe(InVis)	
		KatanaActor.MoveTo(HomeMarker)
		KatanaActor.PlaceAtMe(InVis)	
		Utility.Wait(0.3)   
		KatanaActor.setAlpha(1)
	endif
EndFunction

Function KatanaGoWinkingSkeever()
	If KatanaActor.GetDistance(WinkingSkeeverMarker) >= 1000 && !KatanaActor.IsInLocation(SolitudeLocation)
		Debug.SendAnimationEvent(KatanaActor, "IdleCleanSword")
		Utility.Wait(2)
		KatanaActor.setAlpha(0.1)
		Utility.Wait(0.3)
		KatanaActor.PlaceAtMe(InVis)	
		KatanaActor.MoveToMyEditorLocation()
		KatanaActor.PlaceAtMe(InVis)	
		Utility.Wait(0.3)   
		KatanaActor.setAlpha(1)
	endif
EndFunction

Function FavorOff()
AK69KatanaWanderKillVar.SetValue(0)
if AK69ShadowVar.GetValue() == 1
AK69ShadowQuest.SetStage(10)
endif
;Debug.Notification ("Favor stuff is off")
EndFunction

;==============Katana Relationship System==============

Quest Property AK69KatanaConfigQuest Auto

;property Warm = 6.0 auto conditional hidden
;property Friendly = 2.0 auto conditional hidden
;property Civil = 0.0 auto conditional hidden
;property Cautious = -5.0 auto conditional hidden

;Does favors when relationship is at 2.
;Trades at 0.
;Waits at 0.

;Data Stuff

;; BEGIN ASSESSMENTS
;  Affects opinion of the player over the course of the relationship
float MinRating = -5.0
float MaxRating = 10.0

float[] ak69relationship

float __ak69relationshiplevel = -5.0 conditional
float Property PlayerAssessmentRelationship
	float function get()
		return __ak69relationshiplevel
	endfunction
	function set(float newValue)
		__ak69relationshiplevel = ClampFloat(newValue, MinRating, MaxRating)
	endfunction
EndProperty

;; END ASSESSMENTS

float __assessmentAnchorRelationship = 5.0

;; BEGIN UTILITY FUNCTIONS

int Function ClampInt(int value, int min, int max)
	if (value > max)
		value = max
	endif
	if (value < min)
		value = min
	endif
	return value
EndFunction

float Function ClampFloat(float value, float min, float max)
	if (value > max)
		value = max
	endif
	if (value < min)
		value = min
	endif
	return value
EndFunction

Function ModAssessment(int assessmentIndex, float amount)
	if (assessmentIndex == 1)
		PlayerAssessmentRelationship += amount
	endif
EndFunction

;;; ASSESSMENT INCREMENTS AND FUNCTIONS
float __minorAssessment = 0.05
float __moderateAssessment = 0.2
float __majorAssessment = 0.5
float __PQAssessment = 3.5
float __PQSkipSuccessAssessment = 5.0

Function IncreaseRateMinor()
	ModAssessment(1, __minorAssessment)
	EndFunction

Function IncreaseRateModerate()
	ModAssessment(1, __moderateAssessment)
EndFunction

Function IncreaseRateMajor()
	ModAssessment(1, __majorAssessment)
EndFunction

Function IncreaseRatePQ()
	ModAssessment(1, __PQAssessment)
EndFunction

Function IncreaseRatePQSkipSuccess()
	ModAssessment(1, __PQSkipSuccessAssessment)
EndFunction


Function DecreaseRateMinor()
	If AK69DontHateMe.GetValue() == 0
	ModAssessment(1, -__minorAssessment)
	Endif
EndFunction

Function DecreaseRateModerate()
	If AK69DontHateMe.GetValue() == 0
	ModAssessment(1, -__moderateAssessment)
	Endif
EndFunction

Function DecreaseRateMajor()
	If AK69DontHateMe.GetValue() == 0
	ModAssessment(1, -__majorAssessment)
	Endif
EndFunction

;;; END ASSESSMENT INCREMENTS AND FUNCTIONS

int __historySize = 10  						

bool __isSetup = false
Function Setup(int forceNPC=0)

	if (__isSetup)
		return
	endif
	__isSetup = true	
	ak69relationship = new float[10]	

	int count = 0
	while (count < __historySize)
		ak69relationship[count] = __assessmentAnchorRelationship		
		count += 1
	endwhile
	RegisterForSingleUpdate(SecondsBetweenPeriodicUpdates)
EndFunction

int Property SecondsBetweenPeriodicUpdates auto

Event OnUpdate()
	int count = 0
	while (count < (__historySize - 1))	
		ak69relationship[count] = ak69relationship[count+1]
		count += 1
	endwhile
	ak69relationship[__historySize - 1] = __ak69relationshiplevel	
	RegisterForSingleUpdate(SecondsBetweenPeriodicUpdates)
EndEvent

bool property BBorn = false auto conditional
bool property Chillfurrow = false auto conditional
bool property DBSanc = false auto conditional
bool property MarkSbloodInn = false auto conditional
bool property MarkTemple = false auto conditional
bool property Morthal = false auto conditional
bool property BardsCol = false auto conditional
bool property Bannered = false auto conditional