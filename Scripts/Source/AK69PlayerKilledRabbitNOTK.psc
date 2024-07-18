Scriptname AK69PlayerKilledRabbitNOTK extends ReferenceAlias  

Scene Property PlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto

Event OnDeath(Actor akKiller)
    if (akKiller == Game.GetPlayer())
        AK69KatanaCommentVar.SetValue(14)
       PlayerReactionsQuestScene.Start()
        Debug.Notification ("UpdateBunnies")
    endIf
  endEvent

