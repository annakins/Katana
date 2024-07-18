Scriptname AK69PlayerStoleNOTK extends Quest  

Scene Property PlayerReactionsScene auto
GlobalVariable property AK69KatanaCommentVar auto

Function Setup()	
	AK69KatanaCommentVar.SetValue(15)
	PlayerReactionsScene.Start()
    Debug.Notification ("PLAYER STOLE")
    Self.Stop()
EndFunction