Scriptname AK69KatanaConfigScript extends Quest  

AK69KatanaController property KatanaDataStorage auto
ReferenceAlias Property RKatana auto
GlobalVariable Property FollowerRecruited Auto
Scene Property KatanaPlayerReactionsScene auto
GlobalVariable property KatanaPlayerReactionsVar auto
int Property UpdateInterval auto
float Property SettleRadius auto

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

		if (RKatana.GetActorReference().GetActorValue("WaitingForPlayer") != 0)
			RKatana.GetActorReference().SetActorValue("WaitingForPlayer", 0)
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
			if (KatanaDataStorage.PlayerSettled == true)
				switchedPackageConditions = true
			endif
			KatanaDataStorage.PlayerSettled = false
		else
			if (KatanaDataStorage.PlayerSettled == false)
				switchedPackageConditions = true
			endif
			KatanaDataStorage.PlayerSettled = true
		endif

		if (switchedPackageConditions)
			if (KatanaDataStorage.PlayerSettled)
; 				Debug.Trace("RKatana: Player settled; sandbox.")
			else
; 				Debug.Trace("RKatana: Player moving more than settle radius; resume follow.")
			endif
			RKatana.GetActorReference().EvaluatePackage()
		endif
	endif	
If RKatana.GetActorReference().HasLOS(Game.GetPlayer())
UpdateStats()
Else
	KatanaDataStorage.UpdateAllStats()
EndIf
	RegisterForSingleUpdate(UpdateInterval)
EndEvent

