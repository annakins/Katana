Scriptname AK69GaltunNoteScript extends ReferenceAlias  

GlobalVariable property AK69GaltunReadLetter auto

Event OnRead()
AK69GaltunReadLetter.SetValue(1)
GetOwningQuest().SetStage(120)
EndEvent