Scriptname AK69SneakSheatheTorchScript extends activemagiceffect  

Light Property Torch01 Auto
Actor Property Katana Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
Katana.RemoveItem(Torch01)
EndEvent

