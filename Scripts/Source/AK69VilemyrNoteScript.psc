Scriptname AK69VilemyrNoteScript extends ObjectReference  

GlobalVariable Property AK69VilemyrNoteReadVar Auto
Scene Property AK69VilemyrScene2 Auto
Quest Property AK69TheRavensLamentQuest Auto

Event OnRead()
if AK69VilemyrNoteReadVar.GetValue() == 0
    AK69TheRavensLamentQuest.SetObjectiveCompleted(105)
    AK69VilemyrScene2.Start()
endif
AK69VilemyrNoteReadVar.SetValue(1)

EndEvent