Scriptname AK69ShaleTrackerScript extends Quest  

SPELL Property AK69ShaleSummonSP  Auto  

SPELL Property AK69ShaleUnstuckSP  Auto  

Actor Property Shale  Auto  

Quest Property AK69ShaleFollowQuest  Auto  

Message Property AK69ShaleIntroMessage  Auto  

Message Property AK69ShaleSkipMessage  Auto  

MiscObject Property AK69ShaleFlower  Auto  

Objectreference Property AK69LuckyREF Auto

Function Setup()
AK69LuckyREF.Enable()
Game.GetPlayer().AddSpell(AK69ShaleSummonSP)
Game.GetPlayer().AddSpell(AK69ShaleUnstuckSP)
Game.GetPlayer().AddItem(AK69ShaleFlower)
Shale.AllowBleedoutDialogue(true)
AK69ShaleFollowQuest.Start()
AK69ShaleIntroMessage.Show()
Setstage(5)
EndFunction

Function SetupSkipAll()
AK69LuckyREF.Enable()
Game.GetPlayer().AddSpell(AK69ShaleSummonSP)
Game.GetPlayer().AddSpell(AK69ShaleUnstuckSP)
Game.GetPlayer().AddItem(AK69ShaleFlower)
Shale.AllowBleedoutDialogue(true)
AK69ShaleFollowQuest.Start()
AK69ShaleSkipMessage.Show()
Setstage(5)
EndFunction