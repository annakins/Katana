;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 42
Scriptname QF_AK69KatanaPersonalQuest_058E1B19 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverHideout
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverHideout Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LuckyIrnsvar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LuckyIrnsvar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RunirWulfhart
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RunirWulfhart Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Elli
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Elli Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FrozenHearth
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FrozenHearth Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DrunkenHuntsman
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DrunkenHuntsman Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GaltunBoldThief
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GaltunBoldThief Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GaltunBoldThiefNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GaltunBoldThiefNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverHideout2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverHideout2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY River
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_River Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BeeandBarb
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BeeandBarb Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SealedDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SealedDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LuckyIrnsvarNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LuckyIrnsvarNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SilverBloodInn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SilverBloodInn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Cappy
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Cappy Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Throne
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Throne Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
setObjectiveCompleted(130)
WinterholdScene.Start()
RunirWulfhartRef.Delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(30)
setObjectiveDisplayed(39)
setObjectiveDisplayed(40)
AK69MegaraPQRidingVar.SetValue(1)
Alias_Megara.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
setObjectiveCompleted(70)
setObjectiveDisplayed(79)
setObjectiveDisplayed(80)
Alias_Megara.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
;Elli approaches
Utility.Wait(2)
WatchingMSG.show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_35
Function Fragment_35()
;BEGIN CODE
setObjectiveCompleted(250)
AK69KatanaPQCompleted.SetValue(1)
MegaraRecruitQuest.Start()
;complete
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN CODE
;River tells Katana to stop
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
;River has entered bleedout
AuraParticlesFX.stop(RiverRef)
SurrenderScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_33
Function Fragment_33()
;BEGIN CODE
setObjectiveDisplayed(250)
RiverRef.Delete()
Paralysis.Stop(Game.GetPlayer())
Paralysis.Stop(Alias_Katana.GetActorReference())
Game.EnablePlayerControls()
Alias_Katana.GetActorReference().SetRestrained(false)
setstage(260)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
setObjectiveCompleted(50)
setObjectiveDisplayed(60)
GaltunBoldThiefRef.Enable()
LuckyIrnsvarRef.Delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
setObjectiveCompleted(90)
setObjectiveDisplayed(100)
RunirWulfhartRef.Enable()
GaltunBoldThiefRef.Delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_38
Function Fragment_38()
;BEGIN CODE
;Megara dismounts at Markarth
AK69MegaraPQRidingVar.SetValue(0)
Alias_Cappy.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
setObjectiveCompleted(170)
setObjectiveDisplayed(180)
RiverHideout.AddToMap()

RiverRef.Enable()

actor ElliDeath = Alias_Elli.GetReference() as Actor
ElliDeath.moveto(RiverHideout2)
ElliDeath.GetActorBase().setEssential(false)

