;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 74
Scriptname AK69_QF_AK69TheRavensLamentQu_058BB420 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Hag5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Hag5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ShaleMarker2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ShaleMarker2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverMarker3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverMarker3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverVoice
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverVoice Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Shale
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Shale Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY River
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_River Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ShaleVoice_
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ShaleVoice_ Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Hag4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Hag4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY VilemyrWarning
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_VilemyrWarning Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BeeandBarbMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BeeandBarbMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverMarker1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverMarker1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Megara
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Megara Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Hag1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Hag1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Katana
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Katana Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrateForSword
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrateForSword Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY VilemyrInnMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_VilemyrInnMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BeeandBarbUPSTAIRSMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BeeandBarbUPSTAIRSMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ShaleVoice
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ShaleVoice Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Hag3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Hag3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverFlower
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverFlower Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RiverMarker2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RiverMarker2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FallowstoneMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FallowstoneMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Atronach1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Atronach1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Hag2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Hag2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Shade
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Shade Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Atronach2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Atronach2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ShaleMarker1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ShaleMarker1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE AK69TheRavensLamentScript
Quest __temp = self as Quest
AK69TheRavensLamentScript kmyQuest = __temp as AK69TheRavensLamentScript
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(50)
SetObjectiveDisplayed(51)
SetObjectiveDisplayed(52)
kmyQuest.ActivateFlowerRiddle()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Katana to ask Megara's thoughts
AK69TheRavensLamentMegaraThoughts.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_42
Function Fragment_42()
;BEGIN CODE
SetObjectiveDisplayed(230)

