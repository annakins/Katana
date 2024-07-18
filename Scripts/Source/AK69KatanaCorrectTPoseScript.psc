Scriptname AK69KatanaCorrectTPoseScript extends ActiveMagicEffect  

Actor Property Katana Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
Katana.StopCombat()	
Katana.StopCombatAlarm()
Katana.Disable()
Katana.Enable()
Katana.EvaluatePackage()
EndEvent

;Credit to Tlam99 for orig script: https://www.nexusmods.com/skyrimspecialedition/mods/56955