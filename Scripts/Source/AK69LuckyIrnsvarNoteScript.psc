Scriptname AK69LuckyIrnsvarNoteScript extends ReferenceAlias  

Event OnRead()
 
if (GetOwningQuest().GetStage() == 70)
 
	GetOwningQuest().SetStage(80)
 
Endif
 
EndEvent