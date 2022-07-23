Scriptname AK69PlayerSitScript extends ReferenceAlias  
Location Property DrunkenHuntsman  Auto  
Location Property SilverBloodInn  Auto  
Location Property BeeandBarb  Auto  
Location Property FrozenHearth  Auto  
Location Property Hideout Auto

Event OnSit(ObjectReference akFurniture)
if (GetOwningQuest().GetStage() == 20 && Game.GetPlayer().GetCurrentLocation() == DrunkenHuntsman)
GetOwningQuest().SetStage(30)
Endif

if (GetOwningQuest().GetStage() == 50 && Game.GetPlayer().GetCurrentLocation() == SilverBloodInn)
GetOwningQuest().SetStage(60)
Endif

if (GetOwningQuest().GetStage() == 90 && Game.GetPlayer().GetCurrentLocation() == BeeandBarb)
GetOwningQuest().SetStage(100)
Endif
EndEvent

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
if (GetOwningQuest().GetStage() == 130 && FrozenHearth == akNewLoc) 
	GetOwningQuest().SetStage(140) 
Endif

if (GetOwningQuest().GetStage() == 180 && Hideout == akNewLoc)	 
	GetOwningQuest().SetStage(190) 
Endif
endEvent