Scriptname AK69KatanaShadowAttack extends Quest

Activator Property OutVis Auto
Activator Property InVis Auto
Activator Property OutVis2 Auto
Activator Property InVis2 Auto

Spell property MistRaven auto
Keyword property MagicInvisibility auto

Package Property KatanaSneakPackage Auto
Package Property KatanaFlankPackage Auto
ReferenceAlias Property KatanaRef Auto
Idle property pa_1HMKillMoveBackStab auto
Idle property KillMoveSneakH2HSleeper auto
Actor property Player auto
Keyword property ActorTypeNPC auto
Actor Property Katana Auto
GlobalVariable Property AK69KatanaTeleVar  Auto


Event OnUpdate()
KatanaCombat()
RegisterForSingleUpdate(10)
EndEvent



function BeginTeleport()
Katana.PlaceAtMe(InVis)
endFunction

function EndTeleport()
Katana.PlaceAtMe(OutVis)
endFunction

function BeginTeleport2()
Katana.PlaceAtMe(InVis2)
endFunction

function EndTeleport2()
Katana.PlaceAtMe(OutVis2)
endFunction



function KatanaCombat()
	if (AK69KatanaTeleVar.GetValue() ==1) 
			
	Actor KatanaIrin = KatanaRef.GetActorRef()
	if KatanaIrin.IsInCombat()
		Actor combattarget = KatanaIrin.GetCombatTarget()
		if combattarget
			if  combattarget.GetActorValuePercentage("Health") <= 0.25 && \
				combattarget.GetRace().HasKeyword(ActorTypeNPC) && \
				KatanaIrin.GetEquippedItemType(1) <= 2			
				ShadowAttack(KatanaIrin, combattarget)
			endif
		endif
	endif
	endif
endFunction

function ShadowAttack(Actor akActor, Actor akTarget)	
	MistRaven.Cast(akActor, akActor)
	int i = 0
	while !akActor.HasMagicEffectWithKeyword(MagicInvisibility) && i < 50
		Utility.Wait(0.1)
		i += 1
	endWhile
	Utility.Wait(3)
	akActor.MoveTo(akTarget, -120 * Math.Sin(akTarget.GetAngleZ()), -120 * Math.Cos(akTarget.GetAngleZ()), 0, abMatchRotation = true)
	if (akActor.GetEquippedItemType(1) == 1 || akActor.GetEquippedItemType(1) == 2)
		akActor.PlayIdleWithTarget(pa_1HMKillMoveBackStab, akTarget)
	elseif akActor.GetEquippedItemType(1) == 0
		akActor.PlayIdleWithTarget(KillMoveSneakH2HSleeper, akTarget)
	endif
	Utility.Wait(2)
	akActor.DispelSpell(MistRaven)
	
endFunction

;========================


Function KatanaCombatStateChanged(Actor akTarget, int aeCombatState)

	Actor KatanaIrin = KatanaRef.GetActorRef()

	If (akTarget == Player) || (akTarget == None)
		Pacify(KatanaIrin)
	ElseIf (akTarget.IsPlayerTeammate())
		Pacify(KatanaIrin)
		Pacify(akTarget)
	EndIf

	If (aeCombatState== 1) && (AK69KatanaTeleVar.GetValue() ==1) 
		If (akTarget != None) && (akTarget.IsDead() ==0) && (akTarget.IsFlying() == 0)
			If (KatanaIrin.GetDistance(akTarget)>= 300) && (KatanaIrin.GetCurrentPackage() != KatanaSneakPackage)
				ShadowAttack2()
			EndIf
		EndIf
	EndIf

EndFunction


Function ShadowAttack2()

	Actor KatanaIrin = KatanaRef.GetActorRef()

	If (AK69KatanaTeleVar.GetValue() ==1)
		Actor combatTarget = KatanaIrin.GetCombatTarget()

		If (combatTarget != None) && (combatTarget.IsDead() ==0)
			BeginTeleport2()
			KatanaIrin.SetAlpha(0)			
			float angle = combatTarget.GetAngleZ() + 180
			KatanaIrin.MoveTo(combatTarget, 100.0 * Math.Sin(angle), 100.0 * Math.Cos(angle))
			EndTeleport2()
			KatanaIrin.SetAlpha(1.0, true)
			KatanaIrin.StartCombat(combatTarget)
		Else
			Utility.Wait(4.0)
			If (KatanaIrin.IsInCombat() == 0)
				TeleporttoPlayer()
			Else
				ShadowAttack2()
			EndIf
		EndIf
	EndIf

EndFunction


Function TeleporttoPlayer()

	Actor KatanaIrin

	If (KatanaRef.GetActorRef() != None)
		KatanaIrin = KatanaRef.GetActorRef()
	Else
		KatanaIrin = Katana
	EndIf

	If (Player.GetParentCell() != KatanaIrin.GetParentCell())
		float angle = Player.GetAngleZ() + 180
		BeginTeleport2()	
		KatanaIrin.SetAlpha(0)
		KatanaIrin.MoveTo(Player, 512.0 * Math.Sin(angle), 512.0 * Math.Cos(angle), 512)
		Utility.Wait(1.5)
	EndIf

	BeginTeleport2()	
	KatanaIrin.SetAlpha(0.1, true)
	KatanaIrin.Moveto(Player, 120.0 * Math.Sin(Player.GetAngleZ()), -120.0 * Math.Cos(Player.GetAngleZ()))
	KatanaIrin.SetAlpha(1.0, true)
	EndTeleport2()
EndFunction



Function KatanaPackageStart(Package akNewPackage)

	Actor KatanaIrin = KatanaRef.GetActorRef()

	If (akNewPackage == KatanaFlankPackage)
		ShadowAttack2()
		KatanaIrin.EvaluatePackage()
	EndIf

EndFunction

Function Pacify(Actor akTarget)
	akTarget.StopCombat()
	akTarget.SetActorValue("Aggression", 0)
	akTarget.StopCombatAlarm()
	akTarget.EvaluatePackage()
EndFunction
