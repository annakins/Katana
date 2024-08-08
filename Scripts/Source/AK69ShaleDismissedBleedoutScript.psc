Scriptname AK69ShaleDismissedBleedoutScript extends ReferenceAlias  

scene property BleedoutScene auto
GlobalVariable  Property BetrayedVar Auto
GlobalVariable  Property AK69TRLCompleted Auto
Faction property DismissedFollowerFaction Auto
Actor property Follower Auto

Event OnEnterBleedout()
If Follower.IsInFaction(DismissedFollowerFaction) && AK69TRLCompleted.GetValue() == 1
Utility.Wait(3)
BleedoutScene.Start()
BetrayedVar.SetValue(1 as float)
endif
endEvent