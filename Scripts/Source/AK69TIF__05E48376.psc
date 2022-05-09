;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname AK69TIF__05E48376 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Game.DisablePlayerControls(true, true, false, false, true, false, true, false)
Katana.SetRestrained()
GetOwningQuest().SetStage(230)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Debug.SendAnimationEvent(River, "IdleMagic_01")
Paralysis.Play(Game.GetPlayer())
Paralysis.Play(Katana)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property River  Auto  

Actor Property Katana  Auto  

EffectShader Property Paralysis  Auto  
