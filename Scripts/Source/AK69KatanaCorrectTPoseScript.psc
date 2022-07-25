Scriptname AK69KatanaCorrectTPoseScript extends ActiveMagicEffect  

Actor Property Katana Auto
Activator Property InVis Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
Katana.PushActorAway(Katana, 5.0)
utility.wait(4)
debug.SendAnimationEvent(akTarget as objectreference, "RF_Idle_Out")	
EndEvent
