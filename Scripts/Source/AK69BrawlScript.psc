Scriptname AK69BrawlScript extends activemagiceffect  

AK69KatanaController property KatanaDataStorage auto
Scene Property AK69KatanaPlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto

Event OnEffectStart(Actor aktarget, Actor akcaster)    
	KatanaDataStorage.IncreaseRateMinor()	
    AK69KatanaCommentVar.SetValue(1)
    AK69KatanaPlayerReactionsQuestScene.Start()	
    Debug.Notification ("PLAYER BRAWLZ") 
EndEvent

