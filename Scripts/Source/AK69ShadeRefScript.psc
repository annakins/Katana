Scriptname AK69ShadeRefScript extends ReferenceAlias  

Actor Property Katana Auto
EffectShader Property DeathFXS Auto
explosion property DeathExplosion auto
Actor Property KatanaShadow auto

Event OnActivate(ObjectReference obj)
	if !KatanaShadow.IsInCombat() && (Katana.IsBleedingOut() == 0)
	DeathFXS.Play(KatanaShadow)
	Utility.wait(0.5)
	KatanaShadow.placeAtMe(DeathExplosion)
	Utility.wait(0.1)			
	DeathFXS.Stop(KatanaShadow)
	Utility.wait(0.5)	
	KatanaShadow.Reset()
	Endif
EndEvent