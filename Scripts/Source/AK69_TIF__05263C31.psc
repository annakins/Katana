;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69_TIF__05263C31 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Megara.RemoveItem(Garlic)
Debug.SendAnimationEvent(Megara, "IdleMagic_01")
CureDiseaseSpell.Cast(game.GetPlayer(), game.GetPlayer())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property CureDiseaseSpell  Auto  

Actor Property Megara  Auto  


Ingredient Property Garlic  Auto  
