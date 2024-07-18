;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__07014C1F Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69BrokenBones.Cast(akspeaker, Game.GetPlayer())
Game.GetPlayer().RemoveItem(TundraCotton)
Debug.SendAnimationEvent(AK69Megara, "IdleMagic_01")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment



SPELL Property AK69BrokenBones  Auto  

Ingredient Property TundraCotton  Auto  

Actor Property AK69Megara  Auto  
