Scriptname AK69DismissedBleedoutScript extends ReferenceAlias  

scene property BleedoutScene auto
GlobalVariable  Property BetrayedVar Auto
Faction property DismissedFollowerFaction Auto
Actor property Follower Auto

Event OnEnterBleedout()
If Follower.IsInFaction(DismissedFollowerFaction)
Utility.Wait(3)
BleedoutScene.Start()
BetrayedVar.SetValue(1 as float)
endif
endEvent