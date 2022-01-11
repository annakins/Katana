Scriptname AK69KatanaSummonScript extends ActiveMagicEffect  

Actor Property Katana Auto
VisualEffect Property VisEffect Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
VisEffect.Play(Katana)
         Katana.MoveTo(Game.GetPlayer(), 5, 0, 5, true)
         
         
         Utility.Wait(3.0)
         



EndEvent