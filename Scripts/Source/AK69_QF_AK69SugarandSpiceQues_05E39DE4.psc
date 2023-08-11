;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 27
Scriptname AK69_QF_AK69SugarandSpiceQues_05E39DE4 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MarkerJustInCase
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MarkerJustInCase Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Throne
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Throne Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Hideout
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Hideout Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katla
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katla Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bed
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bed Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Door
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Door Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
AK69SaSFinalScene.Start()
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
setObjectiveDisplayed(30)
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
AK69MegaraToCommentScene2.Start()
SetObjectiveDisplayed(50)
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN AUTOCAST TYPE AK69SugarandSpiceScript
Quest __temp = self as Quest
AK69SugarandSpiceScript kmyQuest = __temp as AK69SugarandSpiceScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.DeleteStuff()
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
AK69MegaraWalkAway.Start()
SetObjectiveDisplayed(30)
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE AK69SugarandSpiceScript
Quest __temp = self as Quest
AK69SugarandSpiceScript kmyQuest = __temp as AK69SugarandSpiceScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.DeleteStuff()
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AK69SugarandSpiceScript
Quest __temp = self as Quest
AK69SugarandSpiceScript kmyQuest = __temp as AK69SugarandSpiceScript
;END AUTOCAST
;BEGIN CODE
;This is for all or nothing
kmyQuest.DeleteStuff()
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveCompleted(40)
MegaraREF.moveto(MarkerTime)
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;This is so the scene after can play and there's no forcegreet anymore
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
AK69DramaticScene.Start()
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AK69SugarandSpiceScript
Quest __temp = self as Quest
AK69SugarandSpiceScript kmyQuest = __temp as AK69SugarandSpiceScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.SleepySleeps()
SetObjectiveDisplayed(40)
Alias_Katana.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property AK69MegaraToCommentScene2  Auto  

Scene Property AK69DramaticScene  Auto  

Scene Property AK69MegaraWalkAway  Auto  

ObjectReference Property MegaraRef  Auto  

ObjectReference Property MarkerTime  Auto  

Scene Property AK69SaSFinalScene  Auto  
