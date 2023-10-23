Scriptname AK69KatanaCorrectTPoseScript extends ActiveMagicEffect  

Actor Property Katana Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)

Katana.StopCombat()	
Katana.StopCombatAlarm()
debug.SendAnimationEvent(Katana as objectreference, "RF_Idle_Out")
utility.Wait(1.50000)
debug.SendAnimationEvent(Katana as objectreference, "IdleSitCrossLeggedEnter")
utility.Wait(1.50000)
debug.SendAnimationEvent(Katana as objectreference, "IdleChairExitStart")
utility.Wait(2.00000)    
Katana.PushActorAway(Katana, 5.0)  
utility.Wait(1.50000)
debug.SendAnimationEvent(Katana as objectreference, "IdleStop_Loose")
utility.wait(1.50000)
Katana.Disable(true)
utility.wait(1.50000)
Katana.Enable(true)
utility.wait(1.50000)
Katana.EvaluatePackage()
EndEvent

;Credit to Tlam99 for this: https://www.nexusmods.com/skyrimspecialedition/mods/56955