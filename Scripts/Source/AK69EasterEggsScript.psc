Scriptname AK69EasterEggsScript extends Quest  

ObjectReference property Azatar auto
ObjectReference property Chadryn auto
ObjectReference property Deepvos auto
ObjectReference Property AzatarMarker  Auto 
ObjectReference Property DeepvosMarker  Auto 

Function Setup()	
    Azatar.Enable()
    Chadryn.Enable()
    Deepvos.Enable()
    Azatar.moveto(AzatarMarker)
    Deepvos.moveto(DeepvosMarker)
EndFunction
