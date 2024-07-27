;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname AK69_QF_AK69MegaraBanditQuest_05BEE373 Extends Quest Hidden

;BEGIN ALIAS PROPERTY BanditLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_BanditLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY bandit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_bandit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
Alias_Bandit.GetReference().Enable(False)
Alias_MapMarker.GetReference().AddToMap(False)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
game.getPlayer().addItem(Gold001, 500)
(AK69KatanaFollowQuest as AK69Katanacontroller).IncreaseRateMajor()
Self.CompleteAllObjectives()
Self.stop()
Self.SetStage(0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001  Auto  

Quest Property AK69KatanaFollowQuest  Auto  
