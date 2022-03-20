;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69TIF__05B13ECB Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
game.getPlayer().addItem(Gold001, 3000)
(GetOwningQuest() as AK69KatanaPersonalQuestData).playerIsGreedy = true
(GetOwningQuest() as AK69KatanaPersonalQuestData).playerIsLoyal = false
GetOwningQuest().setstage(170)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001  Auto  
