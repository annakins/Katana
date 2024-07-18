Scriptname AK69FlowerComment extends ObjectReference  

Scene Property AK69TheRavensLamentFlowerScene Auto
GlobalVariable Property AK69FlowerPickedupVar Auto

  Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
    if (akNewContainer == Game.GetPlayer() && AK69FlowerPickedupVar.GetValue() == 0)
        AK69TheRavensLamentFlowerScene.Start()
    endIf
    AK69FlowerPickedupVar.SetValue(1)
  endEvent