Scriptname AK69PlayerStoleHorseScript extends ReferenceAlias  

AK69KatanaController property KatanaDataStorage auto
Scene Property AK69KatanaPlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto
Faction property PlayerHorseFaction Auto
ReferenceAlias property Horse Auto

Event OnActivate(ObjectReference akActionRef)

    if akActionRef == Game.GetPlayer() && !Horse.GetActorReference().IsInFaction(PlayerHorseFaction)
    KatanaDataStorage.DecreaseRateModerate()
	AK69KatanaCommentVar.SetValue(16)
	AK69KatanaPlayerReactionsQuestScene.Start()
	Debug.Notification ("UpdateHorsesStolen")
    endif

EndEvent