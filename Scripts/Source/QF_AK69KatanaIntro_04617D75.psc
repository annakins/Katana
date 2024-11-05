;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname QF_AK69KatanaIntro_04617D75 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;TrustMessageIntro was here
AK69KatanaSkyrimQuests.Start()
AK69KatanaTracker.Start()
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property AK69KatanaTracker  Auto  

Message Property AK69KatanaTrustMessageIntro  Auto  

Quest Property AK69KatanaSkyrimQuests  Auto  
