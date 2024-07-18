Scriptname AK69PlayerMurderScript extends Quest  

AK69KatanaController property KatanaDataStorage auto
Scene Property AK69KatanaPlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto

Function Setup()	
    KatanaDataStorage.DecreaseRateMajor()
	AK69KatanaCommentVar.SetValue(13)
	AK69KatanaPlayerReactionsQuestScene.Start()
    Debug.Notification ("UpdateMurders")
    Self.Stop()
EndFunction
