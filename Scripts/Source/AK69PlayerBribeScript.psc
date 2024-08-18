Scriptname AK69PlayerBribeScript extends activemagiceffect  

AK69KatanaController property KatanaDataStorage auto
Scene Property AK69KatanaPlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto
GlobalVariable property AK69PlayerBribeVar auto

;Katana will find out you bribed someone when you recruit her again

Event OnEffectStart(Actor aktarget, Actor akcaster)    
int Bribes = Game.QueryStat("Bribes")
if Bribes > AK69PlayerBribeVar.GetValue()
    AK69PlayerBribeVar.SetValue(Game.QueryStat("Bribes"))
   BribeTime()
else
    ;Debug.Notification ("Bribe Do Nothing")
endif
EndEvent

Function BribeTime()
    KatanaDataStorage.DecreaseRateMinor()
    AK69KatanaCommentVar.SetValue(11)
    AK69KatanaPlayerReactionsQuestScene.Start()
    ;Debug.Notification ("UpdateBribez")
EndFunction

