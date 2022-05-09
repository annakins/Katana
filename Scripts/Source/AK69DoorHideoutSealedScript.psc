Scriptname AK69DoorHideoutSealedScript extends ReferenceAlias  


EffectShader property DoorVFX Auto
Sound property RumbleSFX Auto
Quest property AK69KatanaPersonalQuest Auto
Message property sealedMSG Auto
bool isSealed

Event OnInit()
SetupSealedDoor()
EndEvent

Function SetupSealedDoor()
	if (Self.GetOwningQuest().GetStage() < 180)
		Self.GetReference().BlockActivation(True)
		isSealed = True
		Utility.Wait(0.5)
		DoorVFX.Play(Self.GetReference())
	EndIf
EndFunction

Function UnsealDoor()
	Self.GetReference().BlockActivation(False)
	isSealed = False
	Game.GetPlayer().RampRumble(0.15, 1, 1600)
	RumbleSFX.Play(Game.GetPlayer())
	DoorVFX.Stop(Self.GetReference())
	Self.GetReference().SetOpen(True)
	
EndFunction

Event OnActivate(ObjectReference obj)
	if (isSealed)
		sealedMSG.Show()
	EndIf
EndEvent