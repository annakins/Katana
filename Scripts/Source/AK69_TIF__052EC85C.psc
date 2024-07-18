;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69_TIF__052EC85C Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
HomeMarker.MoveTo(Katana)
HomeVar.SetValue(1)
AK69KatanaSetHomeMSG.Show()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property HomeMarker  Auto  

Actor Property Katana  Auto  

GlobalVariable Property HomeVar  Auto  

Message Property AK69KatanaSetHomeMSG  Auto  
