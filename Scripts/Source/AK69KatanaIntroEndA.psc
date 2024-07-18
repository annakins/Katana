;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname AK69KatanaIntroEndA Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69Katana.AddToFaction(CurrentFollower)
	(AK69KatanaFollowQuest as AK69Katanacontroller).SetFollower(AK69Katana as ObjectReference)
	self.GetOwningQuest().SetCurrentStageID(15)
	AK69Katana.SetRelationshipRank(game.GetPlayer(), 3)
AK69KatanaTrustMessageIntro.Show()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Faction Property CurrentFollower  Auto  

Quest Property AK69KatanaFollowQuest  Auto  

Actor Property AK69Katana  Auto  

Quest Property DialogueFollower  Auto  



Message Property AK69KatanaTrustMessageIntro  Auto  
