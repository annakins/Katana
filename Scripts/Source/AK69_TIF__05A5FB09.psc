;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname AK69_TIF__05A5FB09 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Shale.Additem(EnchSteelDaggerMagicka01, 1)
GetOwningQuest().SetStage(201)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

WEAPON Property EnchSteelDaggerMagicka01  Auto  

Actor Property Shale  Auto  
