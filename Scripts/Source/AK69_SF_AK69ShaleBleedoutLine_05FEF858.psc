;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname AK69_SF_AK69ShaleBleedoutLine_05FEF858 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
AK69ShaleHealBleedoutVar.SetValue(1 as Float)
Utility.Wait(4)
Shale.AddItem(RestoreHealth04, 1, true)
Shale.EquipItem(RestoreHealth04 as form, false, false)
Shale.RestoreActorValue("Health", 100 as Float)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Utility.Wait(2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
AK69ShaleHealBleedoutVar.SetValue(0 as Float)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69ShaleHealBleedoutVar  Auto  

Actor Property Shale  Auto  

Potion Property RestoreHealth04  Auto  
