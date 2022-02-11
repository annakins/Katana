;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 26
Scriptname QF_AK69KatanaPersonalQuest_058E1B19 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DrunkenHuntsman
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DrunkenHuntsman Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SealedDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SealedDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LuckyIrnsvar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LuckyIrnsvar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BeeandBarb
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BeeandBarb Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LuckyIrnsvarNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LuckyIrnsvarNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FrozenHearth
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FrozenHearth Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RunirWulfhart
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RunirWulfhart Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GaltunBoldThief
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GaltunBoldThief Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SilverBloodInn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SilverBloodInn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverHideout
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverHideout Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GaltunBoldThiefNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GaltunBoldThiefNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Elli
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Elli Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Throne
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Throne Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY River
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_River Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
setObjectiveCompleted(120)
setObjectiveDisplayed(130)
FrozenHearth.AddToMap()
Alias_Megara.GetActorReference().EvaluatePackage()
MegaraRef.moveto(FrozenHearth)
ElliRef.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveDisplayed(50)
SilverBloodInn.AddToMap()
MegaraRef.moveto(SilverBloodInn)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
setObjectiveDisplayed(170)
;Elli just walked away, time for loyalty path
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

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
setObjectiveCompleted(70)
setObjectiveDisplayed(80)
Alias_Megara.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
setObjectiveCompleted(50)
setObjectiveDisplayed(60)
GaltunBoldThiefRef.Enable()
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

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
setObjectiveCompleted(90)
setObjectiveDisplayed(100)
RunirWulfhartRef.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;Door just opened
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

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
setObjectiveCompleted(110)
setObjectiveDisplayed(120)
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

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
game.getplayer().AddItem(alias_luckyirnsvarnote.getref())
setObjectiveCompleted(60)
setObjectiveDisplayed(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
game.getplayer().AddItem(alias_galtunboldthiefnote.getref())
setObjectiveCompleted(100)
setObjectiveDisplayed(110)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
setObjectiveCompleted(30)
setObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
setObjectiveCompleted(170)
setObjectiveDisplayed(180)
RiverHideout.AddToMap()
ElliRef.moveto(RiverHideout)
(Alias_SealedDoor as AK69DoorHideoutSealedScript).UnsealDoor()
RiverRef.Enable()

;Time to go to River
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
setObjectiveCompleted(80)
setObjectiveDisplayed(90)
BeeandBarb.AddToMap()
Alias_Megara.GetActorReference().EvaluatePackage()
MegaraRef.moveto(BeeandBarb)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
setObjectiveCompleted(130)
WinterholdScene.Start()
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
