Scriptname AK69ChadOnHitScript extends ReferenceAlias  

Scene Property AK69ChadrynRiverwoodScene Auto
Location Property Riverwood Auto

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
    if  akAggressor == game.getPlayer() && (Game.GetPlayer().GetCurrentLocation() == Riverwood) && GetOwningQuest().GetStage() == 30
        GetOwningQuest().SetObjectiveCompleted(30)
        AK69ChadrynRiverwoodScene.Stop()
        GetOwningQuest().SetStage(40)
    endif
EndEvent