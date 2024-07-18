Scriptname AK69ShaleTRLBleedoutScript extends ReferenceAlias  

scene property BleedoutScene auto

Event OnEnterBleedout()
Utility.Wait(3)
BleedoutScene.Start()
endEvent