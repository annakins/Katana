;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 12
Scriptname AK69_SF_AK69MegaraBleedoutLin_043F551B Extends Scene Hidden

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
Utility.Wait(2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
AK69MegaraHealBleedoutVar.SetValue(1 as Float)
Utility.Wait(4)
Megara.AddItem(RestoreHealth04, 1, true)
Megara.EquipItem(RestoreHealth04 as form, false, false)
Megara.RestoreActorValue("Health", 100 as Float)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
AK69MegaraHealBleedoutVar.SetValue(0 as Float)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property Megara  Auto  

Potion Property RestoreHealth04  Auto  

GlobalVariable Property AK69MegaraHealBleedoutVar  Auto  
