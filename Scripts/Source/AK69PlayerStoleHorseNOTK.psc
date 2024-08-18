Scriptname AK69PlayerStoleHorseNOTK extends ReferenceAlias  

Scene Property PlayerReactionsScene auto
GlobalVariable property AK69KatanaCommentVar auto
Faction property PlayerHorseFaction Auto
ReferenceAlias property Horse Auto

Event OnActivate(ObjectReference akActionRef)
    if akActionRef == Game.GetPlayer() && !Horse.GetActorReference().IsInFaction(PlayerHorseFaction)
	AK69KatanaCommentVar.SetValue(16)
	PlayerReactionsScene.Start()
	;Debug.Notification ("UpdateHorsesStolen")
    endif
EndEvent