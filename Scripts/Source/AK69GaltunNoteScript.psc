Scriptname AK69GaltunNoteScript extends ReferenceAlias  

Event OnRead()
 
if (GetOwningQuest().GetStage() == 110)
 
	GetOwningQuest().SetStage(120)
 
Endif
 
EndEvent