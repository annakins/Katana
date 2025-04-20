Scriptname AK69PlayerSitScript extends ReferenceAlias  
Location Property DrunkenHuntsman  Auto  
Location Property SilverBloodInn  Auto  
Location Property BeeandBarb  Auto  
Location Property FrozenHearth  Auto  
Location Property Hideout Auto
Actor Property Katana Auto
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69KatanaRelaxVar Auto


Event OnSit(ObjectReference akFurniture)
if (GetOwningQuest().GetStage() == 20 && Game.GetPlayer().GetCurrentLocation() == DrunkenHuntsman && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0))
GetOwningQuest().SetStage(30)
Endif

if (GetOwningQuest().GetStage() == 50 && Game.GetPlayer().GetCurrentLocation() == SilverBloodInn && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0))
GetOwningQuest().SetStage(60)
Endif

if (GetOwningQuest().GetStage() == 90 && Game.GetPlayer().GetCurrentLocation() == BeeandBarb && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0))
GetOwningQuest().SetStage(100)
Endif
EndEvent

;This used to have Katana.IsInLocation(FrozenHearth)
;This also used to have AK69KatanaRecruited and AK69KatanaRelaxVar - changed in 3.0.4
Event OnLocationChange(Location akOldLoc, Location akNewLoc)
	if (GetOwningQuest().GetStage() == 130 && FrozenHearth == akNewLoc && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0))
	GetOwningQuest().SetStage(140) 
Endif

	if (GetOwningQuest().GetStage() == 180 && Hideout == akNewLoc && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0))	 
	GetOwningQuest().SetStage(190) 
	Endif
endEvent