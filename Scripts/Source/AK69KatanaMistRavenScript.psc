Scriptname AK69KatanaMistRavenScript extends ActiveMagicEffect  


;-- Properties --------------------------------------




;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState



; Skipped compiler generated GetState

Event OnEffectStart(Actor akTarget, Actor akCaster)


utility.Wait(3)

endEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

	utility.Wait(3)
endEvent
