Scriptname AK69SQScrollScript extends activemagiceffect  

ObjectReference Property AK69CozyCOC Auto
Quest Property AK69SerenataQuest Auto

Event OnEffectStart(Actor target, Actor caster)
target.MoveTo(AK69CozyCOC)
AK69SerenataQuest.SetStage(80)

EndEvent

;if !Game.GetPlayer().GetParentCell() == AK69CozyInterior
;Game.GetPlayer().AddItem(AK69SQScroll)
;Debug.Notification ("Should have a new scroll since it went away")
;endIf