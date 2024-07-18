Scriptname AK69LuckyBlock extends ObjectReference  

Actor Property Lucky  Auto 
actorbase property Shalemountbase auto
Message Property AK69LuckyLove Auto
GlobalVariable Property AK69YesIWontStealLuckyVar Auto

Event OnInit()
    Lucky.BlockActivation()
    self.setactorowner(Shalemountbase)   
EndEvent

Event OnActivate(ObjectReference obj)
    if AK69YesIWontStealLuckyVar.GetValue() == 0
        AK69LuckyLove.Show()
        AK69YesIWontStealLuckyVar.SetValue(1)
    endif
EndEvent