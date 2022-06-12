Scriptname AK69MegaraMountScript extends ReferenceAlias  


;-- Properties --------------------------------------
actor property Megara auto
actor property Player auto
actor property Toast auto
faction property CurrentFollowerFaction auto
globalvariable property AK69MegaraRidingVar auto
globalvariable property FollowerRecruited auto
Activator Property OutVis Auto
Activator Property InVis Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------



function BeginTeleport()
	Toast.PlaceAtMe(InVis)
	endFunction
	
	function EndTeleport()
		Toast.PlaceAtMe(OutVis)
	endFunction


function OnInit()

	Player = game.GetPlayer()
	self.RegisterForAnimationEvent(Player as objectreference, "tailHorseMount")
	self.RegisterForAnimationEvent(Player as objectreference, "tailHorseDismount")
endFunction


function OnPlayerLoadGame()

	self.RegisterForAnimationEvent(Player as objectreference, "tailHorseMount")
	self.RegisterForAnimationEvent(Player as objectreference, "tailHorseDismount")
endFunction


function OnAnimationEvent(objectreference akSource, String asEventName)

	if akSource == Player as objectreference
		if Megara.IsInFaction(CurrentFollowerFaction)
			Megara.EvaluatePackage()
		endIf
	endIf
	if Player.IsOnMount() && (FollowerRecruited.GetValue() ==1) && AK69MegaraRidingVar.GetValue() == 1 as Float 
		Utility.Wait(3)
		Megara.OnAnimationEvent(none, "tailHorseMount")
		Utility.Wait(3)
	endIf
		If Megara.GetActorValue("WaitingForPlayer") == 0
			If asEventName == "tailHorseMount"
				
				if (Megara.GetDistance(Toast) >= 2048) && (FollowerRecruited.GetValue() ==1) 
					BeginTeleport()
                    Toast.setAlpha(0.1)
                    Toast.MoveTo(Player as objectreference, -500.000 * Math.Sin(Player.GetAngleZ()), -500.000 * Math.Cos(Player.GetAngleZ()))
				
				EndTeleport()
				Utility.Wait(0.1)
				Toast.setAlpha(1)
				endif
				Utility.Wait(3)		
				Megara.OnAnimationEvent(none, "tailHorseMount")
				Utility.Wait(3)
				Megara.EvaluatePackage()
			EndIf
	
			If asEventName == "tailHorseDismount"
				if (Toast.GetDistance(Game.GetPlayersLastRiddenHorse()) <= 700)
					Toast.SetDontMove()
					Utility.Wait(3)
					Megara.Dismount()
					Megara.EvaluatePackage()
				Endif
			EndIf
		Else
			Return
		EndIf
	
	
	
	
endFunction



