;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__0700590A Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69Concussion.Cast(akspeaker, Game.GetPlayer())
Game.GetPlayer().RemoveItem(TundraCotton)
Debug.SendAnimationEvent(Megara, "IdleMagic_01")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property AK69Concussion  Auto  

Ingredient Property TundraCotton  Auto  

Actor Property Megara  Auto  
