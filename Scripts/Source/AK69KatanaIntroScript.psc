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
ObjectReference Property AK69CozyBed1 Auto  
ObjectReference Property AK69CozyBed2 Auto  
ObjectReference Property AK69CozyBed3 Auto  
ObjectReference Property AK69CozyBed4 Auto  
ObjectReference Property AK69CozyCookingPot Auto  
ObjectReference Property AK69CozyCrate Auto  
ObjectReference Property AK69CozyEmbers Auto  
ObjectReference Property AK69CozyLustyBook1 Auto  
ObjectReference Property AK69CozyLustyBook2 Auto  
ObjectReference Property AK69CozyMead1 Auto  
ObjectReference Property AK69CozyMush1 Auto  
ObjectReference Property AK69CozyMush2 Auto  
ObjectReference Property AK69CozyPlant1 Auto  
ObjectReference Property AK69CozySpit Auto  
ObjectReference Property AK69CozyStone Auto  
ObjectReference Property AK69CozyWine1 Auto  
ObjectReference Property AK69CozyRecallMarker Auto  

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
CozyEnable()
AK69PQSkipSuccessMSG.Show()
EndFunction

Function CozyEnable()
AK69CozyBed1.Enable() 
AK69CozyBed2.Enable()  
AK69CozyBed3.Enable() 
AK69CozyBed4.Enable()
AK69CozyCookingPot.Enable()  
AK69CozyCrate.Enable()  
AK69CozyEmbers.Enable()  
AK69CozyLustyBook1.Enable()  
AK69CozyLustyBook2.Enable()  
AK69CozyMead1.Enable() 
AK69CozyMush1.Enable()
AK69CozyMush2.Enable()
AK69CozyPlant1.Enable() 
AK69CozySpit.Enable()
AK69CozyStone.Enable()
AK69CozyWine1.Enable()  
AK69CozyRecallMarker.Enable()
EndFunction