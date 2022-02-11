Scriptname AK69KatanaSummonScript extends ActiveMagicEffect  

Actor Property Katana Auto
Activator Property InVis Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
Katana.setAlpha(0.1)
BeginTeleport()
Katana.MoveTo(Game.GetPlayer() as objectreference, -500.000 * Math.Sin(Game.GetPlayer().GetAngleZ()), -500.000 * Math.Cos(Game.GetPlayer().GetAngleZ()))
EndTeleport()
Utility.Wait(0.1)   
Katana.setAlpha(1)
EndEvent

function BeginTeleport()
Katana.PlaceAtMe(InVis)
endFunction

function EndTeleport()
Katana.PlaceAtMe(InVis)
endFunction