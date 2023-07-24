Scriptname AK69SugarandSpiceScript extends Quest  

ObjectReference Property AK69SaSpiceXMarker1 Auto
ObjectReference Property AK69SaSpiceXMarkerDirection Auto
ObjectReference Property AK69MarkerforMegara Auto

Function DeleteStuff()
AK69SaSpiceXMarker1.Disable()
AK69SaSpiceXMarkerDirection.Disable()
AK69MarkerforMegara.Disable()
EndFunction


Function SleepySleeps()
    RegisterForSleep() ; Before we can use OnSleepStart we must register.
  EndFunction
   
  Event OnSleepStop(bool abInterrupted)
      if abInterrupted
          self.Setstage(45)
      else
        self.Setstage(45)
      endIf
  endEvent