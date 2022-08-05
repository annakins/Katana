Scriptname AK69DoorHideoutSealedScript extends ReferenceAlias  

Quest property AK69KatanaPersonalQuest Auto
Message property sealedMSG Auto
bool isSealed
GlobalVariable property FollowerRecruited Auto

Event OnInit()
SetupSealedDoor()
EndEvent

Function SetupSealedDoor()
	if (Self.GetOwningQuest().GetStage() < 170)
	Self.GetReference().BlockActivation(True)
	isSealed = True
	Utility.Wait(0.5)	
	EndIf
EndFunction

Function UnsealDoor()
	Self.GetReference().BlockActivation(False)
	isSealed = False		
	Self.GetReference().SetOpen(True)	
EndFunction

Event OnActivate(ObjectReference obj)
	if (isSealed) || (FollowerRecruited.GetValue() == 0)
	sealedMSG.Show()
	EndIf	
EndEvent