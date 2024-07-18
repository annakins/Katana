;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__049B1C3D Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
HomeVar.SetValue(0)
HomeMarker.Reset()
AK69HomeResetMSG.Show()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property HomeMarker  Auto  

GlobalVariable Property HomeVar  Auto  

Message Property AK69HomeResetMSG  Auto  
