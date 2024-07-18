Scriptname AK69PlayerBrawlNOTK extends activemagiceffect  

Scene Property PlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    AK69KatanaCommentVar.SetValue(1)
    PlayerReactionsQuestScene.Start()	
    Debug.Notification ("PLAYER BRAWLZ") 
EndEvent

