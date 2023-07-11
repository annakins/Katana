Scriptname AK69MegaraBanditSetStageScript extends ReferenceAlias  

Quest Property MegaraBanditQuest  Auto  

Event OnDeath(Actor killer)
MegaraBanditQuest.SetStage(20)
EndEvent