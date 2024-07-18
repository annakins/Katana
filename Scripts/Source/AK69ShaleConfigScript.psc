Scriptname AK69ShaleConfigScript extends Quest  

GlobalVariable Property AK69ShaleRelax Auto
Scene Property AK69ShaleReactions auto
GlobalVariable property AK69KatanaCommentVar auto

Function Setup()	
RegisterForTrackedStatsEvent()
EndFunction

;This unregisters anyway if you don't have the actor in your party

Event OnTrackedStatsEvent(string asStatFilter, int aiStatValue)
if AK69ShaleRelax.GetValue() == 0
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
		AK69ShaleReactions.Start()
		Debug.Notification ("UpdateDragonSouls")
endFunction

function UpdateShoutsMastered()
		AK69KatanaCommentVar.SetValue(5)
		AK69ShaleReactions.Start()
		Debug.Notification ("UpdateShoutsMastered")
endFunction

function UpdateArmorMade()
		AK69KatanaCommentVar.SetValue(7)
		AK69ShaleReactions.Start()
		Debug.Notification ("UpdateArmorMade")
endFunction