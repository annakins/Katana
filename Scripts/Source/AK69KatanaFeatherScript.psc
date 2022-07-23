Scriptname AK69KatanaFeatherScript extends ObjectReference  

Quest property AK69KatanaTracker auto

function OnEquipped(Actor akActor)
	if AK69KatanaTracker.IsObjectiveDisplayed(0)
		AK69KatanaTracker.SetObjectiveCompleted(0, true)
		AK69KatanaTracker.SetObjectiveDisplayed(0, false, false)
		AK69KatanaTracker.SetObjectiveCompleted(0, false)
	else
		AK69KatanaTracker.SetObjectiveDisplayed(0, true, false)
	endIf
endFunction