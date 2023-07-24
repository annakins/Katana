Scriptname AK69CarrotPickUpScript extends ReferenceAlias  

Quest Property AK69CarrotQuest Auto

  Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
    if akNewContainer == Game.GetPlayer()
        AK69CarrotQuest.SetStage(30)
    endIf
  endEvent