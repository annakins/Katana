;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 46
Scriptname QF_AK69KatanaPersonalQuest_058E1B19 Extends Quest Hidden

;BEGIN ALIAS PROPERTY LuckyIrnsvarNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LuckyIrnsvarNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SealedDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SealedDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverHideout2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverHideout2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CappyRiften
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CappyRiften Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LuckyIrnsvar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LuckyIrnsvar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RunirWulfhart
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RunirWulfhart Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GaltunBoldThief
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GaltunBoldThief Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DrunkenHuntsman
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DrunkenHuntsman Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BeeandBarb
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BeeandBarb Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY River
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_River Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CappyMarkarth
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CappyMarkarth Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverHideout
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverHideout Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Elli
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Elli Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Throne
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Throne Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SilverBloodInn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SilverBloodInn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Cappy
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Cappy Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FrozenHearth
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FrozenHearth Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GaltunBoldThiefNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GaltunBoldThiefNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CappyWinterhold
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CappyWinterhold Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
;River has entered bleedout
setObjectiveCompleted(190)
AuraParticlesFX.stop(RiverRef)
SurrenderScene.Start()
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
LuckyIrnsvarRef.Reset()
LuckyIrnsvarRef.MoveToMyEditorLocation()
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
AK69RiftenCappyTriggerREF.Disable()
AK69WinterholdCappyTriggerREF.Enable()
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

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
game.getplayer().AddItem(alias_galtunboldthiefnote.getreference())
AK69KatanaPQRiftenGiggles.Start()
setObjectiveCompleted(100)
setObjectiveDisplayed(110)
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

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;They just entered the hideout
Alias_Katana.GetActorReference().moveto(RiverHideout)
Alias_Elli.GetActorReference().moveto(RiverHideout2)
HideoutIntroScene.Start()
setObjectiveCompleted(180)
setObjectiveDisplayed(190)
AK69HideoutTriggerREF.Disable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_35
Function Fragment_35()
;BEGIN AUTOCAST TYPE AK69KatanaPersonalQuestData
Quest __temp = self as Quest
AK69KatanaPersonalQuestData kmyQuest = __temp as AK69KatanaPersonalQuestData
;END AUTOCAST
;BEGIN CODE
setObjectiveCompleted(250)
Self.CompleteAllObjectives()
AK69KatanaFeaturesMessagePQ.Show()
AK69KatanaPQCompleted.SetValue(1)
MegaraRecruitQuest.Start()
AK69DecidedToDismissKatanaDuringHerQuest.Stop()
kmyquest.EndQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_33
Function Fragment_33()
;BEGIN CODE
setObjectiveDisplayed(250)
RiverRef.Disable()
Paralysis.Stop(Game.GetPlayer())
Paralysis.Stop(Alias_Katana.GetActorReference())
Game.EnablePlayerControls()
Alias_Katana.GetActorReference().SetRestrained(false)
Alias_Katana.GetActorReference().EvaluatePackage()
setstage(260)
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

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
setObjectiveCompleted(110)
setObjectiveDisplayed(119)
setObjectiveDisplayed(120)
BeeandBarb.Disable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_42
Function Fragment_42()
;BEGIN CODE
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_36
Function Fragment_36()
;BEGIN AUTOCAST TYPE AK69KatanaPersonalQuestData
Quest __temp = self as Quest
AK69KatanaPersonalQuestData kmyQuest = __temp as AK69KatanaPersonalQuestData
;END AUTOCAST
;BEGIN CODE
;Finale and Katana talks
Alias_Katana.GetActorReference().EvaluatePackage()
(AK69KatanaFollowQuest as AK69Katanacontroller).IncreaseRatePQ()
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

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveCompleted(11)
SetObjectiveDisplayed(20)
MegaraRef.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;Combat begins
Alias_Elli.GetActorReference().StartCombat(Game.GetPlayer())
Alias_Katana.GetActorReference().StartCombat(Alias_Elli.GetActorReference())
Alias_River.GetActorReference().StartCombat(Game.GetPlayer())
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

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
;Megara and Katana say bye for now in Winterhold
Alias_Megara.GetActorReference().EvaluatePackage()
Alias_Elli.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
setObjectiveCompleted(120)
setObjectiveCompleted(121)
setObjectiveDisplayed(130)
Alias_Megara.GetActorReference().EvaluatePackage()
MegaraRef.moveto(FrozenHearth)
CappyRef.moveto(WinterholdCappy)
ElliRef.Enable()
ReadingIdleBeeandBarbMarker.Delete()
AK69WinterholdCappyTriggerREF.Disable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
LuckyIrnsvarRef.Enable()
AK69MarkathCappyTriggerREF.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_32
Function Fragment_32()
;BEGIN CODE
;River portal
RiverRef.PlaceAtMe(InVis)	
RiverRef.MoveTo(SilverBloodInn)
RiverRef.PlaceAtMe(InVis)	
SilverBloodInn.Delete()

setstage(250)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
;Elli approaches
WatchingMSG.show()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
setObjectiveDisplayed(170)
;Elli just walked away, time for loyalty path
MegaraRef.moveto(DrunkenHuntsman)
CappyRef.moveto(WhiterunCappy)

;This is where the unsealdoorscript was and now it's in a topic
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
setObjectiveCompleted(130)
WinterholdScene.Start()
RunirWulfhartRef.Delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
setObjectiveCompleted(170)
setObjectiveDisplayed(180)
DrunkenHuntsman.Delete()
RiverRef.Enable()
AK69HideoutTriggerREF.Enable()

actor ElliDeath = Alias_Elli.GetReference() as Actor
ElliDeath.moveto(RiverHideout2)
ElliDeath.GetActorBase().setEssential(false)

FrozenHearth.Delete()

;Time to go to River and Elli is now mortal
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

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
setObjectiveCompleted(80)
setObjectiveCompleted(81)
setObjectiveDisplayed(90)
Alias_Megara.GetActorReference().EvaluatePackage()
MegaraRef.moveto(BeeandBarb)
CappyRef.moveto(RiftenCappy)
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

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveCompleted(41)
setObjectiveDisplayed(50)
MegaraRef.moveto(SilverBloodInn)
CappyRef.moveto(MarkarthCappy)
ReadingIdleDrunkenHuntsmanMarker.Delete()
AK69MarkathCappyTriggerREF.Disable()
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
AK69RiftenCappyTriggerREF.Enable()
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

Quest Property AK69DecidedToDismissKatanaDuringHerQuest  Auto  








Message Property AK69KatanaFeaturesMessagePQ  Auto  

Scene Property AK69KatanaPQRiftenGiggles  Auto  

ObjectReference Property AK69HideoutTriggerREF  Auto  

ObjectReference Property AK69MarkathCappyTriggerREF  Auto  

ObjectReference Property AK69RiftenCappyTriggerREF  Auto  

ObjectReference Property AK69WinterholdCappyTriggerREF  Auto  

Quest Property AK69KatanaFollowQuest  Auto  
