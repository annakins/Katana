Scriptname AK69KatanaMountScript extends ReferenceAlias
 

;-- Properties --------------------------------------
actor property Katana auto
actor property Player auto
actor property Takiyo auto
faction property CurrentFollowerFaction auto
globalvariable property AK69KatanaRidingVar auto
globalvariable property FollowerRecruited auto
Activator Property OutVis Auto
Activator Property InVis Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------



function BeginTeleport()
	Takiyo.PlaceAtMe(InVis)
	endFunction
	
	function EndTeleport()
		Takiyo.PlaceAtMe(OutVis)
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
		if Katana.IsInFaction(CurrentFollowerFaction)
			Katana.EvaluatePackage()
		endIf
	endIf
	if Player.IsOnMount() && (FollowerRecruited.GetValue() ==1) && AK69KatanaRidingVar.GetValue() == 1 as Float 
		Utility.Wait(3)
		Katana.OnAnimationEvent(none, "tailHorseMount")
		Utility.Wait(3)
	endIf
		If Katana.GetActorValue("WaitingForPlayer") == 0
			If asEventName == "tailHorseMount"
				
				if (Katana.GetDistance(Takiyo) >= 2048) && (FollowerRecruited.GetValue() ==1) 
					BeginTeleport()
				Takiyo.setAlpha(0.1)
				Takiyo.MoveTo(Player as objectreference, -500.000 * Math.Sin(Player.GetAngleZ()), -500.000 * Math.Cos(Player.GetAngleZ()))
				
				EndTeleport()
				Utility.Wait(0.1)
				Takiyo.setAlpha(1)
				endif
				Utility.Wait(3)		
				Katana.OnAnimationEvent(none, "tailHorseMount")
				Utility.Wait(3)
				Katana.EvaluatePackage()
			EndIf
	
			If asEventName == "tailHorseDismount"
				Utility.Wait(3)
				Katana.Dismount()
				Katana.EvaluatePackage()
			EndIf
		Else
			Return
		EndIf
	
	
	
	
endFunction




