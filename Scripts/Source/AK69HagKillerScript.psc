Scriptname AK69HagKillerScript extends ReferenceAlias  

AK69TheRavensLamentScript Property AK69TheRavensLamentQuest  Auto  
GlobalVariable Property AK69HagKillCount Auto

Event OnDeath(Actor akKiller)

	AK69HagKillCount.SetValue(AK69HagKillCount.GetValue() + 1)
	AK69TheRavensLamentQuest.HagTally()

EndEvent