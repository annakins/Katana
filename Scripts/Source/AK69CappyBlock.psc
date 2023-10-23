Scriptname AK69CappyBlock extends ObjectReference  

Actor Property Cappy  Auto 
actorbase property Megaramountbase auto
Message Property AK69CappyLove Auto
GlobalVariable Property AK69YesIWontStealCappyVar Auto

Event OnInit()
    Cappy.BlockActivation()
    self.setactorowner(Megaramountbase)   
EndEvent

Event OnActivate(ObjectReference obj)
    if AK69YesIWontStealCappyVar.GetValue() == 0
    AK69CappyLove.Show()
    AK69YesIWontStealCappyVar.SetValue(1)
    endif
EndEvent