Scriptname AK69AlTharoGlassesPickupScript extends ObjectReference
Quest Property AK69TheKhatsEyeQuest Auto

  Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
    if akNewContainer == Game.GetPlayer()
        AK69TheKhatsEyeQuest.SetStage(50)
    endIf
  endEvent