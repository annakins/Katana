;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname AK69_SF_AK69ShaleBleedoutTRL_05CC4B3F Extends Scene Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
AK69ShaleHealBleedoutVar.SetValue(1 as Float)
Utility.Wait(4)
Shale.AddItem(RestoreHealth04, 1, true)
Shale.EquipItem(RestoreHealth04 as form, false, false)
Shale.RestoreActorValue("Health", 100 as Float)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
AK69ShaleHealBleedoutVar.SetValue(0 as Float)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property Shale  Auto  

GlobalVariable Property AK69ShaleHealBleedoutVar  Auto  

Potion Property RestoreHealth04  Auto  
