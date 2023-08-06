;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 7
Scriptname AK69_QF_AK69KatanaBountyHuntQ_05F13CD8 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE AK69KatanaBountyHuntScript
Quest __temp = self as Quest
AK69KatanaBountyHuntScript kmyQuest = __temp as AK69KatanaBountyHuntScript
;END AUTOCAST
;BEGIN CODE
(AK69KatanaFollowQuest as AK69KatanaController).DismissFollower(0,0)
kmyQuest.KatanaGoHunt()
kmyQuest.BountyTimer1Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
(AK69KatanaFollowQuest as AK69KatanaController).SetFollower(Katana)
AK69KatanaBountyHunt.SetValue(0)
AK69KatanaBountyTimer1.SetValue(0)
Self.stop()
Self.SetStage(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE AK69KatanaBountyHuntScript
Quest __temp = self as Quest
AK69KatanaBountyHuntScript kmyQuest = __temp as AK69KatanaBountyHuntScript
;END AUTOCAST
;BEGIN CODE
Utility.Wait(5.0)
kmyQuest.KatanaIsBack()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property AK69KatanaBountyXMarker  Auto  

Actor Property Katana  Auto  

Quest Property AK69KatanaFollowQuest  Auto  

GlobalVariable Property AK69KatanaBountyHunt  Auto  

GlobalVariable Property AK69KatanaBountyTimer1  Auto  
