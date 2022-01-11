;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname AK69KatanaFeatherFrag Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
game.getplayer().additem(AK69KatanaFeather as form, 1, false)
Game.GetPlayer().AddSpell(SummonKatana)

	self.GetOwningQuest().SetStage(5)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property AK69KatanaFeather  Auto  

SPELL Property SummonKatana  Auto  
