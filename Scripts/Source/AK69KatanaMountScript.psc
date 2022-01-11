Scriptname AK69KatanaMountScript extends ReferenceAlias
 

;-- Properties --------------------------------------
actor property Katana auto
actor property Player auto
actor property Takiyo auto
faction property CurrentFollowerFaction auto
globalvariable property AK69KatanaRidingVar auto
VisualEffect Property VisEffect Auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------


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
	if Player.IsOnMount() && AK69KatanaRidingVar.GetValue() == 1 as Float
		Katana.OnAnimationEvent(none, "tailHorseMount")
	endIf
		If Katana.GetActorValue("WaitingForPlayer") == 0
			If asEventName == "tailHorseMount"
				
				if (Katana.GetDistance(Takiyo) >= 2048)
				VisEffect.Play(Takiyo)
				Takiyo.setGhost(true)
				Takiyo.MoveTo(Player as objectreference, -500.000 * math.Sin(Player.GetAngleZ()), -500.000 * math.Cos(Player.GetAngleZ()), Player.GetHeight() + 5.00000, true)
				Utility.Wait(3)
				
				Takiyo.setGhost(false)
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




