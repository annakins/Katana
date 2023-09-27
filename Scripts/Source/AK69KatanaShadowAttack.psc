Scriptname AK69KatanaShadowAttack extends Quest

Activator Property OutVis Auto
Activator Property InVis Auto
Spell property MistRaven auto
Keyword property MagicInvisibility auto
ReferenceAlias Property KatanaRef Auto
Actor property Player auto
Actor Property Katana Auto
GlobalVariable property AK69KatanaRecruited Auto
GlobalVariable property AK69KatanaWorkWithPlayer auto

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
	;If (akTarget == Player) || (akTarget == None)
		;Pacify()
	;ElseIf (akTarget.IsPlayerTeammate())
		;Pacify()
	;EndIf
	akTarget.GetCombatState()
	If (aeCombatState == 1) && (akTarget.IsFlying() == 0) && (akTarget.GetCurrentLocation() == KatanaIrin.GetCurrentLocation())
	ShadowAttack()
	;Elseif 	((Player.GetActorValuePercentage("Health") <= 0.40) && (Player.GetActorValuePercentage("Health") > 0.10) && (utility.randomfloat() < 0.25))
		;TeleporttoPlayer()
	EndIf
EndFunction

;========================
; original FRand > 0.7 

Function ShadowAttack()
	Actor KatanaIrin = KatanaRef.GetReference() as Actor
	Actor combatTarget = KatanaIrin.GetCombatTarget()	
	float FRand = utility.RandomFloat()
		If ((combatTarget != None) && AK69KatanaWorkWithPlayer.GetValue() == 0 && (FRand < 0.25) && (combatTarget.GetActorValuePercentage("Health") >= 0.95) && ((combatTarget.IsBleedingOut() == 0) || (combatTarget.IsRunning() == 0)))
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

