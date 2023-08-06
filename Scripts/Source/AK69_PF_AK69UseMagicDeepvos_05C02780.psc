;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AK69_PF_AK69UseMagicDeepvos_05C02780 Extends Package Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(Actor akActor)
;BEGIN CODE
Deep.DoCombatSpellApply(Paralyze, Azatar)
Deep.SheatheWeapon()
Deep.StopCombat()	
Deep.StopCombatAlarm()
Azatar.SheatheWeapon()
Azatar.StopCombat()	
Azatar.StopCombatAlarm()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property Deep  Auto  

Actor Property Azatar  Auto  

SPELL Property Paralyze  Auto  
