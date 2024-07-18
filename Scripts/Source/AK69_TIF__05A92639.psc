;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69_TIF__05A92639 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Float EndLocY
Float EndLocX

Float TargetAngle = akSpeaker.GetAngleZ()
EndLocX = WB_DistanceInFront * math.Sin(TargetAngle)
EndLocY = WB_DistanceInFront * math.Cos(TargetAngle)
Shade.MoveTo(akSpeaker as objectreference, EndLocX, EndLocY, 0 as Float, true)
Shade.SetAngle(akSpeaker.GetAngleX(), akSpeaker.GetAngleY(), TargetAngle)    
Shade.AddSpell(AK69SpectralWarbandFXSpell, true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property Shade  Auto  

SPELL Property AK69SpectralWarbandFXSpell  Auto  

Float Property WB_DistanceInFront  Auto  
