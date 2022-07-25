Scriptname AK69BleedoutLinesScript extends ReferenceAlias  

scene property AK69KatanaBleedout auto

Event OnEnterBleedout()
Utility.Wait(4)
AK69KatanaBleedout.Start()
endEvent
