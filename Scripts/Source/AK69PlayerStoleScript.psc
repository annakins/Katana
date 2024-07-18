Scriptname AK69PlayerStoleScript extends Quest  

AK69KatanaController property KatanaDataStorage auto
Scene Property KatanaPlayerReactionsScene auto
GlobalVariable property KatanaPlayerReactionsVar auto

Function Setup()	
    KatanaDataStorage.DecreaseRateMinor()
	KatanaPlayerReactionsVar.SetValue(15)
	KatanaPlayerReactionsScene.Start()
    Debug.Notification ("PLAYER STOLE")
    Self.Stop()
EndFunction