;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 15
Scriptname AK69_QF_AK69CarrotQuest_05E02209 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wilmuth
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wilmuth Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Carrot
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Carrot Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chillfurrow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chillfurrow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bannered_Mare
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bannered_Mare Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
Alias_Megara.GetActorReference().EvaluatePackage()
SetObjectiveDisplayed(20)
SetObjectiveCompleted(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE AK69CarrotQuestScript
Quest __temp = self as Quest
AK69CarrotQuestScript kmyQuest = __temp as AK69CarrotQuestScript
;END AUTOCAST
;BEGIN CODE
Alias_Megara.GetActorReference().EvaluatePackage()
kmyQuest.RemoveCarrot()
setObjectiveCompleted(40)
setObjectiveDisplayed(50)
kmyQuest.CappyCarrotTimer()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
Alias_Megara.GetActorReference().EvaluatePackage()
SetObjectiveCompleted(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AK69CarrotQuestScript
Quest __temp = self as Quest
AK69CarrotQuestScript kmyQuest = __temp as AK69CarrotQuestScript
;END AUTOCAST
;BEGIN CODE
Alias_Megara.GetActorReference().EvaluatePackage()
Self.FailAllObjectives()
Self.Stop()
kmyQuest.DeleteTheStuff()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE AK69CarrotQuestScript
Quest __temp = self as Quest
AK69CarrotQuestScript kmyQuest = __temp as AK69CarrotQuestScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.DeleteTheStuff()
setObjectiveCompleted(50)
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Alias_Megara.GetActorReference().EvaluatePackage()
CarrotREF.Enable()
SetObjectiveDisplayed(10)
AK69SugarandSpiceQuest.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
Alias_Megara.GetActorReference().EvaluatePackage()
SetObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property CarrotREF  Auto  

Quest Property AK69SugarandSpiceQuest  Auto  
