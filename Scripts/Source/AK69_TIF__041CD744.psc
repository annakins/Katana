;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__041CD744 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Game.GetPlayer().AddSpell(SummonMegara)
Game.GetPlayer().AddSpell(UnstuckMegara)
Megara.AllowBleedoutDialogue(true)
self.GetOwningQuest().SetStage(5)
CrossedArmsIdleMarker.Delete()
ElliRef.Delete()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property SummonMegara  Auto  

SPELL Property UnstuckMegara  Auto  

ObjectReference Property CrossedArmsIdleMarker  Auto  

ObjectReference Property ElliRef  Auto  

Actor Property Megara  Auto  
