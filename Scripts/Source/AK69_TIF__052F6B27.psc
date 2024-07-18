;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__052F6B27 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69ShaleHoldBackNO.Show()
AK69ShaleWorkWithPlayer.SetValue(0 as float)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Message Property AK69ShaleHoldBackNO  Auto  

GlobalVariable Property AK69ShaleWorkWithPlayer  Auto  
