Scriptname AK69KatanaConfigScript extends Quest  

AK69KatanaController property KatanaDataStorage auto
GlobalVariable Property AK69KatanaRelax Auto
Scene Property KatanaPlayerReactionsScene auto
GlobalVariable property KatanaPlayerReactionsVar auto

Function Setup()	
RegisterForTrackedStatsEvent()
EndFunction

;This unregisters anyway if you don't have her in your party

Event OnTrackedStatsEvent(string asStatFilter, int aiStatValue)
if AK69KatanaRelax.GetValue() == 0
	if (asStatFilter == "Skill Increases")
		UpdateSkillIncreases()
	elseif (asStatFilter == "Quests Completed")
		UpdateQuestsCompleted()
	elseif (asStatFilter == "Dragon Souls Collected")
		UpdateDragonSouls()
	elseif (asStatFilter == "Shouts Learned")
		UpdateShoutsLearned()
	elseif (asStatFilter == "Shouts Mastered")
		UpdateShoutsMastered()
	elseif (asStatFilter == "Weapons Made")
		UpdateWeapsMade()
	elseif (asStatFilter == "Armor Made")
		UpdateArmorMade()
	Else
		KatanaPlayerReactionsVar.SetValue(0)
	endif
endif
endEvent

;==============INCREASE==============

;works
function UpdateSkillIncreases()
		KatanaDataStorage.IncreaseRateMinor()		
		;Debug.Notification ("UpdateSkillIncreases")
endFunction

;works
function UpdateQuestsCompleted()
		KatanaDataStorage.IncreaseRateMinor()
		;Debug.Notification ("UpdateQuestsCompleted")
endFunction

;works
function UpdateDragonSouls()
		KatanaDataStorage.IncreaseRateModerate()
		KatanaPlayerReactionsVar.SetValue(4)
		KatanaPlayerReactionsScene.Start()
		;Debug.Notification ("UpdateDragonSouls")
endFunction

;works
function UpdateShoutsLearned()
		KatanaDataStorage.IncreaseRateModerate()
		;Debug.Notification ("UpdateShoutsLearned")
endFunction

;works
function UpdateShoutsMastered()
		KatanaDataStorage.IncreaseRateModerate()
		KatanaPlayerReactionsVar.SetValue(5)
		KatanaPlayerReactionsScene.Start()
		;Debug.Notification ("UpdateShoutsMastered")
endFunction

;works
function UpdateWeapsMade()
		KatanaDataStorage.IncreaseRateMinor()
		KatanaPlayerReactionsVar.SetValue(6)
		;Debug.Notification ("UpdateWeapsMade")
endFunction

;works
function UpdateArmorMade()
		KatanaDataStorage.IncreaseRateMinor()
		KatanaPlayerReactionsVar.SetValue(7)
		KatanaPlayerReactionsScene.Start()
		;Debug.Notification ("UpdateArmorMade")
endFunction