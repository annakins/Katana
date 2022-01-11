Scriptname AK69KatanaCheckRelationshipScript extends ActiveMagicEffect  

AK69KatanaController property KatanaDataStorage auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Float Value = KatanaDataStorage.PlayerAssessmentRelationship
	Debug.Messagebox("Float: " + Value)
EndEvent

