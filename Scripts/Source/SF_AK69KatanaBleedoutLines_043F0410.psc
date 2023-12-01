;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 20
Scriptname SF_AK69KatanaBleedoutLines_043F0410 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
Utility.Wait(2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
AK69KatanaHealBleedoutVar.SetValue(1 as Float)
Utility.Wait(4)
Katana.AddItem(RestoreHealth04, 1, true)
Katana.EquipItem(RestoreHealth04 as form, false, false)
Katana.RestoreActorValue("Health", 100 as Float)
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

Potion Property RestoreHealth04  Auto  

Actor Property Katana  Auto  
