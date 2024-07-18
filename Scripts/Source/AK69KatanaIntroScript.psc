Scriptname AK69KatanaIntroScript extends Quest  

GlobalVariable Property AK69PQSkipSuccessVar  Auto  
GlobalVariable Property AK69SkipEveryQuestVar  Auto  
Actor Property AK69Katana  Auto  
Faction Property CurrentFollowerFaction  Auto  
Quest Property AK69KatanaFollowQuest  Auto  
Message Property AK69PQSkipSuccessMSG  Auto  
ObjectReference Property MegaraRef  Auto  
ObjectReference Property ShaleRef  Auto  
GlobalVariable Property AK69KatanaPQCompleted  Auto  
GlobalVariable Property AK69CQCompleted  Auto  
GlobalVariable Property AK69EECompleted  Auto  
GlobalVariable Property AK69KECompleted  Auto  
GlobalVariable Property AK69SaSCompleted  Auto  
GlobalVariable Property AK69SQCompleted  Auto  
GlobalVariable Property AK69TRLCompleted  Auto  
Quest Property MegaraRecruitQuest  Auto  
Quest Property AK69ShaleTracker  Auto  
ObjectReference Property AK69DrunkenHuntsmanXMarker  Auto  
ObjectReference Property ReadingIdleDrunkenHuntsmanMarker  Auto  
ObjectReference Property AK69SilverBloodInnXMarker  Auto  
ObjectReference Property AK69BeeandBarbXMarker  Auto  
ObjectReference Property ReadingIdleBeeandBarbMarker  Auto  
ObjectReference Property AK69FrozenHearthXMarker  Auto  

Function SkipAll()
AK69PQSkipSuccessVar.SetValue(1)
AK69SkipEveryQuestVar.SetValue(1)
AK69Katana.AddToFaction(CurrentFollowerFaction)
(AK69KatanaFollowQuest as AK69Katanacontroller).SetFollower(AK69Katana as ObjectReference)
SetCurrentStageID(15)
AK69Katana.SetRelationshipRank(game.GetPlayer(), 3)
MegaraRef.Enable()
ShaleRef.Enable()
ShaleRef.MoveTo(AK69BeeandBarbXMarker)
(AK69KatanaFollowQuest as AK69Katanacontroller).IncreaseRatePQSkipSuccess()
AK69KatanaPQCompleted.SetValue(1)
AK69CQCompleted.SetValue(1)
AK69EECompleted.SetValue(1)
AK69KECompleted.SetValue(1)
AK69SaSCompleted.SetValue(1)
AK69SQCompleted.SetValue(1)
AK69TRLCompleted.SetValue(1)
MegaraRecruitQuest.Start()
AK69ShaleTracker.Start()
AK69DrunkenHuntsmanXMarker.delete()
ReadingIdleDrunkenHuntsmanMarker.Delete()
AK69SilverBloodInnXMarker.Delete()
ReadingIdleBeeandBarbMarker.Delete()
AK69FrozenHearthXMarker.Delete()
AK69PQSkipSuccessMSG.Show()
EndFunction