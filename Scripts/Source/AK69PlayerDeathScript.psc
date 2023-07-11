Scriptname AK69PlayerDeathScript extends ReferenceAlias  

scene property PlayerDiedReaction auto
GlobalVariable property AK69Recruited auto

function OnDying(Actor akKiller)
if (AK69Recruited.GetValue() ==1) 
PlayerDiedReaction.Start()
endif
endFunction

