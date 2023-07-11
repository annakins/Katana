;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 8
Scriptname AK69_QF_AK69KatanaTracker_047D55E1 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE AK69KatanaQuestReadyScript
Quest __temp = self as Quest
AK69KatanaQuestReadyScript kmyQuest = __temp as AK69KatanaQuestReadyScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.QuestReadyTime()

AK69KatanaPersonalQuest.Start()

AK69DecidedToDismissKatanaDuringHerQuest.Start()

;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment


Quest Property AK69KatanaPersonalQuest  Auto  

Quest Property AK69DecidedToDismissKatanaDuringHerQuest  Auto  
