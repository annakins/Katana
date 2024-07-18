;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__057FFB84 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69PQLockedOut.SetValue(1)
AK69Katana.AddToFaction(CurrentFollowerFaction)
(AK69KatanaFollowQuest as AK69Katanacontroller).SetFollower(AK69Katana as ObjectReference)
self.GetOwningQuest().SetCurrentStageID(15)
AK69Katana.SetRelationshipRank(game.GetPlayer(), 3)
AK69PQLockedOutMSG.Show()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69PQLockedOut  Auto  

Actor Property AK69Katana  Auto  

Quest Property AK69KatanaFollowQuest  Auto  

Message Property AK69PQLockedOutMSG  Auto  

Faction Property CurrentFollowerFaction  Auto  
