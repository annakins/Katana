Scriptname AK69KhatsEyePlayerScript extends ReferenceAlias  

Actor Property Katana Auto
Actor Property Megara Auto
Location Property MoorsideInn Auto  
Scene Property AK69TheKhatsEyeQuestIntroScene Auto
GlobalVariable Property AK69AlTharoGoodbyeTimeVar Auto
GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69KatanaRelax Auto
GlobalVariable Property AK69MegaraRecruited Auto
GlobalVariable Property AK69MegaraRelax Auto

;This used to have Katana.IsInLocation
Event OnLocationChange(Location akOldLoc, Location akNewLoc)
if ((GetOwningQuest().GetStage() == 0) && MoorsideInn == akNewLoc && (Katana.IsPlayerTeammate() && Katana.GetActorValue("WaitingForPlayer") == 0) && (Megara.IsPlayerTeammate() && Megara.GetActorValue("WaitingForPlayer") == 0))
	AK69TheKhatsEyeQuestIntroScene.Start()
	GetOwningQuest().SetObjectiveCompleted(5)
Endif

if (GetOwningQuest().GetStage() == 80 && akNewLoc != MoorsideInn)
If GameDaysPassed.GetValue() >= AK69AlTharoGoodbyeTimeVar.GetValue()
	GetOwningQuest().SetStage(90)
Endif
endif

EndEvent

