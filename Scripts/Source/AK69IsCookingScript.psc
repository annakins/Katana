Scriptname AK69IsCookingScript extends activemagiceffect  

GlobalVariable property IsCookingVar auto

Event OnEffectStart(Actor aktarget, Actor akcaster)    
IsCookingVar.SetValue(1)
EndEvent

Event OnEffectFinish(Actor target, Actor caster)
IsCookingVar.SetValue(0)
EndEvent 