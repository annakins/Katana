Scriptname AK69PlayerShoutScript extends Quest  

Scene Property AK69KatanaPlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto

Function Setup()	
    AK69KatanaCommentVar.SetValue(2)
	AK69KatanaPlayerReactionsQuestScene.Start()
    ;Debug.Notification ("SOMEONE TOOTED")
    Self.Stop()
EndFunction


