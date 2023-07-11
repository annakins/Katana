;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname AK69_QF_AK69EasterEggsQuest_05B74A58 Extends Quest Hidden

;BEGIN ALIAS PROPERTY DeepvosMarker1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DeepvosMarker1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chadryn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chadryn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Deepvos
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Deepvos Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AzatarMarker1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AzatarMarker1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Azatar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Azatar Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE AK69EasterEggsScript
Quest __temp = self as Quest
AK69EasterEggsScript kmyQuest = __temp as AK69EasterEggsScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.Setup()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
