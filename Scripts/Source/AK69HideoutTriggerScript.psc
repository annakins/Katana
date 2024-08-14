Scriptname AK69HideoutTriggerScript extends ObjectReference  

int Property SceneTriggered  Auto  
GlobalVariable Property AK69KatanaRecruited Auto
GlobalVariable Property AK69KatanaRelax Auto
Actor Property Katana auto
Quest Property AK69KatanaPersonalQuest Auto
Activator Property InVis Auto

Event OnTriggerEnter(ObjectReference akActionRef)

    if (akActionRef == Game.GetPlayer() && AK69KatanaRecruited.GetValue() == 1 && AK69KatanaRelax.GetValue() == 0 && AK69KatanaPersonalQuest.GetStage() == 180)
        if SceneTriggered == 0
            Katana.EvaluatePackage()
            SceneTriggered = 1 
            if (Katana.GetDistance(Game.GetPlayer()) >= 1000)
            TeleTime()
            Katana.EvaluatePackage()
            endif
        endif
    endif
endEvent

Function TeleTime()
Katana.setAlpha(0.1)
BeginTeleport()
Katana.MoveTo(Game.GetPlayer() as objectreference, -500.000 * Math.Sin(Game.GetPlayer().GetAngleZ()), -500.000 * Math.Cos(Game.GetPlayer().GetAngleZ()))
EndTeleport()
Utility.Wait(0.3)   
Katana.setAlpha(1)
EndFunction

function BeginTeleport()
Katana.PlaceAtMe(InVis)
endFunction

function EndTeleport()
Katana.PlaceAtMe(InVis)
endFunction