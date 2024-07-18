Scriptname AK69SQNoteScript extends ObjectReference  

Quest Property AK69SerenataQuest Auto
int Property NoteRead  Auto  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
    if akNewContainer == Game.GetPlayer() && AK69SerenataQuest.GetStage() == 50
        AK69SerenataQuest.SetStage(60)
    endIf
  endEvent

Event OnRead()
    if NoteRead == 0 && AK69SerenataQuest.GetStage() == 60
        AK69SerenataQuest.SetStage(70)
        NoteRead = 1 
    endif
EndEvent