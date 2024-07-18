;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 18
Scriptname AK69_QF_AK69TheKhatsEyeQuest_05C5896B Extends Quest Hidden

;BEGIN ALIAS PROPERTY Thalmor3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thalmor3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MovarthsLairMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MovarthsLairMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thalmor4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thalmor4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AlTharoGlasses
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AlTharoGlasses Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AlTharoMoorsideMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AlTharoMoorsideMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thalmor1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thalmor1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AlTharo
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AlTharo Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thalmor2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thalmor2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thalmor5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thalmor5 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Player is introduced to Al'Tharo
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AK69TheKhatsEyeScript
Quest __temp = self as Quest
AK69TheKhatsEyeScript kmyQuest = __temp as AK69TheKhatsEyeScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.Setup()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AK69TheKhatsEyeScript
Quest __temp = self as Quest
AK69TheKhatsEyeScript kmyQuest = __temp as AK69TheKhatsEyeScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoodbyeAlTharo()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveDisplayed(50)
;Spawn Thalmor spies
AK69ThalmorMage1.Enable()
AK69ThalmorMageREF2.Enable()
AK69ThalmorMageREF3.Enable()
AK69ThalmorMageREF4.Enable()
AK69ThalmorMageREF5.Enable()
MovarthsLair.Disable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Time to go to Movarth's Lair
AlTharoGlasses.Enable()
SetObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;About to go get the spectacles
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
setObjectiveCompleted(50)
setObjectiveDisplayed(60)
;Spies are dead. Go back to Moorside Inn
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Returned spectacles. Goodbye scene begins
setObjectiveCompleted(60)
AK69ThalmorMage1.Disable()
AK69ThalmorMageREF2.Disable()
AK69ThalmorMageREF3.Disable()
AK69ThalmorMageREF4.Disable()
AK69ThalmorMageREF5.Disable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
AK69KECompleted.SetValue(1)
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;They are about to find out what happened to the spectacles
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN AUTOCAST TYPE AK69TheKhatsEyeScript
Quest __temp = self as Quest
AK69TheKhatsEyeScript kmyQuest = __temp as AK69TheKhatsEyeScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.EndQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property AlTharoGlasses  Auto  

ObjectReference Property AK69ThalmorMage1  Auto  

ObjectReference Property AK69ThalmorMageREF2  Auto  

ObjectReference Property AK69ThalmorMageREF3  Auto  

ObjectReference Property AK69ThalmorMageREF4  Auto  

ObjectReference Property AK69ThalmorMageREF5  Auto  

ObjectReference Property MovarthsLair  Auto  

GlobalVariable Property AK69KECompleted  Auto  
