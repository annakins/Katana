Scriptname AK69KatanaMountScript extends ReferenceAlias

actor property Katana auto
actor property Player auto
actor property Takiyo auto
ReferenceAlias Property KatanaRef Auto
ReferenceAlias Property TakiyoRef Auto
faction property CurrentFollowerFaction auto
globalvariable property AK69KatanaRidingVar auto
globalvariable property FollowerRecruited auto
globalvariable property KatanaRelaxVar auto
Activator Property OutVis Auto
Activator Property InVis Auto
VisualEffect Property Sparkle Auto

function BeginTeleport()
	Takiyo.PlaceAtMe(InVis)
	endFunction	
	function EndTeleport()
	Takiyo.PlaceAtMe(OutVis)
	endFunction

function OnInit()
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
	if Player.IsOnMount() && (FollowerRecruited.GetValue() ==1) && AK69KatanaRidingVar.GetValue() == 1 as Float && (KatanaRelaxVar.GetValue() == 0)		
		Utility.Wait(1)
		Katana.OnAnimationEvent(none, "tailHorseMount")
		;Utility.Wait(3)
	endIf
		If Katana.GetActorValue("WaitingForPlayer") == 0 && (KatanaRelaxVar.GetValue() == 0) && (FollowerRecruited.GetValue() ==1) 	
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
				Utility.Wait(1)
				Katana.Dismount()
				Katana.EvaluatePackage()
				Endif
			EndIf
		Else
			Return
		EndIf	
endFunction

;This plays when you mount
Function MistRavenCast()
	Actor TakiyoIrin = TakiyoRef.GetReference() as Actor
	Actor KatanaIrin = KatanaRef.GetReference() as Actor
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

;This is so not just a mount script huehuheuhue

;==============GIFT SYSTEM==============	
Form TheItem
Bool GaveItem

AK69KatanaController Property DataStorage Auto
Scene Property AK69KatanaBoozeScene Auto
Scene Property AK69KatanaNomScene Auto
Scene Property AK69KatanaBookScene Auto
Scene Property AK69KatanaFlowersScene Auto
Scene Property AK69KatanaWhyThoughScene Auto
Scene Property AK69KatanaUniqueScene Auto
Scene Property AK69KatanaGiftScene Auto
GlobalVariable Property AK69KatanaGiftTime Auto
GlobalVariable Property AK69KatanaUniqueGift Auto
FormList Property AK69BoozeList Auto
FormList Property AK69NomList Auto
FormList Property AK69BookList Auto
FormList Property AK69FlowersList Auto
FormList Property AK69WhyThoughList Auto
FormList Property AK69UniqueList Auto


Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
  If AK69KatanaGiftTime.GetValue() == 1.0
    If akDestContainer == Katana as ObjectReference
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
      AK69KatanaGiftTime.SetValue(0.0)
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
    Katana.RemoveItem(ItemType, 1, True, None)
    AK69KatanaBoozeScene.Start()
    Return 
  EndIf
  If AK69NomList.HasForm(ItemType)
	Katana.RemoveItem(ItemType, 1, True, None)
    AK69KatanaNomScene.Start()
    Return 
  EndIf
  If AK69BookList.HasForm(ItemType)
    AK69KatanaBookScene.Start()
    Return 
  EndIf
  If AK69WhyThoughList.HasForm(ItemType)
    AK69KatanaWhyThoughScene.Start()
    Return 
  EndIf
  If AK69FlowersList.HasForm(ItemType)
    AK69KatanaFlowersScene.Start()
    Return 
  EndIf
  Int uniqueIndex = AK69UniqueList.Find(ItemType)
  If uniqueIndex != -1
    If uniqueIndex >= 0 && uniqueIndex <= 24
	AK69KatanaUniqueGift.SetValue((uniqueIndex + 1) as Float)
    EndIf
    AK69KatanaUniqueScene.Start()
    Return 
  EndIf
  Self.GetItemValue(ItemType)
  AK69KatanaGiftScene.Start()
EndFunction