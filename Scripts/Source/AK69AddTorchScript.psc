Scriptname AK69AddTorchScript extends activemagiceffect  

Light Property Torch01 auto

Event OnEffectStart(Actor aktarget, Actor akcaster)    
    akcaster.AddItem(Torch01)
    ;Debug.Notification ("Megara's torch was removed so she magically got one")
endEvent