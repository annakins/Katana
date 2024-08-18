Scriptname AK69MegaraConfigScript extends Quest  

GlobalVariable Property AK69MegaraRelax Auto
Scene Property AK69MegaraReactions auto
GlobalVariable property AK69KatanaCommentVar auto

Function Setup()	
RegisterForTrackedStatsEvent()
EndFunction

;This unregisters anyway if you don't have the actor in your party

Event OnTrackedStatsEvent(string asStatFilter, int aiStatValue)
if AK69MegaraRelax.GetValue() == 0
	if (asStatFilter == "Dragon Souls Collected")
		UpdateDragonSouls()
	elseif (asStatFilter == "Shouts Mastered")
		UpdateShoutsMastered()
	elseif (asStatFilter == "Armor Made")
		UpdateArmorMade()
	Else
		AK69KatanaCommentVar.SetValue(0)
	endif
endif
endEvent

;==============INCREASE==============

function UpdateDragonSouls()
		AK69KatanaCommentVar.SetValue(4)
		AK69MegaraReactions.Start()
		;Debug.Notification ("UpdateDragonSouls")
endFunction

function UpdateShoutsMastered()
		AK69KatanaCommentVar.SetValue(5)
		AK69MegaraReactions.Start()
		;Debug.Notification ("UpdateShoutsMastered")
endFunction

function UpdateArmorMade()
		AK69KatanaCommentVar.SetValue(7)
		AK69MegaraReactions.Start()
		;Debug.Notification ("UpdateArmorMade")
endFunction