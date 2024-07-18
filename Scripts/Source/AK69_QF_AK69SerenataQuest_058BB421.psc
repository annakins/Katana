;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 37
Scriptname AK69_QF_AK69SerenataQuest_058BB421 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Chadryn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chadryn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Shale
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Shale Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Deep
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Deep Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NoteAliasRef
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NoteAliasRef Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Azatar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Azatar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ScrollAliasRef
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ScrollAliasRef Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
AK69SQScene2.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
SetObjectiveCompleted(80)
Alias_Megara.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN AUTOCAST TYPE AK69SerenataQuestScript
Quest __temp = self as Quest
AK69SerenataQuestScript kmyQuest = __temp as AK69SerenataQuestScript
;END AUTOCAST
;BEGIN CODE
AK69SQAway.SetValue(0)
SetObjectiveCompleted(140)
kmyQuest.KatanaBack()
kmyQuest.MegaraBack()
Utility.Wait(1.5)
AK69SQScene7.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE AK69SerenataQuestScript
Quest __temp = self as Quest
AK69SerenataQuestScript kmyQuest = __temp as AK69SerenataQuestScript
;END AUTOCAST
;BEGIN CODE
;Courier should come
kmyQuest.PlaceNote()
SetObjectiveCompleted(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveCompleted(70)
SetObjectiveDisplayed(80)
Shale.Moveto(Game.GetPlayer())
AK69SQSceneS1.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
AK69SQScene5.Stop()
AK69SQScene6.Start()
SetObjectiveDisplayed(120)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN AUTOCAST TYPE AK69SerenataQuestScript
Quest __temp = self as Quest
AK69SerenataQuestScript kmyQuest = __temp as AK69SerenataQuestScript
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(130)
SetObjectiveCompleted(131)
SetObjectiveDisplayed(140)
AK69SQAway.SetValue(1)
kmyQuest.HoneymoonTimerStart()
Game.GetPlayer().Moveto(Somewhere)
Shale.Moveto(Game.GetPlayer())
AK69SQSceneS2.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_33
Function Fragment_33()
;BEGIN AUTOCAST TYPE AK69SerenataQuestScript
Quest __temp = self as Quest
AK69SerenataQuestScript kmyQuest = __temp as AK69SerenataQuestScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.EndQuest()
SetStage(190)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Read note. Shale should say something here
AK69SQScene3.Start()
SetObjectiveCompleted(60)
SetObjectiveDisplayed(70)
Azatar.Enable()
Chadryn.Enable()
Deepvos.Enable()
Katana.Moveto(AK69CozyMarker1)
Megara.Moveto(AK69CozyMarker1)
Azatar.Moveto(AK69CozyMarker1)
Chadryn.Moveto(AK69CozyMarker1)
Deepvos.Moveto(AK69CozyMarker1)
AK69SQAway.SetValue(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN CODE
SetObjectiveCompleted(160)
SetObjectiveCompleted(161)
AK69SQScene10.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
AK69SQScene6.Stop()
SetObjectiveCompleted(120)
SetObjectiveDisplayed(130)
SetObjectiveDisplayed(131)
Alias_Megara.GetActorReference().EvaluatePackage()
Alias_Chadryn.GetActorReference().EvaluatePackage()
Alias_Katana.GetActorReference().EvaluatePackage()
Alias_Deep.GetActorReference().EvaluatePackage()
Alias_Shale.GetActorReference().EvaluatePackage()
Alias_Azatar.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_35
Function Fragment_35()
;BEGIN CODE
AK69SQCompleted.SetValue(1)
self.stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
AK69WeddingBellsVar.SetValue(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;Meg talks to player
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE AK69SerenataQuestScript
Quest __temp = self as Quest
AK69SerenataQuestScript kmyQuest = __temp as AK69SerenataQuestScript
;END AUTOCAST
;BEGIN CODE
AK69SQAway.SetValue(1)
kmyQuest.QuestReadyTime()
SetObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
;Chad scene
AK69SQScene5.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
AK69SQScene1.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Note got added to inventory
SetObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
SetObjectiveDisplayed(160)
SetObjectiveDisplayed(161)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property AK69SQScene1  Auto  

GlobalVariable Property AK69WeddingBellsVar  Auto  

Scene Property AK69SQScene2  Auto  

GlobalVariable Property AK69SQAway  Auto  

Scene Property AK69SQScene3  Auto  

ObjectReference Property Azatar  Auto  

ObjectReference Property Chadryn  Auto  

ObjectReference Property Deepvos  Auto  

ObjectReference Property AK69CozyMarker1  Auto  

ObjectReference Property Katana  Auto  

ObjectReference Property Megara  Auto  

ObjectReference Property Shale  Auto  

Scene Property AK69SQScene5  Auto  

Scene Property AK69SQScene6  Auto  

ObjectReference Property Somewhere  Auto  

Scene Property AK69SQScene7  Auto  



GlobalVariable Property AK69SQCompleted  Auto  

Scene Property AK69SQSceneS1  Auto  

Scene Property AK69SQSceneS2  Auto  

Scene Property AK69SQScene10  Auto  
