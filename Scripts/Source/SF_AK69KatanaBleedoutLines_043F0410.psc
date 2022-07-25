;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 7
Scriptname SF_AK69KatanaBleedoutLines_043F0410 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
Katana.GetActorReference().AddItem(RestoreHealth04, 1, true)
Katana.GetActorReference().EquipItem(RestoreHealth04 as form, false, false)
Katana.GetActorReference().RestoreActorValue("Health", 100 as Float)
AK69KatanaHealBleedoutVar.SetValue(1 as Float)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
AK69KatanaHealBleedoutVar.SetValue(0 as Float)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69KatanaHealBleedoutVar  Auto  

ReferenceAlias Property Katana  Auto  

Potion Property RestoreHealth04  Auto  
