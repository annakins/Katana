Scriptname AK69ToastBlock extends ObjectReference  

Actor Property Toast  Auto 
actorbase property Megaramountbase auto


Event OnInit()
    Toast.BlockActivation()
    self.setactorowner(Megaramountbase)
EndEvent

