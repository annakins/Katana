Scriptname AK69PlayerKilledRabbitScript extends ReferenceAlias  

AK69KatanaController property KatanaDataStorage auto
Scene Property AK69KatanaPlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto

Event OnDeath(Actor akKiller)
    if (akKiller == Game.GetPlayer())
        KatanaDataStorage.DecreaseRateMajor()
        AK69KatanaCommentVar.SetValue(14)
        AK69KatanaPlayerReactionsQuestScene.Start()
        Debug.Notification ("UpdateBunnies")
    endIf
  endEvent

