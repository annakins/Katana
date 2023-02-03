Scriptname AK69TakiyoBlock extends ObjectReference  

Actor Property Takiyo  Auto 
actorbase property Katanamountbase auto
Message Property AK69AnnaLove Auto
GlobalVariable Property AK69YesIWontStealTakiyoVar Auto

Event OnInit()
    Takiyo.BlockActivation()
    self.setactorowner(Katanamountbase)
EndEvent

Event OnActivate(ObjectReference obj)
    if AK69YesIWontStealTakiyoVar.GetValue() == 0
    AK69AnnaLove.Show()
    AK69YesIWontStealTakiyoVar.SetValue(1)
    endif
EndEvent