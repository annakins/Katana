Scriptname AK69MegaraConfigScript extends Quest  

AK69MegaraController property MegaraDataStorage auto
ReferenceAlias Property RMegara auto
int Property UpdateInterval auto
float Property SettleRadius auto
GlobalVariable Property FollowerRecruited Auto

int __historySize = 8 
float[] __playerPosX
float[] __playerPosY
float[] __playerPosZ

Function Setup()
	__playerPosX = new float[8]
	__playerPosY = new float[8]
	__playerPosZ = new float[8]

	Actor _player = Game.GetPlayer()
	int count = 0
	while (count < __historySize)
		__playerPosX[count] = _player.X + 1000
		__playerPosY[count] = _player.Y + 1000
		__playerPosZ[count] = _player.Z + 1000
		count += 1
	endwhile

	RegisterForSingleUpdate(UpdateInterval)
EndFunction

Event OnUpdate()
	int historyIndex = 0
	while (historyIndex < __historySize - 1)
		__playerPosX[historyIndex] = __playerPosX[historyIndex + 1]
		__playerPosY[historyIndex] = __playerPosY[historyIndex + 1]
		__playerPosZ[historyIndex] = __playerPosZ[historyIndex + 1]
		historyIndex += 1
	endwhile

	Actor _player = Game.GetPlayer()
	__playerPosX[__historySize - 1] = _player.X
	__playerPosY[__historySize - 1] = _player.Y
	__playerPosZ[__historySize - 1] = _player.Z

	;   FOLLOWING
	if (FollowerRecruited.GetValue() ==1) 
		bool switchedPackageConditions = false
		if (RMegara.GetActorReference().GetActorValue("WaitingForPlayer") != 0)
			RMegara.GetActorReference().SetActorValue("WaitingForPlayer", 0)
			switchedPackageConditions = true
		endif

		float xFactor = (__playerPosX[0] - _player.X)
		xFactor = xFactor * xFactor
		float yFactor = (__playerPosY[0] - _player.Y)
		yFactor = yFactor * yFactor
		float zFactor = (__playerPosZ[0] - _player.Z)
		zFactor = zFactor * zFactor

		float distance = Math.sqrt(xFactor + yFactor + zFactor)


		if (distance > SettleRadius)
			if (MegaraDataStorage.PlayerSettled == true)
				switchedPackageConditions = true
			endif
			MegaraDataStorage.PlayerSettled = false
		else
			if (MegaraDataStorage.PlayerSettled == false)
				switchedPackageConditions = true
			endif
			MegaraDataStorage.PlayerSettled = true
		endif

		if (switchedPackageConditions)
			if (MegaraDataStorage.PlayerSettled)
; 				Debug.Trace("RMegara: Player settled; sandbox.")
			else
; 				Debug.Trace("RMegara: Player moving more than settle radius; resume follow.")
			endif
			RMegara.GetActorReference().EvaluatePackage()
		endif
	endif
	RegisterForSingleUpdate(UpdateInterval)
EndEvent