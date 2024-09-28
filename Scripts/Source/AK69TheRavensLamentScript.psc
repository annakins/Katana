Scriptname AK69TheRavensLamentScript extends Quest Conditional

ObjectReference Property AK69RiverDoNothingMarker Auto
ObjectReference property RiverRef auto
ObjectReference Property AK69BeeandBarbXMarker Auto
ObjectReference Property AK69BeeandBarbUpstairs Auto
ObjectReference Property AK69VilemyrMarker Auto
ObjectReference Property AK69FallowstoneMarker Auto
ObjectReference Property AK69Atronach1 Auto  
ObjectReference Property AK69Atronach2 Auto  
ObjectReference Property AK69ShaleMarker1  Auto  
ObjectReference Property AK69ShaleTrigger1REF  Auto  
ObjectReference Property AK69FallowstoneSceneTriggerREF  Auto  
ObjectReference Property AK69AmbushTime  Auto  
ObjectReference Property AK69FallowstoneAmbushTriggerREF  Auto  
ObjectReference Property AK69ShaleMarker2REF  Auto  
ObjectReference Property AK69ShaleTriggerACT2  Auto  
ObjectReference Property AK69RiverMarker1  Auto  
ObjectReference Property AK69RiverMarker2  Auto  
ObjectReference Property AK69RiverCampMarker  Auto  
ObjectReference Property AK69RiverTent1  Auto  
ObjectReference Property AK69RiverTent2  Auto  
ObjectReference Property AK69RiverBed1  Auto  
ObjectReference Property AK69RiverBed2  Auto  
ObjectReference Property AK69RiverSceneTrigger3REF  Auto  
ObjectReference Property AK69Smoke1  Auto  
ObjectReference Property AK69Spit01  Auto  
ObjectReference Property AK69SpitPot  Auto  
ObjectReference Property AK69Bowl1  Auto  
ObjectReference Property AK69Bowl2  Auto  
ObjectReference Property AK69Crate1  Auto  
ObjectReference Property AK69Food1  Auto  
ObjectReference Property AK69FoodMead  Auto  
ObjectReference Property AK69RiverFire  Auto  
ObjectReference Property AK69HagA  Auto  
ObjectReference Property AK69HagB  Auto  
ObjectReference Property AK69HagC  Auto  
ObjectReference Property AK69HagD  Auto  
ObjectReference Property AK69HagE  Auto  
ObjectReference Property AK69RiverRiddle auto
ObjectReference Property AK69RiverFlower auto
GlobalVariable Property AK69AtronachKillCount Auto
GlobalVariable Property AK69HagKillCount Auto
Actor Property River Auto
Actor Property KatanaShade Auto
Actor Property KatanaActor Auto
Actor Property ShaleActor Auto
Actor Property MegaraActor Auto
Explosion Property AK69ShadowDeathExplosion Auto
EffectShader Property DeathFXS Auto
EffectShader Property Paralysis Auto
Activator Property SummonValorTargetFXActivator Auto
Scene Property AK69ByeRiverScene Auto

bool Property TRLCaution = false auto conditional
bool Property TRLDrink = false auto conditional
bool Property TRLDistraction = false auto conditional
bool Property TRLRest = false auto conditional
bool Property TRLLeading = false auto conditional
bool Property TRLEwRiver = false auto conditional
bool Property TRLGhost = false auto conditional
bool Property TRLCackles = false auto conditional
bool Property TRLWorstDay = false auto conditional

Function Setup()
    AK69RiverDoNothingMarker.Enable()
    AK69BeeandBarbXMarker.Enable()
	AK69BeeandBarbUpstairs.Enable()
    AK69VilemyrMarker.Enable()
    AK69FallowstoneMarker.Enable()
EndFunction

Function BossTally()
	if AK69AtronachKillCount.GetValue() >= 2
		Self.SetStage(130)
	endif
EndFunction

Function ActivateFlowerRiddle()
	AK69RiverFlower.BlockActivation(False)
    AK69RiverRiddle.BlockActivation(False)
EndFunction



Function HagTally()
	if AK69HagKillCount.GetValue() >= 5
		River.GetActorBase().SetInvulnerable(false)
	endif
EndFunction

Function Paralyze()
	Game.DisablePlayerControls(true, true, false, false, true, false, true, false)
	KatanaActor.SetRestrained()
	ShaleActor.SetRestrained()
	MegaraActor.SetRestrained()
	Utility.Wait(1.0)
EndFunction

Function MovePlayer()
Game.GetPlayer().PlaceAtMe(SummonValorTargetFXActivator)	
Game.GetPlayer().MoveTo(AK69RiverCampMarker)
Game.GetPlayer().PlaceAtMe(SummonValorTargetFXActivator)	
River.PlaceAtMe(SummonValorTargetFXActivator)
River.MoveTo(Game.GetPlayer() as objectreference, 200.000 * Math.Sin(Game.GetPlayer().GetAngleZ()), 200.000 * Math.Cos(Game.GetPlayer().GetAngleZ()))
River.PlaceAtMe(SummonValorTargetFXActivator)	
EndFunction

