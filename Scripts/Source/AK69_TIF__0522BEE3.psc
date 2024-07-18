;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__0522BEE3 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
HomeMarker.MoveTo(Shale)
HomeVar.SetValue(1)
AK69ShaleSetHomeMSG.Show()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property HomeMarker  Auto  

GlobalVariable Property HomeVar  Auto  

Actor Property Shale  Auto  

Message Property AK69ShaleSetHomeMSG  Auto  
