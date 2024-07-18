Scriptname AK69TauntPerksMGEFScript extends activemagiceffect  

Spell Property AK69TauntTargets Auto
Spell Property AK69TauntCooldown Auto
Scene Property AK69ShaleTauntScene Auto

Function OnEffectStart(Actor akTarget, Actor akCaster)
;scene stuff
AK69ShaleTauntScene.Start()
Utility.Wait(0.2)
AK69TauntTargets.Cast(akCaster)
Utility.Wait(0.2)
AK69TauntCooldown.Cast(akCaster)
Debug.Notification ("Shale is taunting and dancing")
EndFunction


