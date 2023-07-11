Scriptname AK69KatanaFeatherScript extends ObjectReference  

Quest property AK69KatanaFollowQuest auto

function OnEquipped(Actor akActor)
	if AK69KatanaFollowQuest.IsObjectiveDisplayed(20)
		AK69KatanaFollowQuest.SetObjectiveCompleted(20, true)
		AK69KatanaFollowQuest.SetObjectiveDisplayed(20, false, false)
		AK69KatanaFollowQuest.SetObjectiveCompleted(20, false)
	else
		AK69KatanaFollowQuest.SetObjectiveDisplayed(20, true, false)
	endIf
endFunction