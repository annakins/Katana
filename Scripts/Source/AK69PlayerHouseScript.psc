Scriptname AK69PlayerHouseScript extends Quest  

AK69KatanaController property KatanaDataStorage auto
Scene Property AK69KatanaPlayerReactionsQuestScene auto
GlobalVariable property AK69KatanaCommentVar auto
GlobalVariable property AK69PlayerHouseVar auto

Function Setup()	
  if Game.QueryStat("Houses Owned") > AK69PlayerHouseVar.GetValue()
    AK69PlayerHouseVar.SetValue(Game.QueryStat("Houses Owned"))
    HouseTime()
  else
    Self.Stop()
  endif
EndFunction

Function HouseTime()	
    KatanaDataStorage.IncreaseRateMinor()
    AK69KatanaCommentVar.SetValue(3)
    AK69KatanaPlayerReactionsQuestScene.Start()
    ;Debug.Notification ("UpdateHousesOwned")
    Self.Stop()
EndFunction
