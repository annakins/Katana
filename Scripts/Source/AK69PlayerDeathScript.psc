Scriptname AK69PlayerDeathScript extends ReferenceAlias  

scene property PlayerDiedReaction auto
scene property PlayerDiedReactionMegara auto
GlobalVariable property AK69KatanaRecruited auto
GlobalVariable property AK69MegaraRecruited auto

function OnDying(Actor akKiller)
if (AK69KatanaRecruited.GetValue() ==1) 
PlayerDiedReaction.Start()
elseif (AK69MegaraRecruited.GetValue() ==1) 
PlayerDiedReactionMegara.Start()
endif
endFunction

