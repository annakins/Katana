Scriptname AK69ShadowDeathScript extends ObjectReference  

EffectShader Property DeathFXS Auto
explosion property DeathExplosion auto

Event OnDeath (Actor killer)	
	ShadowDeath()	
EndEvent


Function ShadowDeath()
	DeathFXS.Play(self)
	Utility.wait(0.5)
	self.placeAtMe(DeathExplosion)
	Utility.wait(0.1)			
	DeathFXS.Stop(self)
	Utility.wait(0.5)	
	self.Reset()
EndFunction
