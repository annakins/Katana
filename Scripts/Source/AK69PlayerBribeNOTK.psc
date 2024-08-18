Scriptname AK69PlayerBribeNOTK extends activemagiceffect  

Scene Property PlayerReactionsScene auto
GlobalVariable property AK69KatanaCommentVar auto
GlobalVariable property AK69PlayerBribeVar auto

;If not in party, actor will say something about you bribing someone when you recruit them again

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
    AK69KatanaCommentVar.SetValue(11)
    PlayerReactionsScene.Start()
    ;Debug.Notification ("UpdateBribez")
EndFunction

