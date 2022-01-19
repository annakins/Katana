Scriptname AK69KatanaController extends Quest  Conditional

;This is where Katana's memory is stored.


;Controller Stuff
Actor Property PlayerREF Auto

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

GlobalVariable Property FollowerRecruited Auto

Int Property iFollowerDismiss Auto Conditional




;Controller Things
 
 

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

EndFunction

 

Function FollowerWait()

     actor FollowerActor = Katana.GetActorRef() as Actor

     FollowerActor.SetActorValue("WaitingForPlayer", 1)

     SetObjectiveDisplayed(10, abforce = true)

EndFunction

 

Function FollowerFollow()

     actor FollowerActor = Katana.GetActorRef() as Actor

     FollowerActor.SetActorValue("WaitingForPlayer", 0)

     SetObjectiveDisplayed(10, abdisplayed = false)

     FollowerActor.EvaluatePackage()

EndFunction

 

Function DismissFollower(Int iMessage = 0, Int iSayLine = 1)

     If Katana && Katana.GetActorReference().IsDead() == False

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

          actor DismissedFollowerActor = Katana.GetActorRef() as Actor

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

             Katana.Clear()

             iFollowerDismiss = 0

     EndIf
	  AK69KatanaConfigQuest.Stop()

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


Function IncreaseRateMinor()
	ModAssessment(1, __minorAssessment)
	
EndFunction

Function IncreaseRateModerate()
	ModAssessment(1, __moderateAssessment)
	
EndFunction

Function IncreaseRateMajor()
	ModAssessment(1, __majorAssessment)
	
EndFunction


Function DecreaseRateMinor()
	ModAssessment(1, -__minorAssessment)
	
EndFunction

Function DecreaseRateModerate()
	ModAssessment(1, -__moderateAssessment)
	
EndFunction

Function DecreaseRateMajor()
	ModAssessment(1, -__majorAssessment)
	
EndFunction


;;; END ASSESSMENT INCREMENTS AND FUNCTIONS


int __historySize = 10  ; if this changes, make sure to update 
						;   array declarations below in Setup()


bool __isSetup = false
Function Setup(int forceNPC=0)
	; make sure this only gets called once
	if (__isSetup)
		return
	endif
	__isSetup = true
	
	ak69relationship = new float[10]
	

	; fill dem arrays
	int count = 0
	while (count < __historySize)
		; everything starts at initial anchor values
	
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

UpdateAllStats()
	
	RegisterForSingleUpdate(SecondsBetweenPeriodicUpdates)
EndEvent


;Relationship Stuff

;==============Katana QueryStat==============
;==============INCREASE==============
int property PStat_LocationsDiscovered = 0 auto hidden
int property PStat_DungeonsCleared = 0 auto hidden
int property PStat_DaysPassed = 0 auto hidden
int property PStat_BrawlsWon = 0 auto hidden 
int property PStat_StandingStones = 0 auto hidden
int property PStat_ChestsLooted = 0 auto hidden
int property PStat_SkillIncrease = 0 auto hidden
int property PStat_SkillBooksRead = 0 auto hidden
int property PStat_Training = 0 auto hidden
int property PStat_BooksRead = 0 auto hidden
int property PStat_HousesOwned = 0 auto hidden
int property PStat_QuestsCompleted = 0 auto hidden
int property PStat_CritStrikes = 0 auto hidden
int property PStat_SneakAttacks = 0 auto hidden
int property PStat_Backstabs = 0 auto hidden
int property PStat_Disarmed = 0 auto hidden
int property PStat_UndeadKilled = 0 auto hidden
int property PStat_DaedraKilled = 0 auto hidden
int property PStat_AutomatonsKilled = 0 auto hidden
int property PStat_PeopleKilled = 0 auto hidden
int property PStat_SpellsLearned = 0 auto hidden
int property PStat_DragonSoulsCollected = 0 auto hidden
int property PStat_WordsOfPowerLearned = 0 auto hidden
int property PStat_ShoutsLearned = 0 auto hidden
int property PStat_ShoutsMastered = 0 auto hidden
int property PStat_WeapsImproved = 0 auto hidden
int property PStat_WeapsMade = 0 auto hidden
int property PStat_ArmorImproved = 0 auto hidden
int property PStat_ArmorMade = 0 auto hidden
int property PStat_PoisonsMixed = 0 auto hidden
int property PStat_PoisonsUsed = 0 auto hidden
int property PStat_Persuasions = 0 auto hidden
int property PStat_EastmarchBounty = 0 auto hidden
int property PStat_FalkreathBounty = 0 auto hidden
int property PStat_HaafingarBounty = 0 auto hidden
int property PStat_HjaalmarchBounty = 0 auto hidden
int property PStat_ThePaleBounty = 0 auto hidden
int property PStat_TheReachBounty = 0 auto hidden
int property PStat_TheRiftBounty = 0 auto hidden
int property PStat_TribalOrcsBounty = 0 auto hidden
int property PStat_WhiterunBounty = 0 auto hidden
int property PStat_WinterholdBounty = 0 auto hidden
int property PStat_LocksPicked = 0 auto hidden

