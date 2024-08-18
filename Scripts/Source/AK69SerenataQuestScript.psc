Scriptname AK69SerenataQuestScript extends Quest  

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AK69SQCourierReadyVar auto
GlobalVariable Property AK69HoneymoonBabesTimer auto
Quest Property AK69KatanaFollowQuest Auto
Quest Property AK69MegaraFollowQuest Auto
Objectreference Property AK69CozyMarker1 auto
ObjectReference Property Azatar  Auto  
ObjectReference Property Chadryn  Auto  
ObjectReference Property Deepvos  Auto  
Actor Property Katana Auto
Actor Property Megara Auto
Activator Property AK69KatanaFXActivator Auto
Activator Property AK69MegaraFXActivator Auto
Book Property AK69SQNote Auto
Scroll Property AK69SQScroll Auto
Quest Property WICourier Auto
ReferenceAlias Property NoteAliasRef Auto
ReferenceAlias Property ScrollAliasRef Auto

ObjectReference Property AK69CozyBed1 Auto  
ObjectReference Property AK69CozyBed2 Auto  
ObjectReference Property AK69CozyBed3 Auto  
ObjectReference Property AK69CozyBed4 Auto  
ObjectReference Property AK69CozyCookingPot Auto  
ObjectReference Property AK69CozyCrate Auto  
ObjectReference Property AK69CozyEmbers Auto  
ObjectReference Property AK69CozyLustyBook1 Auto  
ObjectReference Property AK69CozyLustyBook2 Auto  
ObjectReference Property AK69CozyMead1 Auto  
ObjectReference Property AK69CozyMush1 Auto  
ObjectReference Property AK69CozyMush2 Auto  
ObjectReference Property AK69CozyPlant1 Auto  
ObjectReference Property AK69CozySpit Auto  
ObjectReference Property AK69CozyStone Auto  
ObjectReference Property AK69CozyWine1 Auto  
ObjectReference Property AK69CozyRecallMarker Auto  

;Primarily used to handle functionality of setting globals that are used by individual WIComment quests to control how often comments about the player are heard

float DaysUntilCourier = 0.96 ;0.04 is 1 game hour

Function QuestReadyTime()
	float QuestReady = GameDaysPassed.GetValue() + DaysUntilCourier	
	AK69SQCourierReadyVar.SetValue(QuestReady)
    (AK69KatanaFollowQuest as AK69KatanaController).DismissFollower(0,0)
    (AK69MegaraFollowQuest as AK69MegaraController).DismissFollower(0,0)
    KatanaGoWoosh()
    MegaraGoWoosh()
EndFunction

Function PlaceNote()
    NoteAliasRef.ForceRefTo(Game.GetPlayer().PlaceAtMe(AK69SQNote))
    (WICourier as WICourierScript).AddAliasToContainer(NoteAliasRef)
    ScrollAliasRef.ForceRefTo(Game.GetPlayer().PlaceAtMe(AK69SQScroll))
    (WICourier as WICourierScript).AddAliasToContainer(ScrollAliasRef)
EndFunction

float DaysUntilBack = 1.92 ;0.04 is 1 game hour
Function HoneymoonTimerStart()
	float HoneymoonReady = GameDaysPassed.GetValue() + DaysUntilBack	
	AK69HoneymoonBabesTimer.SetValue(HoneymoonReady)
EndFunction


Function KatanaGoWoosh()
    Katana.setAlpha(0.1)
    BeginTeleportK()
    Katana.MoveTo(AK69CozyMarker1)
    Utility.Wait(0.3)   
    Katana.setAlpha(1)
EndFunction
Function MegaraGoWoosh()
    Megara.setAlpha(0.1)
    BeginTeleportM()
    Megara.MoveTo(AK69CozyMarker1)
    Utility.Wait(0.3)   
    Megara.setAlpha(1)
EndFunction

Function KatanaBack()
    Katana.setAlpha(0.1)
    BeginTeleportK()
    Katana.MoveTo(Game.GetPlayer() as objectreference, -500.000 * Math.Sin(Game.GetPlayer().GetAngleZ()), -500.000 * Math.Cos(Game.GetPlayer().GetAngleZ()))
    EndTeleportK()
    Utility.Wait(0.3)   
    Katana.setAlpha(1)
EndFunction

Function MegaraBack()
    Megara.setAlpha(0.1)
    BeginTeleportM()
    Megara.MoveTo(Game.GetPlayer() as objectreference, -500.000 * Math.Sin(Game.GetPlayer().GetAngleZ()), -500.000 * Math.Cos(Game.GetPlayer().GetAngleZ()))
    EndTeleportM()
    Utility.Wait(0.3)   
    Megara.setAlpha(1)
EndFunction


function BeginTeleportK()
    Katana.PlaceAtMe(AK69KatanaFXActivator)
endFunction
    
function BeginTeleportM()
    Megara.PlaceAtMe(AK69MegaraFXActivator)
endFunction

function EndTeleportK()
    Katana.PlaceAtMe(AK69KatanaFXActivator)
endFunction

function EndTeleportM()
    Megara.PlaceAtMe(AK69MegaraFXActivator)
 endFunction

 function EndQuest()
    Azatar.Disable()
    Chadryn.Disable()
    Deepvos.Disable()
    AK69CozyBed1.Enable() 
    AK69CozyBed2.Enable()  
    AK69CozyBed3.Enable() 
    AK69CozyBed4.Enable()
    AK69CozyCookingPot.Enable()  
    AK69CozyCrate.Enable()  
    AK69CozyEmbers.Enable()  
    AK69CozyLustyBook1.Enable()  
    AK69CozyLustyBook2.Enable()  
    AK69CozyMead1.Enable() 
    AK69CozyMush1.Enable()
    AK69CozyMush2.Enable()
    AK69CozyPlant1.Enable() 
    AK69CozySpit.Enable()
    AK69CozyStone.Enable()
    AK69CozyWine1.Enable()  
    AK69CozyRecallMarker.Enable()
    (AK69KatanaFollowQuest as AK69KatanaController).SetFollower(Katana)
    (AK69MegaraFollowQuest as AK69MegaraController).SetFollower(Megara)
 endFunction