Scriptname AK69GaltunNoteScript extends ReferenceAlias  

GlobalVariable property AK69GaltunReadLetter auto

Event OnRead()
AK69GaltunReadLetter.SetValue(1)
if (GetOwningQuest().GetStage() == 110) 
	GetOwningQuest().SetStage(120)
 Endif
 EndEvent