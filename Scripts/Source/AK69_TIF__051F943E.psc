;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__051F943E Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Debug.SendAnimationEvent(Katana, "IdleMQ201Drink")
Debug.SendAnimationEvent(Megara, "IdleMQ201Drink")

GetOwningQuest().SetStage(130)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property Katana  Auto  

Actor Property Megara  Auto  
