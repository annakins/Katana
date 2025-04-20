Scriptname AK69KatanaCorrectTPoseScript extends ActiveMagicEffect  

Actor Property Katana Auto
Actor Property Megara Auto
Actor Property Shale Auto
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69MegaraRecruited Auto
GlobalVariable Property AK69ShaleRecruited Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
if Katana.IsPlayerTeammate()
Katana.StopCombat()	
Katana.StopCombatAlarm()
Katana.Disable()
Katana.Enable()
Katana.EvaluatePackage()
endif
if Megara.IsPlayerTeammate()
Megara.StopCombat()	
Megara.StopCombatAlarm()
Megara.Disable()
Megara.Enable()
Megara.EvaluatePackage()
endif
if Shale.IsPlayerTeammate()
Shale.StopCombat()	
Shale.StopCombatAlarm()
Shale.Disable()
Shale.Enable()
Shale.EvaluatePackage()
endif
EndEvent

