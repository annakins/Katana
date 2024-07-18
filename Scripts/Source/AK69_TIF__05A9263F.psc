;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69_TIF__05A9263F Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
akSpeaker.PlayIdleWithTarget(pa_1HMKillMoveBackStab, River)
River.Kill(akSpeaker)
Utility.Wait(3.0)

GetOwningQuest().SetStage(270)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
River.GetActorBase().setEssential(false)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Idle Property pa_1HMKillMoveBackStab  Auto  

Actor Property River  Auto  

Scene Property AK69TRLShadeScene2  Auto  
