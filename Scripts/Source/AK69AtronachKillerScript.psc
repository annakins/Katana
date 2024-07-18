Scriptname AK69AtronachKillerScript extends ReferenceAlias  

AK69TheRavensLamentScript Property AK69TheRavensLamentQuest  Auto  
GlobalVariable Property AK69AtronachKillCount Auto

Event OnDeath(Actor akKiller)

	AK69AtronachKillCount.SetValue(AK69AtronachKillCount.GetValue() + 1)
	AK69TheRavensLamentQuest.BossTally()

EndEvent