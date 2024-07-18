;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69_TIF__0597BBCB Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ShaleActor.SetRestrained(false)
AK69ShaleSTOPUseWoundedIdleVar.SetValue(1)
ShaleActor.SetOutfit(AK69ShaleOutfit_B)
Utility.Wait(0.1)
ShaleActor.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69ShaleSTOPUseWoundedIdleVar  Auto   

ObjectReference Property ShaleREF  Auto  

Actor Property ShaleActor  Auto  

Outfit Property AK69ShaleOutfit_B  Auto  