;==============DECREASE==============

int property PStat_Murders = 0 auto hidden
int property PStat_HorsesStolen = 0 auto hidden
int property PStat_Tresspasses = 0 auto hidden
int property PStat_Bribes = 0 auto hidden
int property PStat_PocketsPicked = 0 auto hidden
int property PStat_ItemsPickpocketed = 0 auto hidden
int property PStat_ItemsStolen = 0 auto hidden

;==============END Katana QueryStat==============

function UpdateAllStats()
	
	PStat_LocationsDiscovered = Game.QueryStat("Locations Discovered")
	PStat_DungeonsCleared = Game.QueryStat("Dungeons Cleared")
	PStat_DaysPassed = Game.QueryStat("Days Passed")
	PStat_BrawlsWon = Game.QueryStat("Brawls Won")
	PStat_StandingStones = Game.QueryStat("Standing Stones Found")
	PStat_ChestsLooted = Game.QueryStat("Chests Looted")
	PStat_SkillIncrease = Game.QueryStat("Skill Increases")
	PStat_SkillBooksRead = Game.QueryStat("Skill Books Read")
	PStat_Training = Game.QueryStat("Training Sessions")
	PStat_BooksRead = Game.QueryStat("Books Read")
	PStat_HousesOwned = Game.QueryStat("Houses Owned")
	PStat_QuestsCompleted = Game.QueryStat("Quests Completed")
	PStat_CritStrikes = Game.QueryStat("Critical Strikes")
	PStat_SneakAttacks = Game.QueryStat("Sneak Attacks")
	PStat_Backstabs = Game.QueryStat("Backstabs")
	PStat_Disarmed = Game.QueryStat("Weapons Disarmed")
	PStat_UndeadKilled = Game.QueryStat("Undead Killed")
	PStat_DaedraKilled = Game.QueryStat("Daedra Killed")
	PStat_AutomatonsKilled = Game.QueryStat("Automatons Killed")
	PStat_PeopleKilled = Game.QueryStat("People Killed")
	PStat_SpellsLearned = Game.QueryStat("Spells Learned")
	PStat_DragonSoulsCollected = Game.QueryStat("Dragon Souls Collected")
	PStat_WordsOfPowerLearned = Game.QueryStat("Words Of Power Learned")
	PStat_ShoutsLearned = Game.QueryStat("Shouts Learned")
	PStat_ShoutsMastered = Game.QueryStat("Shouts Mastered")
	PStat_WeapsImproved = Game.QueryStat("Weapons Improved")
	PStat_WeapsMade = Game.QueryStat("Weapons Made")
	PStat_ArmorImproved = Game.QueryStat("Armor Improved")
	PStat_ArmorMade = Game.QueryStat("Armor Made")
	PStat_Persuasions = Game.QueryStat("Persuasions")
	PStat_PoisonsMixed = Game.QueryStat("Poisons Mixed")
	PStat_PoisonsUsed = Game.QueryStat("Poisons Used")
	PStat_EastmarchBounty = Game.QueryStat("Eastmarch Bounty")
	PStat_FalkreathBounty = Game.QueryStat("Falkreath Bounty")
	PStat_HaafingarBounty = Game.QueryStat("Haafingar Bounty")
	PStat_HjaalmarchBounty = Game.QueryStat("Hjaalmarch Bounty")
	PStat_ThePaleBounty = Game.QueryStat("The Pale Bounty")
	PStat_TheReachBounty = Game.QueryStat("The Reach Bounty")
	PStat_TheRiftBounty = Game.QueryStat("The Rift Bounty")
	PStat_TribalOrcsBounty = Game.QueryStat("Tribal Orcs Bounty")
	PStat_WhiterunBounty = Game.QueryStat("Whiterun Bounty")
	PStat_WinterholdBounty = Game.QueryStat("Winterhold Bounty")
	PStat_LocksPicked = Game.QueryStat("Locks Picked")
	
	
	
	PStat_Murders = Game.QueryStat("Murders")
	PStat_HorsesStolen = Game.QueryStat("Horses Stolen")
	PStat_Tresspasses = Game.QueryStat("Tresspasses")
	PStat_Bribes = Game.QueryStat("Bribes")
	PStat_PocketsPicked = Game.QueryStat("Pockets Picked")
	PStat_ItemsPickpocketed = Game.QueryStat("Items Pickpocketed")
	PStat_ItemsStolen = Game.QueryStat("Items Stolen")

endFunction