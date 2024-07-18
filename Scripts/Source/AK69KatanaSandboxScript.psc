Scriptname AK69KatanaSandboxScript extends activemagiceffect  

;Event OnEffectStart(Actor akTarget, Actor akCaster)
    ;akCaster.EvaluatePackage()
    ;Debug.Notification ("Actor will sandbox")
 ; endEvent

  Event OnEffectFinish(Actor akTarget, Actor akCaster)
    akCaster.EvaluatePackage()
    ;Debug.Notification ("Actor should stop sandbox")
  endEvent