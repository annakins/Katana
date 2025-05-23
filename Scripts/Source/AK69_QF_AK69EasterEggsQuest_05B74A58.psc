;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 20
Scriptname AK69_QF_AK69EasterEggsQuest_05B74A58 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AzatarMarker1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AzatarMarker1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ChadrynWhiterunMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ChadrynWhiterunMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Deepvos
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Deepvos Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SolitudeMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SolitudeMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chadryn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chadryn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DeepvosMarker1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DeepvosMarker1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiftenMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiftenMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Azatar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Azatar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverwoodMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverwoodMarker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;In Riften, some new dialogue between now and 40. Off to Riverwood
Alias_Chadryn.GetActorReference().EvaluatePackage()
AK69ChadSceneTrigger2.Disable()
AK69ChadSceneTrigger3.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Chadryn intro done and time to go to Solitude
AK69ChadrynIntroScene.Stop()
Alias_Chadryn.GetActorReference().EvaluatePackage()
AK69ChadSceneTrigger1.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;Nut boys are going to Bannered Mare and Chad is disabled, end quest
AK69EECompleted.SetValue(1)
Self.CompleteAllObjectives()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Done with Solitude. Riften hunt time
Alias_Chadryn.GetActorReference().EvaluatePackage()
AK69ChadSceneTrigger1.Disable()
AK69ChadSceneTrigger2.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
(AK69KatanaFollowQuest as AK69Katanacontroller).IncreaseRateMajor()
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Combat begins
AK69ChadSceneTrigger3.Disable()
Alias_Katana.GetActorReference().StartCombat(Alias_Chadryn.GetActorReference())
Alias_Megara.GetActorReference().StartCombat(Alias_Chadryn.GetActorReference())
Alias_Chadryn.GetActorReference().StartCombat(Game.GetPlayer())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Bleedout
AK69ChadrynSurrenderScene.Start()
;END CODE
EndFunction
;END FRAGMENT

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

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AK69EasterEggsScript
Quest __temp = self as Quest
AK69EasterEggsScript kmyQuest = __temp as AK69EasterEggsScript
;END AUTOCAST
;BEGIN CODE
;Start timer as Chad walks away
Alias_Chadryn.GetActorReference().EvaluatePackage()
kmyQuest.GoodbyeChadryn()
kmyQuest.DoneWithChad = true
if kmyQuest.DoneWithNutBoys == true
SetStage(65)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;Azatar and Deep are disabled and Chad just left for the Sleeping Giant Inn - end quest
AK69EECompleted.SetValue(1)
Self.CompleteAllObjectives()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property AK69ChadrynSurrenderScene  Auto  

ObjectReference Property AK69ChadSceneTrigger1  Auto  

ObjectReference Property AK69ChadSceneTrigger2  Auto  

ObjectReference Property AK69ChadSceneTrigger3  Auto  

GlobalVariable Property AK69EECompleted  Auto  

Quest Property AK69KatanaFollowQuest  Auto  

Scene Property AK69ChadrynIntroScene  Auto  
