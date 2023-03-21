;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 10
Scriptname AK69_SF_AK69MegaraDismissedQu_049ACB0B Extends Scene Hidden

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
AK69Megara.setAlpha(0.1)
Utility.Wait(0.3)
AK69Megara.PlaceAtMe(InVis)	
AK69Megara.MoveTo(HomeMarker)
AK69Megara.PlaceAtMe(InVis)	
Utility.Wait(0.3)   
AK69Megara.setAlpha(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
AK69Megara.setAlpha(0.1)
Utility.Wait(0.3)
AK69Megara.PlaceAtMe(InVis)	
AK69Megara.MoveToMyEditorLocation()
AK69Megara.PlaceAtMe(InVis)	
Utility.Wait(0.3)   
AK69Megara.setAlpha(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
AK69MegaraHealBleedoutVar.SetValue(0 as Float)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
RMegara.GetActorReference().AddItem(RestoreHealth04, 1, true)
RMegara.GetActorReference().EquipItem(RestoreHealth04 as form, false, false)
RMegara.GetActorReference().RestoreActorValue("Health", 100 as Float)
Utility.Wait(4)
AK69MegaraHealBleedoutVar.SetValue(1 as Float)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Potion Property RestoreHealth04  Auto  

GlobalVariable Property AK69MegaraHealBleedoutVar  Auto  

ReferenceAlias Property RMegara  Auto  

Activator Property invis  Auto  

ObjectReference Property HomeMarker  Auto  

Actor Property AK69Megara  Auto  
