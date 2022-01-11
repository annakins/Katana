Scriptname  AK69KatanaTEL extends ObjectReference  ;by EB/Xoleras xoleras.com - leave this here please! :)
;you can modify this as much as you want from here downward (probably should change the script name though)
;teleportto will always be sequence based, for combat, use CombatTeleportTo

Activator Property OutVis Auto
Activator Property InVis Auto
VisualEffect Property VisEffect Auto

STATIC Property OutLocMarker Auto
float Property XFloat Auto Hidden
float Property YFloat Auto Hidden
float Property ZFloat Auto Hidden
Keyword Property ActorTypeDragon Auto
bool Property bCasting Auto
ActorBase Property ActorOwner Auto









function BeginTeleport()
PlaceAtMe(InVis)
endFunction

function EndTeleport()
PlaceAtMe(OutVis)
endFunction

function TeleportTo(ObjectReference TeleportTarget, bool bTargetIsLocation, ObjectReference TeleportLocation = None, float WaitTime)

float XLoc = PolarToRectangularX(TeleportTarget.GetPositionX(), 15, 128)
float YLoc = PolarToRectangularY(TeleportTarget.GetPositionY(), 15, 128)	;to do: add param instead of fixed numbers
float zOffset = GetHeadingAngle(TeleportTarget)
utility.wait(0.1)

debug.trace(self + "If no pass, TeleportTarget may be NONE:" + TeleportTarget)

	if (bTargetIsLocation)	;then get offset
	debug.trace("Target is Location")
		if (TeleportTarget)
		BeginTeleport()
		utility.wait(0.4)
		SetPosition(XLoc, YLoc, TeleportTarget.GetPositionZ()) ; added Z os for adjustments
		SetAngle(GetAngleX(), GetAngleY(), GetAngleZ() + zOffset)
		endIf
		
	elseif (TeleportLocation)
		BeginTeleport()
		utility.wait(0.4)
		SetPosition(TeleportLocation.GetPositionX(), TeleportLocation.GetPositionY(), TeleportLocation.GetPositionZ())
		SetAngle(GetAngleX(), GetAngleY(), TeleportLocation.GetAngleZ())
		EndTeleport()
	endIf
endFunction

function CombatTeleportTo(ObjectReference TeleportTarget, float WaitTime)

XFloat = self.GetPositionX()
YFloat = self.GetPositionY()
ZFloat = self.GetPositionZ()

float fDir = CalculateDesiredAngle(TeleportTarget)
float XLoc = PolarToRectangularX(TeleportTarget.GetPositionX(), fdir, 64)
float YLoc = PolarToRectangularY(TeleportTarget.GetPositionY(), fdir, 64)	;to do: add prop instead of fixed numbers

utility.wait(0.1)

;debug.trace(self + "COMBAT If no pass, TeleportTarget may be NONE:" + TeleportTarget)
		if (TeleportTarget)
		BeginTeleport()
		utility.wait(0.4)
		SetPosition(XLoc, YLoc, TeleportTarget.GetPositionZ()) ; added Z os for adjustments
		SetAngle(GetAngleX(), GetAngleY(), GetAngleZ() + GetHeadingAngle(TeleportTarget))
		EndTeleport()
		utility.wait(2)
		CheckSuccess(TeleportTarget)
		bCasting = False
	endIf
endFunction

function CheckSuccess(ObjectReference ObjPoint)
	if (self.GetDistance(ObjPoint)  > 1024)
	;debug.trace( self + "ERROR: Detected long distance failure")
	SetPosition(XFloat, YFloat, ZFloat);
	EndTeleport()
	endIf
endFunction

bool function HitAsFollower(Actor ActorToCheck)
if ((ActorToCheck == Game.GetPlayer())||(ActorToCheck.HasKeyword(ActorTypeDragon))) 
return true
endIf

endFunction

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)

float FRand = utility.RandomFloat()

if (bCasting)||(HitAsFollower(akAggressor As Actor))
return
endIf

	;debug.trace( self + "hit detected!")
	if (self.GetDistance(akAggressor) > 768)&&(akAggressor.GetCurrentLocation() == self.GetCurrentLocation())

		if (FRand > 0.2) 
		bCasting = True
		CombatTeleportTo(akAggressor, 0.4)
		endIf
	endIf
EndEvent

function DoExit() ;in case we just want to be  fancy
PlaceAtMe(OutVis)
utility.wait(0.5)
Disable()
endFunction

float Function CalculateDesiredAngle(ObjectReference RefAngle)
 
float T = GetHeadingAngle(RefAngle)

	if (T < 45)&&(T > -45)
	return (T+180)
	
	else
	return T
	endIf
	
endFunction

float Function PolarToRectangularY(float rY, float Degrees, float Radius) ;wow, no outbound parameters allowed :/
return (rY + (Radius * Math.cos(Degrees)))
endFunction

float Function PolarToRectangularX(float rX, float Degrees, float Radius)
return (rX + (Radius * Math.sin(Degrees)))
endFunction

Function SetLocalAngle(Float LocalX, Float LocalY, Float LocalZ)
	float AngleX = LocalX * Math.Cos(LocalZ) + LocalY * Math.Sin(LocalZ)
	float AngleY = LocalY * Math.Cos(LocalZ) - LocalX * Math.Sin(LocalZ)
	SetAngle(AngleX, AngleY, LocalZ)
EndFunction
