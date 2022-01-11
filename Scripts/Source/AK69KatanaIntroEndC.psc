;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69KatanaIntroEndC Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69Katana.AddToFaction(CurrentFollowerFaction)
	(AK69KatanaFollowQuest as AK69Katanacontroller).SetFollower(AK69Katana as ObjectReference)
	self.GetOwningQuest().SetCurrentStageID(15)
	AK69Katana.SetRelationshipRank(game.GetPlayer(), 3)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Faction Property CurrentFollowerFaction  Auto  

Quest Property AK69KatanaFollowQuest  Auto  

Actor Property AK69Katana  Auto  

Quest Property DialogueFollower  Auto  
