Scriptname AK69CappyBlock extends ObjectReference  

Actor Property Cappy  Auto 
actorbase property Megaramountbase auto

Event OnInit()
    Cappy.BlockActivation()
    self.setactorowner(Megaramountbase)   
EndEvent

