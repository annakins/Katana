Scriptname AK69ElliDeathScript extends ObjectReference  

ActorBase Property River Auto

Event OnDeath (Actor killer)
River.SetInvulnerable(false)
EndEvent