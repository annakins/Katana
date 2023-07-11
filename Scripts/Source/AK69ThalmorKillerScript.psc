Scriptname AK69ThalmorKillerScript extends ReferenceAlias  Conditional

AK69TheKhatsEyeScript Property AK69TheKhatsEyeQuest  Auto  
GlobalVariable Property AK69ThalmorKillCount Auto

Event OnDeath(Actor akKiller)

	AK69ThalmorKillCount.SetValue(AK69ThalmorKillCount.GetValue() + 1)
	AK69TheKhatsEyeQuest.BossTally()

EndEvent

