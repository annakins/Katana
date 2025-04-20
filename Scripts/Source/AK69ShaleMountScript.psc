Scriptname AK69ShaleMountScript extends ReferenceAlias  

;-- Properties --------------------------------------
actor property Shale auto
actor property Player auto
actor property Lucky auto
faction property CurrentFollowerFaction auto
globalvariable property AK69ShaleRidingVar auto
globalvariable property AK69ShaleRecruited auto
globalvariable property AK69ShaleRelax auto
Activator Property OutVis Auto
Activator Property InVis Auto

function BeginTeleport()
	Lucky.PlaceAtMe(InVis)
	endFunction
	
function EndTeleport()
	Lucky.PlaceAtMe(OutVis)
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
		if Shale.IsInFaction(CurrentFollowerFaction)
			Shale.EvaluatePackage()
		endIf
	endIf
	if Player.IsOnMount() && (Shale.IsPlayerTeammate()) && AK69ShaleRidingVar.GetValue() == 1 as Float && (Shale.GetActorValue("WaitingForPlayer") == 0) 
		Utility.Wait(1)
		Shale.OnAnimationEvent(none, "tailHorseMount")
		;Utility.Wait(3)
	endIf
		If Shale.GetActorValue("WaitingForPlayer") == 0 && (Shale.GetActorValue("WaitingForPlayer") == 0) && (Shale.IsPlayerTeammate()) 	
			If asEventName == "tailHorseMount"
				if (Shale.GetDistance(Lucky) >= 2048) && (Shale.IsPlayerTeammate()) 
				BeginTeleport()
                Lucky.setAlpha(0.1)
                Lucky.MoveTo(Player as objectreference, -900.000 * Math.Sin(Player.GetAngleZ()), -900.000 * Math.Cos(Player.GetAngleZ()))
				EndTeleport()
				Utility.Wait(0.1)
				Lucky.setAlpha(1)
				endif
				Utility.Wait(1)		
				Shale.OnAnimationEvent(none, "tailHorseMount")
				;Utility.Wait(3)
				Shale.EvaluatePackage()
			EndIf	
			If asEventName == "tailHorseDismount"
				if (Lucky.GetDistance(Game.GetPlayersLastRiddenHorse()) <= 700)					
				Utility.Wait(1)
				Shale.Dismount()
				Shale.EvaluatePackage()
				Endif
			EndIf
		Else
			Return
		EndIf	
endFunction

;This is so not just a mount script huehuheuhue

;==============GIFT SYSTEM==============	
Form TheItem
Bool GaveItem

AK69ShaleController Property DataStorage Auto
Scene Property AK69ShaleBoozeScene Auto
Scene Property AK69ShaleNomScene Auto
Scene Property AK69ShaleBookScene Auto
Scene Property AK69ShaleFlowersScene Auto
Scene Property AK69ShaleWhyThoughScene Auto
Scene Property AK69ShaleUniqueScene Auto
Scene Property AK69ShaleGiftScene Auto
GlobalVariable Property AK69ShaleGiftTime Auto
GlobalVariable Property AK69ShaleUniqueGift Auto
FormList Property AK69BoozeList Auto
FormList Property AK69ShaleNomList Auto
FormList Property AK69BookList Auto
FormList Property AK69FlowersList Auto
FormList Property AK69ShaleWhyThoughList Auto
FormList Property AK69UniqueList Auto


Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
  If AK69ShaleGiftTime.GetValue() == 1.0
    If akDestContainer == Shale as ObjectReference
      If !GaveItem
        GaveItem = True
        TheItem = akBaseItem
        If aiItemCount > 1
          akDestContainer.RemoveItem(akBaseItem, aiItemCount - 1, False, Player as ObjectReference)
        EndIf
      Else
        akDestContainer.RemoveItem(akBaseItem, aiItemCount, False, Player as ObjectReference)
      EndIf
      Utility.Wait(1.0)
      GaveItem = False
      AK69ShaleGiftTime.SetValue(0.0)
      Self.GetItemType(TheItem)
    EndIf
  EndIf
EndEvent

Function GetItemValue(Form Item)
  If Item.GetGoldValue() > 100
    DataStorage.AK69Quality = 2
  ElseIf Item.GetGoldValue() > 50
    DataStorage.AK69Quality = 1
  Else
    DataStorage.AK69Quality = 0
  EndIf	
EndFunction

Function GetItemType(Form ItemType)
  If AK69BoozeList.HasForm(ItemType)
    Shale.RemoveItem(ItemType, 1, True, None)
    AK69ShaleBoozeScene.Start()
    Return 
  EndIf
  If AK69ShaleNomList.HasForm(ItemType)
	Shale.RemoveItem(ItemType, 1, True, None)
    AK69ShaleNomScene.Start()
    Return 
  EndIf
  If AK69BookList.HasForm(ItemType)
    AK69ShaleBookScene.Start()
    Return 
  EndIf
  If AK69ShaleWhyThoughList.HasForm(ItemType)
    AK69ShaleWhyThoughScene.Start()
    Return 
  EndIf
  If AK69FlowersList.HasForm(ItemType)
    AK69ShaleFlowersScene.Start()
    Return 
  EndIf
  Int uniqueIndex = AK69UniqueList.Find(ItemType)
  If uniqueIndex != -1
    If uniqueIndex >= 0 && uniqueIndex <= 24
	AK69ShaleUniqueGift.SetValue((uniqueIndex + 1) as Float)
    EndIf
    AK69ShaleUniqueScene.Start()
    Return 
  EndIf
  Self.GetItemValue(ItemType)
  AK69ShaleGiftScene.Start()
EndFunction