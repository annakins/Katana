Scriptname AK69ElliDeathScript extends ObjectReference  

ActorBase Property River Auto
Actor Property Elli Auto

Event OnDeath (Actor killer)
River.SetInvulnerable(false)
EndEvent