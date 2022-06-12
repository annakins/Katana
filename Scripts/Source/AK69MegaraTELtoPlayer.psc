Scriptname AK69MegaraTELtoPlayer extends ObjectReference  


Activator Property OutVis Auto
Activator Property InVis Auto
VisualEffect Property VisEffect Auto
actor property Player auto
STATIC Property OutLocMarker Auto
float Property XFloat Auto Hidden
float Property YFloat Auto Hidden
float Property ZFloat Auto Hidden
bool Property bCasting Auto
ActorBase Property ActorOwner Auto
globalvariable property AK69MegaraRidingVar auto
GlobalVariable property followerrecruited auto

function BeginTeleport()
PlaceAtMe(InVis)
endFunction

function EndTeleport()
PlaceAtMe(OutVis)
endFunction



function TeleportTo(ObjectReference TeleportTarget, float WaitTime)

XFloat = self.GetPositionX()
YFloat = self.GetPositionY()
ZFloat = self.GetPositionZ()

float fDir = CalculateDesiredAngle(TeleportTarget)
float XLoc = PolarToRectangularX(TeleportTarget.GetPositionX(), fdir, 64)
float YLoc = PolarToRectangularY(TeleportTarget.GetPositionY(), fdir, 64)	;to do: add prop instead of fixed numbers

utility.wait(0.1)


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
	if Player.IsOnMount() && AK69MegaraRidingVar.GetValue() == 1 as Float
							self.OnAnimationEvent(none, "tailHorseMount")
						endIf
endFunction

function CheckSuccess(ObjectReference ObjPoint)
	if (self.GetDistance(ObjPoint)  > 1024)
	;debug.trace( self + "ERROR: Detected long distance failure")
	SetPosition(XFloat, YFloat, ZFloat);
	EndTeleport()
	endIf
endFunction


Event OnLoad()

float FRand = utility.RandomFloat()

	if (self.GetDistance(Player) > 2000)&&(FollowerRecruited.GetValue() ==1)

		if (FRand > 0.2) 
		bCasting = True
		TeleportTo(Player, 0.4)
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
