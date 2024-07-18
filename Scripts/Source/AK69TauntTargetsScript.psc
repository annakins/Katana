Scriptname AK69TauntTargetsScript extends activemagiceffect  

Actor Property PlayerREF Auto

Function OnEffectStart(Actor akTarget, Actor akCaster)
	if (akTarget != None) && (akCaster != None)
       ; Debug.Notification ("This went through")
			if akTarget.GetCombatTarget() != akCaster
                Debug.Notification ("I like pizza")
				if akTarget
                    ;Debug.Notification ("Sushi is good also")	
					float anger = akTarget.GetActorValue("Aggression")
					akTarget.SetActorValue("Aggression", 0)
					akTarget.StopCombat()
                    akTarget.StartCombat(akCaster)
					akTarget.SetActorValue("Aggression", anger)
				endif
			endif

	endif
EndFunction