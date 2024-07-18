;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69_TIF__05985DD4 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
akSpeaker.EvaluatePackage()
akSpeaker.PushActorAway(akSpeaker, 0.01)  
Debug.SendAnimationEvent(akSpeaker, "IdleStop_Loose")
akSpeaker.AddToFaction(CurrentFollowerFaction)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property ShaleActor  Auto  

Faction Property CurrentFollowerFaction  Auto  
