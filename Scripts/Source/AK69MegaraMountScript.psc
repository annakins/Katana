Scriptname AK69MegaraMountScript extends ReferenceAlias  

;-- Properties --------------------------------------
actor property Megara auto
actor property Player auto
actor property Cappy auto
faction property CurrentFollowerFaction auto
globalvariable property AK69MegaraRidingVar auto
globalvariable property FollowerRecruited auto
globalvariable property MegaraRelaxVar auto
Activator Property OutVis Auto
Activator Property InVis Auto

function BeginTeleport()
	Cappy.PlaceAtMe(InVis)
	endFunction
	
function EndTeleport()
	Cappy.PlaceAtMe(OutVis)
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
	if Player.IsOnMount() && (Megara.IsPlayerTeammate()) && AK69MegaraRidingVar.GetValue() == 1 as Float && (Megara.GetActorValue("WaitingForPlayer") == 0) 
		Utility.Wait(1)
		Megara.OnAnimationEvent(none, "tailHorseMount")
		;Utility.Wait(3)
	endIf
		If Megara.GetActorValue("WaitingForPlayer") == 0 && (Megara.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate()) 	
			If asEventName == "tailHorseMount"
				if (Megara.GetDistance(Cappy) >= 2048) && (Megara.IsPlayerTeammate()) 
				BeginTeleport()
                Cappy.setAlpha(0.1)
                Cappy.MoveTo(Player as objectreference, -700.000 * Math.Sin(Player.GetAngleZ()), -700.000 * Math.Cos(Player.GetAngleZ()))
				EndTeleport()
				Utility.Wait(0.1)
				Cappy.setAlpha(1)
				endif
				Utility.Wait(1)		
				Megara.OnAnimationEvent(none, "tailHorseMount")
				;Utility.Wait(3)
				Megara.EvaluatePackage()
			EndIf	
			If asEventName == "tailHorseDismount"
				if (Cappy.GetDistance(Game.GetPlayersLastRiddenHorse()) <= 700)					
				Utility.Wait(1)
				Megara.Dismount()
				Megara.EvaluatePackage()
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

AK69MegaraController Property DataStorage Auto
Scene Property AK69MegaraBoozeScene Auto
Scene Property AK69MegaraNomScene Auto
Scene Property AK69MegaraBookScene Auto
Scene Property AK69MegaraFlowersScene Auto
Scene Property AK69MegaraWhyThoughScene Auto
Scene Property AK69MegaraUniqueScene Auto
Scene Property AK69MegaraGiftScene Auto
GlobalVariable Property AK69MegaraGiftTime Auto
GlobalVariable Property AK69MegaraUniqueGift Auto
FormList Property AK69BoozeList Auto
FormList Property AK69NomList Auto
FormList Property AK69BookList Auto
FormList Property AK69FlowersList Auto
FormList Property AK69WhyThoughList Auto
FormList Property AK69UniqueList Auto


Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
  If AK69MegaraGiftTime.GetValue() == 1.0
    If akDestContainer == Megara as ObjectReference
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
      AK69MegaraGiftTime.SetValue(0.0)
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
    Megara.RemoveItem(ItemType, 1, True, None)
    AK69MegaraBoozeScene.Start()
    Return 
  EndIf
  If AK69NomList.HasForm(ItemType)
	Megara.RemoveItem(ItemType, 1, True, None)
    AK69MegaraNomScene.Start()
    Return 
  EndIf
  If AK69BookList.HasForm(ItemType)
    AK69MegaraBookScene.Start()
    Return 
  EndIf
  If AK69WhyThoughList.HasForm(ItemType)
    AK69MegaraWhyThoughScene.Start()
    Return 
  EndIf
  If AK69FlowersList.HasForm(ItemType)
    AK69MegaraFlowersScene.Start()
    Return 
  EndIf
  Int uniqueIndex = AK69UniqueList.Find(ItemType)
  If uniqueIndex != -1
    If uniqueIndex >= 0 && uniqueIndex <= 24
	AK69MegaraUniqueGift.SetValue((uniqueIndex + 1) as Float)
    EndIf
    AK69MegaraUniqueScene.Start()
    Return 
  EndIf
  Self.GetItemValue(ItemType)
  AK69MegaraGiftScene.Start()
EndFunction