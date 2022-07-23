Scriptname AK69KatanaOpportunityScript extends ActiveMagicEffect  

Quest Property AK69KatanaShadowAttackQuest Auto

Event OnEffectStart(Actor Target, Actor Caster)
	If (Target.IsInKillMove())
		return
	EndIf
	(AK69KatanaShadowAttackQuest as AK69KatanaShadowAttack).ShadowAttack()
Utility.Wait(4.0)
EndEvent

Event OnEffectFinish(Actor Target, Actor Caster)
	Utility.Wait(4.0)				
endevent