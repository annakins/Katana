Scriptname AK69KatanaMountScript extends ReferenceAlias
 

;-- Properties --------------------------------------
actor property Katana auto
actor property Player auto
actor property Takiyo auto
ReferenceAlias Property KatanaRef Auto
ReferenceAlias Property TakiyoRef Auto
faction property CurrentFollowerFaction auto
globalvariable property AK69KatanaRidingVar auto
globalvariable property FollowerRecruited auto
Activator Property OutVis Auto
Activator Property InVis Auto
VisualEffect Property Sparkle Auto


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
			If asEventName == "tailHorseMount" && !Katana.IsOnMount()
				
				if (Katana.GetDistance(Takiyo) >= 2048) && (FollowerRecruited.GetValue() ==1) 
				BeginTeleport()
				
				Takiyo.setAlpha(0.1)
				Takiyo.MoveTo(Player as objectreference, -500.000 * Math.Sin(Player.GetAngleZ()), -500.000 * Math.Cos(Player.GetAngleZ()))
				EndTeleport()				
				Utility.Wait(0.1)
				Takiyo.setAlpha(1)					
				endif
				MistRavenCast()			
				Utility.Wait(0.3)
				Katana.OnAnimationEvent(none, "tailHorseMount")
				Utility.Wait(0.3)
				Katana.EvaluatePackage()
				
			EndIf
	
			If asEventName == "tailHorseDismount"
				
				if (Takiyo.GetDistance(Game.GetPlayersLastRiddenHorse()) <= 700)
					
					Utility.Wait(3)
				Katana.Dismount()
				Katana.EvaluatePackage()
				Endif
			EndIf
		Else
			Return
		EndIf
	
	
	
	
endFunction

Function MistRavenCast()
	Actor TakiyoIrin = TakiyoRef.GetActorRef()
	Actor KatanaIrin = KatanaRef.GetActorRef()

	float ang_z
				ang_z = TakiyoIrin.GetAngleZ() - 90
				Sparkle.Play(Katana, 1.0)
				Katana.setAlpha(0.1)
				Utility.Wait(0.3)
				KatanaIrin.SetAngle(0, 0, ang_z + 180)
				KatanaIrin.MoveTo(Takiyo, 60 * Math.Sin(ang_z), 60 * Math.Cos(ang_z), 0, false)
				Utility.Wait(0.3)	
				Sparkle.Play(Katana, 1.0)
				Katana.setAlpha(1)						
EndFunction

