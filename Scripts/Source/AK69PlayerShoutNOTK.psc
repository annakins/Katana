Scriptname AK69PlayerShoutNOTK extends Quest  

Scene Property PlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto

Function Setup()	
    AK69KatanaCommentVar.SetValue(2)
	PlayerReactionsQuestScene.Start()
    Debug.Notification ("SOMEONE TOOTED")
    Self.Stop()
EndFunction


