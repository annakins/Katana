;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_TIF__05804C8E Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Game.GetPlayer().AddSpell(SummonMegara)

Game.GetPlayer().AddItem(AK69MegaraLantern)
Megara.AllowBleedoutDialogue(true)
CrossedArmsIdleMarker.Delete()
AK69MegaraFollowQuest.Start()
AK69EasterEggsQuest.Start()
ElliRef.Delete()
AK69MegaraPQSkipSuccessMessage.Show()
GetOwningQuest().Setstage(5)
;AK69TheKhatsEyeQuest.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property SummonMegara  Auto  

Actor Property Megara  Auto  

ObjectReference Property CrossedArmsIdleMarker  Auto  

ObjectReference Property ElliRef  Auto  

Quest Property AK69EasterEggsQuest  Auto  

Quest Property AK69MegaraFollowQuest  Auto  

Quest Property AK69TheKhatsEyeQuest  Auto  

Message Property AK69MegaraPQSkipSuccessMessage  Auto  

MiscObject Property AK69MegaraLantern  Auto  
