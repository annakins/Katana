Scriptname AK69ShadowInvisCASTScript extends ActiveMagicEffect  

Spell Property AK69Invisibility Auto

EVENT OnEffectStart(Actor Target, Actor Caster)
    AK69Invisibility.Cast(Caster, Caster)
ENDEVENT

EVENT OnEffectFinish(Actor Target, Actor Caster)
    Caster.DispelSpell(AK69Invisibility)
ENDEVENT