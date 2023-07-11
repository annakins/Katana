Scriptname AK69KhatsEyePlayerScript extends ReferenceAlias  

Actor Property Katana Auto
Actor Property Megara Auto
Location Property MoorsideInn Auto  
Scene Property AK69TheKhatsEyeQuestIntroScene Auto
GlobalVariable Property AK69AlTharoGoodbyeTimeVar Auto
GlobalVariable Property GameDaysPassed Auto

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
if (GetOwningQuest().GetStage() == 0 && MoorsideInn == akNewLoc && Katana.IsInLocation(MoorsideInn) && Megara.IsInLocation(MoorsideInn))
	AK69TheKhatsEyeQuestIntroScene.Start()
Endif

if (GetOwningQuest().GetStage() == 80 && akNewLoc != MoorsideInn)
If GameDaysPassed.GetValue() >= AK69AlTharoGoodbyeTimeVar.GetValue()
	GetOwningQuest().SetStage(90)
Endif
endif

EndEvent

