Scriptname AK69ElliEssentialScript extends ObjectReference  

Quest Property AK69KatanaPersonalQuest Auto
Actor Property Elli Auto

Event OnUpdate()
    If AK69KatanaPersonalQuest.GetStage() >= 180
		Elli.GetActorBase().SetEssential(False)
	EndIf

EndEvent