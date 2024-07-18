Scriptname AK69ShadowQuestScript extends Quest  

GlobalVariable Property AK69ShadowVar  Auto  
GlobalVariable Property AK69KatanaWorkWithPlayer  Auto  
GlobalVariable Property AK69MegaraWorkWithPlayer  Auto  
GlobalVariable Property AK69ShaleWorkWithPlayer  Auto  
GlobalVariable Property AK69MegaraTorchVar  Auto  
Message Property AK69KatanaShadowsYES  Auto  
Message Property AK69KatanaShadowsNO  Auto  
Actor Property Megara Auto
Light Property Torch01 Auto

Function Setup()
AK69KatanaShadowsYES.Show()
AK69ShadowVar.SetValue(1)
AK69KatanaWorkWithPlayer.SetValue(1)
AK69MegaraWorkWithPlayer.SetValue(1)
AK69ShaleWorkWithPlayer.SetValue(1)
AK69MegaraTorchVar.SetValue(1)
Megara.RemoveItem(Torch01)
EndFunction

Function StopShroud()
AK69KatanaShadowsNO.Show()
AK69ShadowVar.SetValue(0)
AK69KatanaWorkWithPlayer.SetValue(0)
AK69MegaraWorkWithPlayer.SetValue(0)
AK69ShaleWorkWithPlayer.SetValue(0)
SetStage(20)
EndFunction

