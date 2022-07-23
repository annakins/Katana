Scriptname AK69KatanaShadowAttack extends Quest

Activator Property OutVis Auto
Activator Property InVis Auto
Spell property MistRaven auto
Keyword property MagicInvisibility auto
ReferenceAlias Property KatanaRef Auto
Actor property Player auto
Actor Property Katana Auto

;========================

function BeginTeleport()
Katana.PlaceAtMe(InVis)
endFunction

function EndTeleport()
Katana.PlaceAtMe(OutVis)
endFunction

;========================

Function KatanaCombatStateChanged(Actor akTarget, int aeCombatState)
	Actor KatanaIrin = KatanaRef.GetReference() as Actor
	If (akTarget == Player) || (akTarget == None)
		Pacify()
	ElseIf (akTarget.IsPlayerTeammate())
		Pacify()
	EndIf
	akTarget.GetCombatState()
	If (aeCombatState == 1) && (akTarget.IsFlying() == 0) && (akTarget.GetCurrentLocation() == KatanaIrin.GetCurrentLocation())
	ShadowAttack()
	Elseif 	((Player.GetActorValuePercentage("Health") <= 0.40) && (Player.GetActorValuePercentage("Health") > 0.10))
		TeleporttoPlayer()
	EndIf
EndFunction

;========================

Function ShadowAttack()
	Actor KatanaIrin = KatanaRef.GetReference() as Actor
	Actor combatTarget = KatanaIrin.GetCombatTarget()	
	float FRand = utility.RandomFloat()
		If ((combatTarget != None) && (FRand > 0.7) && (combatTarget.GetActorValuePercentage("Health") >= 0.95) && ((combatTarget.IsBleedingOut() == 0) || (combatTarget.IsRunning() == 0)))
			MistRaven.Cast(KatanaIrin, KatanaIrin)
			int i = 0
			while !KatanaIrin.HasMagicEffectWithKeyword(MagicInvisibility) && i < 50
				Utility.Wait(1.0)
				i += 1
			endWhile
			float angle = combatTarget.GetAngleZ() + 180
			KatanaIrin.MoveTo(combatTarget, 100.0 * Math.Sin(angle), 100.0 * Math.Cos(angle))			
			Utility.Wait(0.3)   
			KatanaIrin.DispelSpell(MistRaven)			
			KatanaIrin.StartCombat(combatTarget)			
		EndIf			
EndFunction

;========================

Function TeleporttoPlayer()	
	Actor KatanaIrin = KatanaRef.GetReference() as Actor
	If (Player.GetParentCell() != KatanaIrin.GetParentCell())
		float angle = Player.GetAngleZ() + 180		
		KatanaIrin.setAlpha(0.1)
		BeginTeleport()	
		KatanaIrin.MoveTo(Player, 512.0 * Math.Sin(angle), 512.0 * Math.Cos(angle), 512)
		EndTeleport()
		Utility.Wait(0.3)
		KatanaIrin.setAlpha(1)		
	EndIf
	KatanaIrin.setAlpha(0.1)
	BeginTeleport()	
	KatanaIrin.Moveto(Player, 120.0 * Math.Sin(Player.GetAngleZ()), -120.0 * Math.Cos(Player.GetAngleZ()))
	EndTeleport()
	Utility.Wait(0.3)   
	KatanaIrin.setAlpha(1)
	If KatanaIrin.IsWeaponDrawn() == 0
	KatanaIrin.DrawWeapon()	
	EndIf	
EndFunction

;========================

Function Pacify()
	Actor KatanaIrin = KatanaRef.GetActorRef()
	KatanaIrin.StopCombat()	
	KatanaIrin.StopCombatAlarm()
	KatanaIrin.EvaluatePackage()	
EndFunction