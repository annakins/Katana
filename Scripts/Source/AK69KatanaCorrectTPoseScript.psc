Scriptname AK69KatanaCorrectTPoseScript extends ActiveMagicEffect  

Actor Property Katana Auto
Actor Property Megara Auto
Actor Property Shale Auto
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69MegaraRecruited Auto
GlobalVariable Property AK69ShaleRecruited Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
if AK69KatanaRecruited.GetValue() == 1
Katana.StopCombat()	
Katana.StopCombatAlarm()
Katana.Disable()
Katana.Enable()
Katana.EvaluatePackage()
endif
if AK69MegaraRecruited.GetValue() == 1
Megara.StopCombat()	
Megara.StopCombatAlarm()
Megara.Disable()
Megara.Enable()
Megara.EvaluatePackage()
endif
if AK69ShaleRecruited.GetValue() == 1
Shale.StopCombat()	
Shale.StopCombatAlarm()
Shale.Disable()
Shale.Enable()
Shale.EvaluatePackage()
endif
EndEvent

