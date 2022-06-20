Scriptname AK69PlayerDeathScript extends ReferenceAlias  

scene property PlayerDiedReaction auto


function OnDying(Actor akKiller)

	PlayerDiedReaction.Start()
endFunction