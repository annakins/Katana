;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 22
Scriptname AK69_SF_AK69EasterEgg1Scene_05C0277B Extends Scene Hidden

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
AK69Azatar.AddItem(AK69DeepvosNote, 1, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
AK69NutTalkNowVar.SetValue(1)
AK69Azatar.StopCombat()	
AK69Azatar.StopCombatAlarm()
AK69Azatar.SheatheWeapon()
AK69Deepvos.SheatheWeapon()
AK69Deepvos.StopCombat()	
AK69Deepvos.StopCombatAlarm()
AzatarDrunkMarker.Disable()
DeepDrunkMarker.Disable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
AK69EasterEgg1AfterScene.Start()
(GetOwningQuest() as AK69EasterEggsScript).DoneWithNutBoys = true
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property AK69NutTalkNowVar  Auto  

Actor Property AK69Azatar  Auto  

Actor Property AK69Deepvos  Auto  

ObjectReference Property AzatarDrunkMarker  Auto  

ObjectReference Property DeepDrunkMarker  Auto  

Book Property AK69DeepvosNote  Auto  

Scene Property AK69EasterEgg1AfterScene  Auto  
