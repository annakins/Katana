Scriptname AK69KatanaShurikenScript extends ActiveMagicEffect  

Spell Property ShurikenSpell Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
if (akCaster.GetDistance(akTarget) < 700)
	akCaster.InterruptCast()
ElseIf	(akCaster.GetDistance(akTarget) > 700)&&(akTarget.GetCurrentLocation() == akCaster.GetCurrentLocation())
	ShurikenSpell.Cast(akCaster, akTarget)
EndIf
EndEvent


Event OnEffectFinish(Actor akTarget, Actor akCaster)
Utility.Wait(1)
endEvent