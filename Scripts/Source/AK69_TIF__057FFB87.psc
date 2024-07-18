;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__057FFB87 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69PQSkipSuccessVar.SetValue(1)
AK69Katana.AddToFaction(CurrentFollowerFaction)
(AK69KatanaFollowQuest as AK69Katanacontroller).SetFollower(AK69Katana as ObjectReference)
self.GetOwningQuest().SetCurrentStageID(15)
AK69Katana.SetRelationshipRank(game.GetPlayer(), 3)
MegaraRef.Enable()
(AK69KatanaFollowQuest as AK69Katanacontroller).IncreaseRatePQSkipSuccess()
AK69KatanaPQCompleted.SetValue(1)
MegaraRecruitQuest.Start()
AK69DrunkenHuntsmanXMarker.delete()
ReadingIdleDrunkenHuntsmanMarker.Delete()
AK69SilverBloodInnXMarker.Delete()
ReadingIdleBeeandBarbMarker.Delete()
AK69FrozenHearthXMarker.Delete()
AK69PQSkipSuccessMSG.Show()
;AK69BeeandBarbXMarker.Disable()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69PQSkipSuccessVar  Auto  

Actor Property AK69Katana  Auto  

Faction Property CurrentFollowerFaction  Auto  

Quest Property AK69KatanaFollowQuest  Auto  

Message Property AK69PQSkipSuccessMSG  Auto  

ObjectReference Property MegaraRef  Auto  

GlobalVariable Property AK69KatanaPQCompleted  Auto  

Quest Property MegaraRecruitQuest  Auto  

ObjectReference Property AK69DrunkenHuntsmanXMarker  Auto  

ObjectReference Property ReadingIdleDrunkenHuntsmanMarker  Auto  

ObjectReference Property AK69SilverBloodInnXMarker  Auto  

ObjectReference Property AK69BeeandBarbXMarker  Auto  

ObjectReference Property ReadingIdleBeeandBarbMarker  Auto  

ObjectReference Property AK69FrozenHearthXMarker  Auto  
