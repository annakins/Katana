Scriptname AK69KatanaBountyHuntScript extends Quest  

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69KatanaBountyTimer1 auto
Objectreference Property AK69KatanaBountyXMarker auto
Actor Property Katana Auto
Activator Property InVis Auto

Function BountyTimer1Start()
	float UntilTimer1 = Utility.RandomFloat(0.16, 2.88)
	float Timer1 = GameDaysPassed.GetValue() + UntilTimer1	
	AK69KatanaBountyTimer1.SetValue(Timer1)
	;Debug.Notification(UntilTimer1)
EndFunction

Function KatanaGoHunt()
Katana.setAlpha(0.1)
BeginTeleport()
Katana.MoveTo(AK69KatanaBountyXMarker)
EndTeleport()
Utility.Wait(0.3)   
Katana.setAlpha(1)
EndFunction


Function KatanaIsBack()
Katana.setAlpha(0.1)
BeginTeleport()
Katana.MoveTo(Game.GetPlayer() as objectreference, -500.000 * Math.Sin(Game.GetPlayer().GetAngleZ()), -500.000 * Math.Cos(Game.GetPlayer().GetAngleZ()))
EndTeleport()
Utility.Wait(0.3)   
Katana.setAlpha(1)
EndFunction

function BeginTeleport()
Katana.PlaceAtMe(InVis)
endFunction

function EndTeleport()
Katana.PlaceAtMe(InVis)
endFunction