Function MoveAndParalyze()
MegaraActor.PlaceAtMe(SummonValorTargetFXActivator)	
MegaraActor.MoveTo(Game.GetPlayer() as objectreference, -100.000 * Math.Sin(Game.GetPlayer().GetAngleZ()), -100.000 * Math.Cos(Game.GetPlayer().GetAngleZ()))
MegaraActor.PlaceAtMe(SummonValorTargetFXActivator)

KatanaActor.PlaceAtMe(SummonValorTargetFXActivator)	
KatanaActor.MoveTo(Game.GetPlayer() as objectreference, 200.000 * Math.Sin(Game.GetPlayer().GetAngleZ()), 200.000 * Math.Cos(Game.GetPlayer().GetAngleZ()))
KatanaActor.SetAngle(KatanaActor.GetAngleX(), KatanaActor.GetAngleY(), KatanaActor.GetAngleZ() + KatanaActor.GetHeadingAngle(Game.GetPlayer()))
KatanaActor.PlaceAtMe(SummonValorTargetFXActivator)

ShaleActor.PlaceAtMe(SummonValorTargetFXActivator)	
ShaleActor.MoveTo(Game.GetPlayer() as objectreference, 300.000 * Math.Sin(Game.GetPlayer().GetAngleZ()), 300.000 * Math.Cos(Game.GetPlayer().GetAngleZ()))
ShaleActor.SetAngle(ShaleActor.GetAngleX(), ShaleActor.GetAngleY(), ShaleActor.GetAngleZ() + ShaleActor.GetHeadingAngle(Game.GetPlayer()))
ShaleActor.PlaceAtMe(SummonValorTargetFXActivator)

Paralysis.Play(Game.GetPlayer())
Paralysis.Play(KatanaActor)
Paralysis.Play(ShaleActor)
Paralysis.Play(MegaraActor)
EndFunction

Function StopParalysis()
	Paralysis.Stop(Game.GetPlayer())
	Paralysis.Stop(KatanaActor)
	Paralysis.Stop(ShaleActor)
	Paralysis.Stop(MegaraActor)
	KatanaActor.SetRestrained(false)
	ShaleActor.SetRestrained(false)
	MegaraActor.SetRestrained(false)
	Game.EnablePlayerControls()
EndFunction

Function ShadeBye()
	DeathFXS.Play(KatanaShade)
	Utility.wait(0.5)
	KatanaShade.placeAtMe(AK69ShadowDeathExplosion)
	Utility.wait(0.1)			
	DeathFXS.Stop(KatanaShade)
	Utility.wait(0.5)	
	KatanaShade.Reset()
EndFunction

Function ShadeBye2()
	DeathFXS.Play(KatanaShade)
	Utility.wait(0.5)
	KatanaShade.placeAtMe(AK69ShadowDeathExplosion)
	Utility.wait(0.1)			
	DeathFXS.Stop(KatanaShade)
	Utility.wait(0.5)	
	KatanaShade.Reset()
EndFunction

Function DeleteStuff()
	AK69RiverDoNothingMarker.disable()
	RiverRef.disable()
	;AK69BeeandBarbXMarker.disable() this is Shale's home marker now
	AK69BeeandBarbUpstairs.disable()
	AK69VilemyrMarker.disable()
	AK69FallowstoneMarker.disable()
	AK69Atronach1.disable()
	AK69Atronach2.disable()
	AK69ShaleMarker1.disable()
	AK69ShaleTrigger1REF.disable()
	AK69FallowstoneSceneTriggerREF.disable()
	AK69AmbushTime.disable()
	AK69FallowstoneAmbushTriggerREF.disable()
	AK69ShaleMarker2REF.disable()
	AK69ShaleTriggerACT2.disable()
	AK69RiverMarker1.disable()
	AK69RiverMarker2.disable()
	AK69RiverCampMarker.disable()
	AK69RiverTent1.disable()
	AK69RiverTent2.disable()
	AK69RiverBed1.disable()
	AK69RiverBed2.disable()
	AK69RiverSceneTrigger3REF.disable()
	AK69Smoke1.disable()
	AK69Spit01.disable()
	AK69SpitPot.disable()
	;AK69Bowl1.disable()
	;AK69Bowl2.disable()
	AK69Crate1.disable()
	;AK69Food1.disable()
	;AK69FoodMead.disable()
	AK69RiverFire.disable()
	AK69HagA.disable()
	AK69HagB.disable()
	AK69HagC.disable()
	AK69HagD.disable()
	AK69HagE.disable()
SetStage(320)
EndFunction