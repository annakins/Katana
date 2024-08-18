Scriptname AK69PlayerMurderNOTK extends Quest  

Scene Property PlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto

Function Setup()	
	AK69KatanaCommentVar.SetValue(13)
	PlayerReactionsQuestScene.Start()
    ;Debug.Notification ("UpdateMurders")
    Self.Stop()
EndFunction
