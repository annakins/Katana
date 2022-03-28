Scriptname AK69TakiyoBlock extends ObjectReference  


Actor Property Takiyo  Auto 
actorbase property Katanamountbase auto


Event OnInit()
    Takiyo.BlockActivation()
    self.setactorowner(Katanamountbase)
EndEvent