function UpdateStats()

	;==============INCREASE==============
	int LocationsDiscovered = Game.QueryStat("Locations Discovered")
	if LocationsDiscovered > KatanaDataStorage.PStat_LocationsDiscovered
		KatanaDataStorage.PStat_LocationsDiscovered = LocationsDiscovered
		KatanaDataStorage.IncreaseRateMinor()	
	endif
	
	int DungeonsCleared = Game.QueryStat("Dungeons Cleared")
	if DungeonsCleared > KatanaDataStorage.PStat_DungeonsCleared
		KatanaDataStorage.PStat_DungeonsCleared = DungeonsCleared
		KatanaDataStorage.IncreaseRateMinor()
	endif
	
	int DaysPassed = Game.QueryStat("Days Passed")
	if DaysPassed > KatanaDataStorage.PStat_DaysPassed
		KatanaDataStorage.PStat_DaysPassed = DaysPassed
		KatanaDataStorage.IncreaseRateMinor()
	endif
	
	int BrawlsWon = Game.QueryStat("Brawls Won")
	if Brawlswon > KatanaDataStorage.PStat_BrawlsWon
		KatanaDataStorage.PStat_BrawlsWon = BrawlsWon
		KatanaDataStorage.IncreaseRateMinor()	
		if utility.randomfloat() < 0.25
		KatanaPlayerReactionsVar.SetValueInt(1)
		KatanaPlayerReactionsScene.Start()
		endif		
	endif

	int StandingStones = Game.QueryStat("Standing Stones Found")
	if StandingStones > KatanaDataStorage.PStat_StandingStones
		KatanaDataStorage.PStat_StandingStones = StandingStones
		KatanaDataStorage.IncreaseRateMinor()	
	endif

	int ChestsLooted = Game.QueryStat("Chests Looted")
	if ChestsLooted > KatanaDataStorage.PStat_ChestsLooted 
		KatanaDataStorage.PStat_ChestsLooted = ChestsLooted
		KatanaDataStorage.IncreaseRateMinor()
	endif

	int SkillIncrease = Game.QueryStat("Skill Increases")
	if SkillIncrease > KatanaDataStorage.PStat_SkillIncrease 
		KatanaDataStorage.PStat_SkillIncrease = SkillIncrease		
		KatanaDataStorage.IncreaseRateMinor()		
	endif

	int SkillBooksRead = Game.QueryStat("Skill Books Read")
	if SkillBooksRead > KatanaDataStorage.PStat_SkillBooksRead
		KatanaDataStorage.PStat_SkillBooksRead = SkillBooksRead
		KatanaDataStorage.IncreaseRateMinor()
	endif
	
	int TrainingSessions = Game.QueryStat("Training Sessions")
	if TrainingSessions > KatanaDataStorage.PStat_Training
		KatanaDataStorage.PStat_Training = TrainingSessions
		KatanaDataStorage.IncreaseRateMinor()
	endif
	
	int BooksRead = Game.QueryStat("Books Read")
	if BooksRead > KatanaDataStorage.PStat_BooksRead
		KatanaDataStorage.PStat_BooksRead = BooksRead
		KatanaDataStorage.IncreaseRateMinor()
	endif	

	int HousesOwned = Game.QueryStat("Houses Owned")
	if HousesOwned > KatanaDataStorage.PStat_HousesOwned
		KatanaDataStorage.PStat_HousesOwned = HousesOwned		
		KatanaDataStorage.IncreaseRateMinor()
		if utility.randomfloat() < 0.25
		KatanaPlayerReactionsVar.SetValueInt(3)
		KatanaPlayerReactionsScene.Start()
		endif
	endif

	int QuestsCompleted = Game.QueryStat("Quests Completed")
	if QuestsCompleted > KatanaDataStorage.PStat_QuestsCompleted
		KatanaDataStorage.PStat_QuestsCompleted = QuestsCompleted
		KatanaDataStorage.IncreaseRateMinor()
	endif
	
	int CriticalStrikes = Game.QueryStat("Critical Strikes")
	if CriticalStrikes > KatanaDataStorage.PStat_CritStrikes
		KatanaDataStorage.PStat_CritStrikes = CriticalStrikes
		KatanaDataStorage.IncreaseRateMinor()
	endif

	int SneakAttacks = Game.QueryStat("Sneak Attacks")
	if SneakAttacks > KatanaDataStorage.PStat_SneakAttacks
		KatanaDataStorage.PStat_SneakAttacks = SneakAttacks
		KatanaDataStorage.IncreaseRateMinor()
	endif	
	
	int Backstabs = Game.QueryStat("Backstabs")
	if Backstabs > KatanaDataStorage.PStat_Backstabs
		KatanaDataStorage.PStat_Backstabs = Backstabs
		KatanaDataStorage.IncreaseRateMinor()
	endif	
	
	int WeaponsDisarmed = Game.QueryStat("Weapons Disarmed")
	if WeaponsDisarmed > KatanaDataStorage.PStat_Disarmed
		KatanaDataStorage.PStat_Disarmed = WeaponsDisarmed
		KatanaDataStorage.IncreaseRateMinor()
	endif		
	
	int UndeadKilled = Game.QueryStat("Undead Killed")
	if UndeadKilled > KatanaDataStorage.PStat_UndeadKilled
		KatanaDataStorage.PStat_UndeadKilled = UndeadKilled
		KatanaDataStorage.IncreaseRateMinor()
	endif	
	
	int DaedraKilled = Game.QueryStat("Daedra Killed")
	if DaedraKilled > KatanaDataStorage.PStat_DaedraKilled
		KatanaDataStorage.PStat_DaedraKilled = DaedraKilled
		KatanaDataStorage.IncreaseRateMinor()
	endif	
	
	int AutomatonsKilled = Game.QueryStat("Automatons Killed")
	if AutomatonsKilled > KatanaDataStorage.PStat_AutomatonsKilled
		KatanaDataStorage.PStat_AutomatonsKilled = AutomatonsKilled
		KatanaDataStorage.IncreaseRateMinor()
	endif	
		
	int SpellsLearned = Game.QueryStat("Spells Learned")
	if SpellsLearned > KatanaDataStorage.PStat_SpellsLearned
		KatanaDataStorage.PStat_SpellsLearned = SpellsLearned
		KatanaDataStorage.IncreaseRateMinor()
	endif	
	
	int DragonSoulsCollected = Game.QueryStat("Dragon Souls Collected")
	if DragonSoulsCollected > KatanaDataStorage.PStat_DragonSoulsCollected
		KatanaDataStorage.PStat_DragonSoulsCollected = DragonSoulsCollected		
		KatanaDataStorage.IncreaseRateModerate()
		if utility.randomfloat() < 0.25
		KatanaPlayerReactionsVar.SetValueInt(4)
		KatanaPlayerReactionsScene.Start()
		endif
	endif	
	
	int WordsOfPowerLearned = Game.QueryStat("Words Of Power Learned")
	if WordsOfPowerLearned > KatanaDataStorage.PStat_WordsOfPowerLearned
		KatanaDataStorage.PStat_WordsOfPowerLearned = WordsOfPowerLearned
		KatanaDataStorage.IncreaseRateMinor()
	endif	
	
	int ShoutsLearned = Game.QueryStat("Shouts Learned")
	if ShoutsLearned > KatanaDataStorage.PStat_ShoutsLearned
		KatanaDataStorage.PStat_ShoutsLearned = ShoutsLearned
		KatanaDataStorage.IncreaseRateModerate()
	endif	
	
	int ShoutsMastered = Game.QueryStat("Shouts Mastered")
	if ShoutsMastered > KatanaDataStorage.PStat_ShoutsMastered
		KatanaDataStorage.PStat_ShoutsMastered = ShoutsMastered		
		KatanaDataStorage.IncreaseRateModerate()
		if utility.randomfloat() < 0.25
		KatanaPlayerReactionsVar.SetValueInt(5)
		KatanaPlayerReactionsScene.Start()
		endif
	endif
	
	int WeaponsImproved = Game.QueryStat("Weapons Improved")
	if WeaponsImproved > KatanaDataStorage.PStat_WeapsImproved
		KatanaDataStorage.PStat_WeapsImproved = WeaponsImproved		
		KatanaDataStorage.IncreaseRateMinor()
		if utility.randomfloat() < 0.25
			KatanaPlayerReactionsVar.SetValueInt(8)
		KatanaPlayerReactionsScene.Start()
		endif
	endif	
	
	int WeaponsMade = Game.QueryStat("Weapons Made")
	if WeaponsMade > KatanaDataStorage.PStat_WeapsMade
		KatanaDataStorage.PStat_WeapsMade = WeaponsMade		
		KatanaDataStorage.IncreaseRateMinor()
		if utility.randomfloat() < 0.25
			KatanaPlayerReactionsVar.SetValueInt(6)
		KatanaPlayerReactionsScene.Start()
		endif
	endif
	
	;Removing this due to unidentifiable spam.
	;int ArmorImproved = Game.QueryStat("Armor Improved")
	;if WeaponsMade > KatanaDataStorage.PStat_ArmorImproved
		;KatanaDataStorage.PStat_ArmorImproved = ArmorImproved		
		;KatanaDataStorage.IncreaseRateMinor()
		;if utility.randomfloat() < 0.25
			;KatanaPlayerReactionsVar.SetValueInt(9)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	int ArmorMade = Game.QueryStat("Armor Made")
	if ArmorMade > KatanaDataStorage.PStat_ArmorMade
		KatanaDataStorage.PStat_ArmorMade = ArmorMade		
		KatanaDataStorage.IncreaseRateMinor()
		if utility.randomfloat() < 0.25
		KatanaPlayerReactionsVar.SetValueInt(7)
		KatanaPlayerReactionsScene.Start()
		endif
	endif
	
	int Persuasions = Game.QueryStat("Persuasions")
	if Persuasions > KatanaDataStorage.PStat_Persuasions
		KatanaDataStorage.PStat_Persuasions = Persuasions
		KatanaDataStorage.IncreaseRateMinor()
	endif
	
	int PoisonsMixed = Game.QueryStat("Poisons Mixed")
	if PoisonsMixed > KatanaDataStorage.PStat_PoisonsMixed
		KatanaDataStorage.PStat_PoisonsMixed = PoisonsMixed
		KatanaDataStorage.IncreaseRateMinor()
	endif
	
	int PoisonsUsed = Game.QueryStat("Poisons Used")
	if PoisonsUsed > KatanaDataStorage.PStat_PoisonsUsed
		KatanaDataStorage.PStat_PoisonsUsed = PoisonsUsed
		KatanaDataStorage.IncreaseRateMinor()
	endif
	
	;int EastmarchBounty = Game.QueryStat("Eastmarch Bounty")
	;if EastmarchBounty > KatanaDataStorage.PStat_EastmarchBounty
		;KatanaDataStorage.PStat_EastmarchBounty = EastmarchBounty		
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
			;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	;int FalkreathBounty = Game.QueryStat("Falkreath Bounty")
	;if FalkreathBounty > KatanaDataStorage.PStat_FalkreathBounty
		;KatanaDataStorage.PStat_FalkreathBounty = FalkreathBounty		
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
		;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	;int HaafingarBounty = Game.QueryStat("Haafingar Bounty")
	;if HaafingarBounty > KatanaDataStorage.PStat_HaafingarBounty
		;KatanaDataStorage.PStat_HaafingarBounty = HaafingarBounty		
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
		;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	;int HjaalmarchBounty = Game.QueryStat("Hjaalmarch Bounty")
	;if HjaalmarchBounty > KatanaDataStorage.PStat_HjaalmarchBounty
		;KatanaDataStorage.PStat_HjaalmarchBounty = HjaalmarchBounty		
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
		;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	;int ThePaleBounty = Game.QueryStat("The Pale Bounty")
	;if ThePaleBounty > KatanaDataStorage.PStat_ThePaleBounty
		;KatanaDataStorage.PStat_ThePaleBounty = ThePaleBounty		
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
		;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	;int TheReachBounty = Game.QueryStat("The Reach Bounty")
	;if TheReachBounty > KatanaDataStorage.PStat_TheReachBounty
		;KatanaDataStorage.PStat_TheReachBounty = TheReachBounty		
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
		;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	;int TheRiftBounty = Game.QueryStat("The Rift Bounty")
	;if TheRiftBounty > KatanaDataStorage.PStat_TheRiftBounty
		;KatanaDataStorage.PStat_TheRiftBounty = TheRiftBounty		
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
		;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	;int TribalOrcsBounty = Game.QueryStat("Tribal Orcs Bounty")
	;if TribalOrcsBounty > KatanaDataStorage.PStat_TribalOrcsBounty
		;KatanaDataStorage.PStat_TribalOrcsBounty = TribalOrcsBounty		
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
		;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	;int WhiterunBounty = Game.QueryStat("Whiterun Bounty")
	;if WhiterunBounty > KatanaDataStorage.PStat_WhiterunBounty
		;KatanaDataStorage.PStat_WhiterunBounty = WhiterunBounty		
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
		;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
	
	;int WinterholdBounty = Game.QueryStat("Winterhold Bounty")
	;if WinterholdBounty > KatanaDataStorage.PStat_WinterholdBounty
		;KatanaDataStorage.PStat_WinterholdBounty = WinterholdBounty
		;KatanaDataStorage.IncreaseRateMajor()
		;if utility.randomfloat() < 0.25
		;KatanaPlayerReactionsVar.SetValueInt(10)
		;KatanaPlayerReactionsScene.Start()
		;endif
	;endif
		
	;==============DECREASE==============	
	
	int Murders = Game.QueryStat("Murders")
	if Murders > KatanaDataStorage.PStat_Murders
		KatanaDataStorage.PStat_Murders = Murders	
		KatanaDataStorage.DecreaseRateMajor()
		if utility.randomfloat() < 0.25	
		KatanaPlayerReactionsVar.SetValueInt(13)
		KatanaPlayerReactionsScene.Start()
		endif
	endif
	
	int BunniesSlaughtered  = Game.QueryStat("Bunnies Slaughtered")
	if BunniesSlaughtered > KatanaDataStorage.PStat_BunniesSlaughtered
		KatanaDataStorage.PStat_BunniesSlaughtered = BunniesSlaughtered		
		KatanaDataStorage.DecreaseRateMajor()
		if utility.randomfloat() < 0.25
		KatanaPlayerReactionsVar.SetValueInt(14)
		KatanaPlayerReactionsScene.Start()
		endif
	endif
	
	int HorsesStolen = Game.QueryStat("Horses Stolen")	
	if HorsesStolen > KatanaDataStorage.PStat_HorsesStolen
		KatanaDataStorage.PStat_HorsesStolen = HorsesStolen
		KatanaDataStorage.DecreaseRateModerate()
	endif
		
	int Trespasses = Game.QueryStat("Trespasses")	
	if Trespasses > KatanaDataStorage.PStat_Trespasses
		KatanaDataStorage.PStat_Trespasses = Trespasses
		KatanaDataStorage.DecreaseRateMinor()
	endif
		
	int Bribes = Game.QueryStat("Bribes")
	if Bribes > KatanaDataStorage.PStat_Bribes
		KatanaDataStorage.PStat_Bribes = Bribes		
		KatanaDataStorage.DecreaseRateMinor()
		if utility.randomfloat() < 0.25
		KatanaPlayerReactionsVar.SetValueInt(11)
		KatanaPlayerReactionsScene.Start()
		endif
	endif
		
	int PocketsPicked = Game.QueryStat("Pockets Picked")
	if PocketsPicked > KatanaDataStorage.PStat_PocketsPicked
		KatanaDataStorage.PStat_PocketsPicked = PocketsPicked		
		KatanaDataStorage.DecreaseRateMinor()
		if utility.randomfloat() < 0.25
		KatanaPlayerReactionsVar.SetValueInt(12)
		KatanaPlayerReactionsScene.Start()
		endif
	endif

	int ItemsPickpocketed = Game.QueryStat("Items Pickpocketed")
	if ItemsPickpocketed > KatanaDataStorage.PStat_ItemsPickpocketed
		KatanaDataStorage.PStat_ItemsPickpocketed = ItemsPickpocketed
		KatanaDataStorage.DecreaseRateMinor()
	endif
	
	int ItemsStolen = Game.QueryStat("Items Stolen")
	if ItemsStolen > KatanaDataStorage.PStat_ItemsStolen
		KatanaDataStorage.PStat_ItemsStolen = ItemsStolen		
		KatanaDataStorage.DecreaseRateMinor()
		if utility.randomfloat() < 0.25
		KatanaPlayerReactionsVar.SetValueInt(15)
		KatanaPlayerReactionsScene.Start()
		endif
	endif
	
endFunction