;Time to go to River and Elli is now mortal
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
;Megara and Katana say bye for now in Winterhold
Alias_Megara.GetActorReference().EvaluatePackage()
Alias_Elli.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
DrunkenHuntsman.AddToMap()
MegaraRef.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;They just entered the hideout
Alias_Elli.GetActorReference().moveto(RiverHideout2)
HideoutIntroScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
setObjectiveDisplayed(170)
;Elli just walked away, time for loyalty path
MegaraRef.moveto(DrunkenHuntsman)
utility.wait(1.0)
CappyRef.moveto(WhiterunCappy)
(Alias_SealedDoor as AK69DoorHideoutSealedScript).UnsealDoor()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_40
Function Fragment_40()
;BEGIN CODE
;Megara dismounts at Winterhold
AK69MegaraPQRidingVar.SetValue(0)
Alias_Cappy.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
setObjectiveCompleted(80)
setObjectiveCompleted(81)
setObjectiveDisplayed(90)
BeeandBarb.AddToMap()
Alias_Megara.GetActorReference().EvaluatePackage()
MegaraRef.moveto(BeeandBarb)
utility.wait(1.0)
CappyRef.moveto(RiftenCappy)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_31
Function Fragment_31()
;BEGIN CODE
;Scene after paralysis
EscapeScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveCompleted(41)
setObjectiveDisplayed(50)
SilverBloodInn.AddToMap()
MegaraRef.moveto(SilverBloodInn)
utility.wait(1.0)
CappyRef.moveto(MarkarthCappy)
ReadingIdleDrunkenHuntsmanMarker.Delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
game.getplayer().AddItem(alias_galtunboldthiefnote.getreference())
setObjectiveCompleted(100)
setObjectiveDisplayed(110)
AK69MegaraPQRidingVar.SetValue(1)
Alias_Megara.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
setObjectiveCompleted(110)
setObjectiveDisplayed(119)
setObjectiveDisplayed(120)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;Combat begins
Alias_Elli.GetActorReference().StartCombat(Alias_Katana.GetActorReference())
Alias_Katana.GetActorReference().StartCombat(Alias_Elli.GetActorReference())
Alias_River.GetActorReference().StartCombat(Game.GetPlayer())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
game.getplayer().AddItem(alias_luckyirnsvarnote.getreference())
setObjectiveCompleted(60)
setObjectiveDisplayed(70)
AK69MegaraPQRidingVar.SetValue(1)
Alias_Megara.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
LuckyIrnsvarRef.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
setObjectiveCompleted(120)
setObjectiveCompleted(121)
setObjectiveDisplayed(130)
FrozenHearth.AddToMap()
Alias_Megara.GetActorReference().EvaluatePackage()
MegaraRef.moveto(FrozenHearth)
utility.wait(1.0)
CappyRef.moveto(WinterholdCappy)
utility.wait(1.0)
ElliRef.Enable()
ReadingIdleBeeandBarbMarker.Delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_39
Function Fragment_39()
;BEGIN CODE
;Megara dismounts at Riften
AK69MegaraPQRidingVar.SetValue(0)
Alias_Cappy.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_32
Function Fragment_32()
;BEGIN CODE
setObjectiveCompleted(180)
;River portal
RiverRef.PlaceAtMe(InVis)	
RiverRef.MoveTo(SilverBloodInn)
RiverRef.PlaceAtMe(InVis)	
Utility.Wait(0.3)
setstage(250)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_36
Function Fragment_36()
;BEGIN CODE
;Finale and Katana talks
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment


ObjectReference Property MegaraRef  Auto  

ObjectReference Property LuckyIrnsvarRef  Auto  


ObjectReference Property DrunkenHuntsman  Auto  


ObjectReference Property SilverBloodInn  Auto  

ObjectReference Property GaltunBoldThiefRef  Auto  

ObjectReference Property BeeandBarb  Auto  

ObjectReference Property RunirWulfhartRef  Auto  

ObjectReference Property FrozenHearth  Auto  

Scene Property WinterholdScene  Auto  

ObjectReference Property ElliRef  Auto  

ObjectReference Property RiverHideout  Auto  

ObjectReference Property RiverRef  Auto  

Message Property WatchingMSG  Auto  

Scene Property HideoutIntroScene  Auto  

Scene Property SurrenderScene  Auto  

Scene Property EscapeScene  Auto  

Activator Property invis  Auto  

ObjectReference Property HideoutJustInCaseXMarker  Auto  

EffectShader Property Paralysis  Auto  

ObjectReference Property RiverHideout2  Auto  

VisualEffect Property AuraParticlesFX  Auto  



GlobalVariable Property AK69MegaraPQRidingVar  Auto  

ObjectReference Property CappyRef  Auto  

ObjectReference Property MarkarthCappy  Auto  

ObjectReference Property RiftenCappy  Auto  

ObjectReference Property WinterholdCappy  Auto  

ObjectReference Property WhiterunCappy  Auto  



GlobalVariable Property AK69KatanaPQCompleted  Auto  

Quest Property MegaraRecruitQuest  Auto  

ObjectReference Property ReadingIdleDrunkenHuntsmanMarker  Auto  

ObjectReference Property ReadingIdleBeeandBarbMarker  Auto  
