;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname AK69_SF_AK69EasterEgg1AfterSc_05490F2A Extends Scene Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
if Alias_Chadryn.GetActorReference().IsDisabled()
GetOwningQuest().SetStage(66)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property Alias_Chadryn  Auto  
