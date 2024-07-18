;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69_TIF__050F1E7A Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69ShaleHomeVar.SetValue(0)
AK69ShaleHomeXMarker.Reset()
AK69HomeResetMSG.Show()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69ShaleHomeVar  Auto  

Message Property AK69HomeResetMSG  Auto  

ObjectReference Property AK69ShaleHomeXMarker  Auto  
