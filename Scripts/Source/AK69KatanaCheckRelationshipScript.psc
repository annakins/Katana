Scriptname AK69KatanaCheckRelationshipScript extends ActiveMagicEffect  

AK69KatanaController property KatanaDataStorage auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Float Value = KatanaDataStorage.PlayerAssessmentRelationship
	Debug.Messagebox("Cautious: -5 | Civil: 0 | Friendly: 2 | Warm: 5 | Current: " + Value)
EndEvent

