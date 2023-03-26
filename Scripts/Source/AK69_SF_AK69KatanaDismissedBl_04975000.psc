;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 13
Scriptname AK69_SF_AK69KatanaDismissedBl_04975000 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
KatanaActor.setAlpha(0.1)
Utility.Wait(0.3)
KatanaActor.PlaceAtMe(InVis)	
KatanaActor.MoveTo(HomeMarker)
KatanaActor.PlaceAtMe(InVis)	
Utility.Wait(0.3)   
KatanaActor.setAlpha(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Katana.GetActorReference().AddItem(RestoreHealth04, 1, true)
Katana.GetActorReference().EquipItem(RestoreHealth04 as form, false, false)
Katana.GetActorReference().RestoreActorValue("Health", 100 as Float)
Utility.Wait(4)
AK69KatanaHealBleedoutVar.SetValue(1 as Float)
KatanaDataStorage.DecreaseRateMajor()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
AK69KatanaHealBleedoutVar.SetValue(0 as Float)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
KatanaActor.setAlpha(0.1)
Utility.Wait(0.3)
KatanaActor.PlaceAtMe(InVis)	
KatanaActor.MoveToMyEditorLocation()
KatanaActor.PlaceAtMe(InVis)	
Utility.Wait(0.3)   
KatanaActor.setAlpha(1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Potion Property RestoreHealth04  Auto  

ReferenceAlias Property Katana  Auto  

GlobalVariable Property AK69KatanaHealBleedoutVar  Auto  

Activator Property invis  Auto  

ObjectReference Property HomeMarker  Auto  

Actor Property KatanaActor  Auto  

AK69KatanaController Property KatanaDataStorage  Auto  
