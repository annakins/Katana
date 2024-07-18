;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__05263C21 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
HomeMarker.MoveTo(Megara)
HomeVar.SetValue(1)
AK69MegaraSetHomeMSG.Show()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property HomeMarker  Auto  

GlobalVariable Property HomeVar  Auto  

Actor Property Megara  Auto  

Message Property AK69MegaraSetHomeMSG  Auto  
