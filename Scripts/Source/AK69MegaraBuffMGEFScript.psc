Scriptname AK69MegaraBuffMGEFScript extends activemagiceffect  

Spell Property AK69FortifyBlock auto
Spell Property AK69FortifyConjuration auto
Spell Property AK69FortifyDestruction auto
Spell Property AK69FortifyMagicka auto
Spell Property AK69FortifyMarksman auto
Spell Property AK69FortifyOneHanded auto
Spell Property AK69FortifyStamina auto
Spell Property AK69FortifyTwoHanded auto
GlobalVariable Property AK69MegaraFortifyVar auto

Event OnEffectStart(Actor aktarget, Actor akcaster)    
        if AK69MegaraFortifyVar.GetValue() == 1
          ;Debug.Notification("This should have been a cast")
          AK69FortifyBlock.Cast(Game.GetPlayer(),Game.GetPlayer())
        elseif AK69MegaraFortifyVar.GetValue() == 2
            AK69FortifyConjuration.cast(Game.GetPlayer(),Game.GetPlayer())
        elseif AK69MegaraFortifyVar.GetValue() == 3
            AK69FortifyDestruction.cast(Game.GetPlayer(),Game.GetPlayer())
        elseif AK69MegaraFortifyVar.GetValue() == 4
            AK69FortifyMagicka.cast(Game.GetPlayer(),Game.GetPlayer())
        elseif AK69MegaraFortifyVar.GetValue() == 5
            AK69FortifyMarksman.cast(Game.GetPlayer(),Game.GetPlayer())
        elseif AK69MegaraFortifyVar.GetValue() == 6
            AK69FortifyOneHanded.cast(Game.GetPlayer(),Game.GetPlayer())
        elseif AK69MegaraFortifyVar.GetValue() == 7
            AK69FortifyStamina.cast(Game.GetPlayer(),Game.GetPlayer())
        elseif AK69MegaraFortifyVar.GetValue() == 8
            AK69FortifyTwoHanded.cast(Game.GetPlayer(),Game.GetPlayer())
        endIf
endEvent
