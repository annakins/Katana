Scriptname AK69PlayerHouseScriptNOTK extends Quest  

Scene Property PlayerReactionsQuestScene auto
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
    AK69KatanaCommentVar.SetValue(3)
    PlayerReactionsQuestScene.Start()
    Debug.Notification ("UpdateHousesOwned")
    Self.Stop()
EndFunction
