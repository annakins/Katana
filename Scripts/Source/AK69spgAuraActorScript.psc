Scriptname AK69spgAuraActorScript extends ActiveMagicEffect  
{FX for colored auras}

VisualEffect Property AuraParticlesFX Auto
{Floor based stream of upward particles}

EVENT OnEffectStart(Actor Target, Actor Caster)
	;Play the magic fx
	AuraParticlesFX.play(Target, -1)
ENDEVENT

EVENT OnEffectFinish(Actor Target, Actor Caster)
	;Stop the magic fx
	AuraParticlesFX.stop(Target)
ENDEVENT