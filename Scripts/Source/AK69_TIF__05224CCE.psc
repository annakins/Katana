;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__05224CCE Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
AK69ShadowVar.SetValue(0)
AK69KatanaWorkWithPlayer.SetValue(0)
AK69MegaraWorkWithPlayer.SetValue(0)
Game.GetPlayer().RemoveSpell(AK69NightingaleShadow)
Katana.RemoveSpell(AK69NightingaleShadow)
Megara.RemoveSpell(AK69NightingaleShadow)
Game.GetPlayer().RemovePerk(AK69ShadowPlayerPerk)
AK69ShadowQuest.Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69ShadowVar  Auto  

GlobalVariable Property AK69KatanaWorkWithPlayer  Auto  

GlobalVariable Property AK69MegaraWorkWithPlayer  Auto  

Quest Property AK69ShadowQuest  Auto  

Perk Property AK69ShadowPlayerPerk  Auto  

SPELL Property AK69NightingaleShadow  Auto  

Actor Property Katana  Auto  

Actor Property Megara  Auto  
