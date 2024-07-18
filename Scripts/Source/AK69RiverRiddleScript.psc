Scriptname AK69RiverRiddleScript extends ObjectReference  

Quest Property AK69TheRavensLamentQuest Auto
GlobalVariable Property AK69RiddlePickedupVar Auto

  Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
    if (akNewContainer == Game.GetPlayer() && AK69RiddlePickedupVar.GetValue() == 0)
        AK69TheRavensLamentQuest.SetStage(70)
    endIf
    AK69RiddlePickedupVar.SetValue(1)
  endEvent