;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname AK69_QF_AK69ShadowQuest_052159C2 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Companion1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Companion1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Serana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Serana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Companion2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Companion2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Shale
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Shale Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Companion3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Companion3 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AK69ShadowQuestScript
Quest __temp = self as Quest
AK69ShadowQuestScript kmyQuest = __temp as AK69ShadowQuestScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.Setup()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE AK69ShadowQuestScript
Quest __temp = self as Quest
AK69ShadowQuestScript kmyQuest = __temp as AK69ShadowQuestScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.StopShroud()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
