Scriptname AK69LuckyIrnsvarNoteScript extends ReferenceAlias  
GlobalVariable property AK69LuckyReadLetter auto

Event OnRead()
AK69LuckyReadLetter.SetValue(1)
 
if (GetOwningQuest().GetStage() == 70)
 
	GetOwningQuest().SetStage(80)
 
Endif
 
EndEvent