Alias_Hag1.GetReference().Enable()
Alias_Hag2.GetReference().Enable()
Alias_Hag3.GetReference().Enable()
Alias_Hag4.GetReference().Enable()
Alias_Hag5.GetReference().Enable()
Alias_River.GetActorReference().StartCombat(Game.GetPlayer())
Alias_Katana.GetActorReference().StartCombat(Alias_Hag1.GetActorReference())
Alias_Shale.GetActorReference().StartCombat(Alias_Hag2.GetActorReference())
Alias_Megara.GetActorReference().StartCombat(Alias_Hag3.GetActorReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_46
Function Fragment_46()
;BEGIN AUTOCAST TYPE AK69TheRavensLamentScript
Quest __temp = self as Quest
AK69TheRavensLamentScript kmyQuest = __temp as AK69TheRavensLamentScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.Paralyze()
AK69TRLShadeScene1.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_36
Function Fragment_36()
;BEGIN CODE
AK69FindRiverScene3.Stop()
AK69FindRiverScene4.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
SetObjectiveDisplayed(120)
AK69Atronach1.Enable()
AK69Atronach2.Enable()
;Ambush
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_58
Function Fragment_58()
;BEGIN CODE
AK69FindRiverScene4.Stop()
;asking if player is ready
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_62
Function Fragment_62()
;BEGIN CODE
KatanaActor.EvaluatePackage()
ShaleActor.EvaluatePackage()
MegaraActor.EvaluatePackage()

SetObjectiveDisplayed(290)
SetObjectiveDisplayed(291)
SetObjectiveDisplayed(292)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN CODE
AK69FindRiverScene1.Start()
KatanaActor.EvaluatePackage()
ShaleActor.EvaluatePackage()
MegaraActor.EvaluatePackage()
SetObjectiveDisplayed(170)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN CODE
AK69RiverMarker1.Enable()
Alias_Katana.GetActorReference().EvaluatePackage()
;Katana forcegreet
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveDisplayed(100)
SetObjectiveDisplayed(101)
AK69FallowstoneSceneTriggerREF.Enable()
AK69AmbushTime.Enable()
AK69FallowstoneAmbushTrigger.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_33
Function Fragment_33()
;BEGIN CODE
KatanaActor.EvaluatePackage()
ShaleActor.EvaluatePackage()
MegaraActor.EvaluatePackage()
AK69FindRiverScene3.Start()
AK69RiverMarker3.Enable()
AK69RiverTent1.Enable()
AK69RiverTent2.Enable()
AK69RiverBed1.Enable()
AK69RiverBed2.Enable()
AK69RiverSceneTrigger3REF.Enable()
AK69Smoke1.Enable()
AK69Spit01.Enable()
AK69SpitPot.Enable()
AK69Bowl1.Enable()
AK69Bowl2.Enable()
AK69Crate1.Enable()
AK69Food1.Enable()
AK69FoodMead.Enable()
AK69RiverFire.Enable()
RiverREF.Enable()
RiverREF.MoveTo(AK69RiverDoNothingMarker)
RiverActor.SetOutfit(AK69RiverOutfit2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE AK69TheRavensLamentScript
Quest __temp = self as Quest
AK69TheRavensLamentScript kmyQuest = __temp as AK69TheRavensLamentScript
;END AUTOCAST
;BEGIN CODE
;Second voice scene concluded
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
SetObjectiveDisplayed(140)
AK69ShaleMarker1.Enable()
AK69ShaleTrigger1REF.Enable()
MegaraActor.StopCombat()
MegaraActor.StopCombatAlarm()
KatanaActor.StopCombat()
KatanaActor.StopCombatAlarm()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
setObjectiveCompleted(30)
setObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_49
Function Fragment_49()
;BEGIN AUTOCAST TYPE AK69TheRavensLamentScript
Quest __temp = self as Quest
AK69TheRavensLamentScript kmyQuest = __temp as AK69TheRavensLamentScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.StopParalysis()
kmyQuest.ShadeBye2()
KatanaActor.EvaluatePackage()
ShaleActor.EvaluatePackage()
MegaraActor.EvaluatePackage()
AK69MegaraTorchVar.SetValue(0)
SetStage(271)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
setObjectiveCompleted(60)
AK69TheRavensLamentReadRiddleScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
setObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_56
Function Fragment_56()
;BEGIN CODE
;River talk to player
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_70
Function Fragment_70()
;BEGIN CODE
Self.CompleteAllObjectives()
Self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;Katana forcegreets player
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_60
Function Fragment_60()
;BEGIN CODE
AK69FindRiverScene4B.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_68
Function Fragment_68()
;BEGIN AUTOCAST TYPE AK69TheRavensLamentScript
Quest __temp = self as Quest
AK69TheRavensLamentScript kmyQuest = __temp as AK69TheRavensLamentScript
;END AUTOCAST
;BEGIN CODE
(AK69KatanaFollowQuest as AK69Katanacontroller).IncreaseRateMajor()

AK69TRLCompleted.SetValue(1)
AK69SerenataQuest.Start()
AK69ShaleTracker.Start()
kmyQuest.DeleteStuff()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_47
Function Fragment_47()
;BEGIN AUTOCAST TYPE AK69TheRavensLamentScript
Quest __temp = self as Quest
AK69TheRavensLamentScript kmyQuest = __temp as AK69TheRavensLamentScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.Paralyze()
AK69TRLShadeScene2.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
SetObjectiveCompleted(120)
Alias_RiverVoice.GetReference().MoveTo(Game.GetPlayer())
Alias_ShaleVoice.GetReference().MoveTo(Game.GetPlayer())
AK69FallowstoneSceneB.Start()
;Atronachs deado
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_39
Function Fragment_39()
;BEGIN CODE
SetObjectiveCompleted(170)
AK69FindRiverScene6.Start()
RiverRef.PlaceAtMe(SummonValorTargetFXActivator)	
RiverRef.MoveTo(KatanaActor as objectreference, 200.000 * Math.Sin(KatanaActor.GetAngleZ()), 200.000 * Math.Cos(KatanaActor.GetAngleZ()))
RiverRef.SetAngle(0.0, 0.0, 162.0)
RiverRef.PlaceAtMe(SummonValorTargetFXActivator)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AK69TheRavensLamentScript
Quest __temp = self as Quest
AK69TheRavensLamentScript kmyQuest = __temp as AK69TheRavensLamentScript
;END AUTOCAST
;BEGIN CODE
;First voice scene concluded
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
Alias_Katana.GetActorReference().EvaluatePackage()
AK69OnTheWay2Scene.Start()
AK69ShaleMarker2.Enable()
AK69ShaleTrigger2.Enable()
ShaleREF.Enable()
ShaleREF.RemoveItem(AK69Tsukikage, 1)
ShaleREF.MoveTo(AK69ShaleMarker2)
ShaleActor.SetRestrained()
ShaleActor.SetOutfit(AK69ShaleOutfit_B)
ShaleActor.AllowBleedoutDialogue(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
SetObjectiveDisplayed(110)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_72
Function Fragment_72()
;BEGIN CODE
AK69TRLShadeScene2.Stop()
AK69TRLTESTSCENE.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
setObjectiveCompleted(50)
setObjectiveDisplayed(60)
RiddleIdleScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_44
Function Fragment_44()
;BEGIN AUTOCAST TYPE AK69TheRavensLamentScript
Quest __temp = self as Quest
AK69TheRavensLamentScript kmyQuest = __temp as AK69TheRavensLamentScript
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(230)
AK69AuraBlueFX.stop(RiverActor)
AK69TRLBleedoutScene.Start()
kmyQuest.ShadeBye()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_65
Function Fragment_65()
;BEGIN CODE
SetObjectiveCompleted(290)
SetObjectiveCompleted(291)
SetObjectiveCompleted(292)
SetObjectiveCompleted(293)

AK69TRLFINScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_38
Function Fragment_38()
;BEGIN CODE
AK69FindRiverScene5.Start()
AK69MegaraTorchVar.SetValue(1)
MegaraActor.RemoveItem(Torch01)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_31
Function Fragment_31()
;BEGIN CODE
AK69FindRiverScene2.Start()
AK69RiverMarker2.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_51
Function Fragment_51()
;BEGIN CODE
SetObjectiveDisplayed(280)
KatanaActor.EvaluatePackage()
ShaleActor.EvaluatePackage()
MegaraActor.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property RiddleIdleScene  Auto  

ObjectReference Property AK69RiverFlower  Auto  

ObjectReference Property AK69RiverRiddle  Auto  

Scene Property AK69TheRavensLamentMegaraThoughts  Auto  

Scene Property AK69TheRavensLamentReadRiddleScene  Auto  

ObjectReference Property AK69Atronach1  Auto  

ObjectReference Property AK69Atronach2  Auto  

Scene Property AK69FallowstoneSceneB  Auto  

ObjectReference Property AK69ShaleMarker1  Auto  

ObjectReference Property AK69ShaleTrigger1REF  Auto  

ObjectReference Property AK69FallowstoneSceneTriggerREF  Auto  

ObjectReference Property AK69AmbushTime  Auto  

ObjectReference Property AK69FallowstoneAmbushTrigger  Auto  

ObjectReference Property AK69ShaleMarker2  Auto  

ObjectReference Property ShaleREF  Auto  

ObjectReference Property AK69ShaleTrigger2  Auto  

Outfit Property AK69ShaleOutfit_B  Auto  

Actor Property ShaleActor  Auto  

Scene Property AK69FindRiverScene1  Auto  

ObjectReference Property AK69RiverMarker1  Auto  

Scene Property AK69FindRiverScene2  Auto  

ObjectReference Property AK69RiverMarker2  Auto  


Scene Property AK69OnTheWay2Scene  Auto  

Scene Property AK69FindRiverScene3  Auto  

ObjectReference Property AK69RiverMarker3  Auto  

Scene Property AK69FindRiverScene4  Auto  

ObjectReference Property AK69RiverTent1  Auto  

ObjectReference Property AK69RiverTent2  Auto  

ObjectReference Property AK69RiverBed1  Auto  

ObjectReference Property AK69RiverBed2  Auto  

ObjectReference Property AK69RiverSceneTrigger3REF  Auto  

ObjectReference Property AK69Smoke1  Auto  

ObjectReference Property AK69Spit01  Auto  

ObjectReference Property AK69SpitPot  Auto  

ObjectReference Property AK69Bowl1  Auto  

ObjectReference Property AK69Bowl2  Auto  

ObjectReference Property AK69Crate1  Auto  

ObjectReference Property AK69Food1  Auto  

ObjectReference Property AK69FoodMead  Auto  

ObjectReference Property AK69RiverFire  Auto  

ObjectReference Property RiverRef  Auto  

ObjectReference Property AK69RiverDoNothingMarker  Auto  

Outfit Property AK69RiverOutfit2  Auto  

Actor Property RiverActor  Auto  

Scene Property AK69FindRiverScene6  Auto  

Activator Property SummonValorTargetFXActivator  Auto  

Scene Property AK69FindRiverScene5  Auto  

VisualEffect Property AK69AuraBlueFX  Auto  

Scene Property AK69TRLBleedoutScene  Auto  

Scene Property AK69TRLShadeScene1  Auto  

Scene Property AK69TRLShadeScene2  Auto  

Actor Property KatanaActor  Auto  

Actor Property MegaraActor  Auto  

EffectShader Property Paralysis  Auto  

Scene Property AK69ByeRiverScene  Auto  

WEAPON Property AK69Tsukikage  Auto  

EffectShader Property DeathFXS  Auto  

Explosion Property AK69ShadowDeathExplosion  Auto  

Actor Property KatanaShade  Auto  



Light Property Torch01  Auto  

GlobalVariable Property AK69MegaraTorchVar  Auto  

Scene Property AK69FindRiverScene4B  Auto  

Scene Property AK69TRLFINScene  Auto  

GlobalVariable Property AK69TRLCompleted  Auto  

Quest Property AK69ShaleTracker  Auto  

Quest Property AK69SerenataQuest  Auto  



Scene Property AK69TRLTESTSCENE  Auto  

Quest Property AK69KatanaFollowQuest  Auto  
