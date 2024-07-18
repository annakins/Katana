Scriptname AK69RiddleReadScript extends ReferenceAlias  

GlobalVariable Property AK69RiddleReadVar Auto

Event OnRead()
if AK69RiddleReadVar.GetValue() == 0
    GetOwningQuest().SetStage(60)
endif
AK69RiddleReadVar.SetValue(1)
EndEvent