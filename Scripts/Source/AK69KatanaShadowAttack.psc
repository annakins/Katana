Scriptname AK69KatanaShadowAttack extends Quest

Activator Property OutVis Auto
Activator Property InVis Auto

Package Property AK69KatanaOpportunityPackage Auto
Idle property pa_1HMKillMoveBackStab auto
Idle property KillMoveSneakH2HSleeper auto
Actor property Player auto
Keyword property ActorTypeNPC auto
Actor Property Katana Auto
VisualEffect Property VisEffect Auto
GlobalVariable Property AK69KatanaTeleVar  Auto

Event OnUpdate()
ShadowAttack()
RegisterForSingleUpdate(10)
EndEvent



function BeginTeleport()
Katana.PlaceAtMe(InVis)
endFunction

function EndTeleport()
Katana.PlaceAtMe(OutVis)
endFunction

function ShadowAttack()
			
	If (AK69KatanaTeleVar.GetValue() ==1)
	if Katana.IsInCombat()
		Actor combattarget = Katana.GetCombatTarget()
		if combattarget
			if combattarget.GetActorValuePercentage("Health") <= 0.25 && \
				combattarget.GetRace().HasKeyword(ActorTypeNPC) && \
				Katana.GetEquippedItemType(1) <= 2 
				BeginTeleport()
	Katana.setGhost(true)
	Katana.MoveTo(combattarget, -120 * Math.Sin(combattarget.GetAngleZ()), -120 * Math.Cos(combattarget.GetAngleZ()), 0, abMatchRotation = true)
	Utility.wait(2)
	Katana.setGhost(false)
	EndTeleport()
	if (Katana.GetEquippedItemType(1) == 1)
		Katana.PlayIdleWithTarget(pa_1HMKillMoveBackStab, combattarget)
	elseif Katana.GetEquippedItemType(1) == 0
		Katana.PlayIdleWithTarget(KillMoveSneakH2HSleeper, combattarget)
	endif
			endif
		endif
	endif
	endif
endFunction



