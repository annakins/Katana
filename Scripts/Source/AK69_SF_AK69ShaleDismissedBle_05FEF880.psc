;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 13
Scriptname AK69_SF_AK69ShaleDismissedBle_05FEF880 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
AK69ShaleHealBleedoutVar.SetValue(0 as Float)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
ShaleActor.setAlpha(0.1)
Utility.Wait(0.3)
ShaleActor.PlaceAtMe(AK69ShaleFXActivator)	
ShaleActor.MoveTo(AK69ShaleHomeXMarker)
ShaleActor.PlaceAtMe(AK69ShaleFXActivator)	
Utility.Wait(0.3)   
ShaleActor.setAlpha(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
Utility.Wait(4)
ShaleActor.AddItem(RestoreHealth04, 1, true)
ShaleActor.EquipItem(RestoreHealth04 as form, false, false)
ShaleActor.RestoreActorValue("Health", 100 as Float)
Utility.Wait(4)
AK69ShaleHealBleedoutVar.SetValue(1 as Float)
KatanaDataStorage.DecreaseRateMajor()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
ShaleActor.setAlpha(0.1)
Utility.Wait(0.3)
ShaleActor.PlaceAtMe(AK69ShaleFXActivator)	
ShaleActor.MoveTo(AK69BeeandBarbXMarker)
ShaleActor.PlaceAtMe(AK69ShaleFXActivator)	
Utility.Wait(0.3)   
ShaleActor.setAlpha(1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69ShaleHealBleedoutVar  Auto  

Actor Property ShaleActor  Auto  

AK69KatanaController Property KatanaDataStorage  Auto  

Potion Property RestoreHealth04  Auto  

ObjectReference Property AK69ShaleHomeXMarker  Auto  

Activator Property AK69ShaleFXActivator  Auto  

ReferenceAlias Property Shale  Auto  

ObjectReference Property AK69BeeandBarbXMarker  Auto  
