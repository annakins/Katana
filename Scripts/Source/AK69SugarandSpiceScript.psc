Scriptname AK69SugarandSpiceScript extends Quest  

ObjectReference Property AK69SaSpiceXMarker1 Auto
ObjectReference Property AK69SaSpiceXMarkerDirection Auto
ObjectReference Property AK69MarkerforMegara Auto
ObjectReference Property AK69SaSSceneTrigger Auto
Quest Property AK69TheRavensLamentQuest Auto

Function DeleteStuff()
AK69SaSpiceXMarker1.Disable()
AK69SaSpiceXMarkerDirection.Disable()
AK69MarkerforMegara.Disable()
AK69SaSSceneTrigger.Disable()
AK69TheRavensLamentQuest.Start()
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