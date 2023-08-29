;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__0529E53D Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69ShadowVar.SetValue(1)
AK69KatanaWorkWithPlayer.SetValue(1)
AK69MegaraWorkWithPlayer.SetValue(1)
Game.GetPlayer().AddPerk(AK69ShadowPlayerPerk)
AK69ShadowQuest.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69ShadowVar  Auto  

GlobalVariable Property AK69KatanaWorkWithPlayer  Auto  

GlobalVariable Property AK69MegaraWorkWithPlayer  Auto  

Quest Property AK69ShadowQuest  Auto  

Perk Property AK69ShadowPlayerPerk  Auto  


