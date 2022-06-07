Scriptname AK69KatanaCorrectTPoseScript extends ActiveMagicEffect  


Actor Property Katana Auto
Activator Property InVis Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
Katana.PushActorAway(Katana, 5.0)
EndEvent
