;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69_TIF__04A0CF4C Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69KatanaHoldBack.Show()
AK69KatanaWorkWithPlayer.SetValue(1 as float)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment



GlobalVariable Property AK69KatanaWorkWithPlayer  Auto  

Message Property AK69KatanaHoldBack  Auto  
