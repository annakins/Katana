;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__053DA953 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Game.GetPlayer().PlaceAtMe(AK69HealFXActivator)
Game.GetPlayer().RestoreActorValue("Health", 100 as Float)
Debug.SendAnimationEvent(akSpeaker, "IdleMagic_01")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Activator Property AK69HealFXActivator  Auto  
