Scriptname AK69SpectralWarbandScript extends ActiveMagicEffect  

;-- Properties --------------------------------------
Int property WB_LevelMod = 0 auto
Float property WB_DistanceInFront auto
Float property WB_UpdateRate auto
spell property SpectralWarbandFXSpell auto
Actor Property Katana Auto
Faction Property KatanaFaction auto
Actor Property KatanaShadow auto

EffectShader Property DeathFXS Auto
explosion property DeathExplosion auto
;-- Variables ---------------------------------------

Float EndLocY
Float EndLocX

;-- Functions ---------------------------------------

Event OnEffectFinish(Actor akTarget, Actor akCaster)

	self.Dispel()
endEvent

Event OnUpdate()

	if !KatanaShadow || KatanaShadow.IsDead()
		self.Dispel()
	endIf

endEvent

Event OnEffectStart(Actor akTarget, Actor akCaster)
 
	Float TargetAngle = Katana.GetAngleZ()
    Actor TargetCombatTarget = Katana.GetCombatTarget()		
	EndLocX = WB_DistanceInFront * math.Sin(TargetAngle)
	EndLocY = WB_DistanceInFront * math.Cos(TargetAngle)
	KatanaShadow.MoveTo(Katana as objectreference, EndLocX, EndLocY, 0 as Float, true)
	KatanaShadow.SetAngle(Katana.GetAngleX(), Katana.GetAngleY(), TargetAngle)    
	KatanaShadow.AddSpell(SpectralWarbandFXSpell, true)
  	
	if TargetCombatTarget
		KatanaShadow.StartCombat(TargetCombatTarget)
	endIf

	self.RegisterForSingleUpdate(WB_UpdateRate)
endEvent


Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
	Utility.Wait(4.0)
	if (aeCombatState == 0)
	DeathFXS.Play(KatanaShadow)
	Utility.wait(0.5)
	KatanaShadow.placeAtMe(DeathExplosion)
	Utility.wait(0.1)			
	DeathFXS.Stop(KatanaShadow)
	Utility.wait(0.5)	
	KatanaShadow.Reset()
	Endif
EndEvent