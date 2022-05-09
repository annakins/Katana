;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname AK69TIF__05E48377 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Debug.SendAnimationEvent(River, "IdleMagic_01")
Paralysis.Play(Game.GetPlayer())
Paralysis.Play(Katana)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Game.DisablePlayerControls(true, true, false, false, true, false, true, false)
Katana.SetRestrained()
GetOwningQuest().SetStage(230)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property River  Auto  

Actor Property Katana  Auto  

EffectShader Property Paralysis  Auto  
