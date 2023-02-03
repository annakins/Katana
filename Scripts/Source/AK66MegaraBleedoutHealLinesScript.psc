Scriptname AK66MegaraBleedoutHealLinesScript extends ReferenceAlias  


scene property AK69MegaraBleedout auto
scene property AK69MegaraHealScene auto 
spell property HealOther auto
spell property HealingHands auto
spell property HealUndead auto
spell property NecromanticHealing auto


Event OnEnterBleedout()
Utility.Wait(4)
AK69MegaraBleedout.Start()
endEvent

Event OnSpellCast(Form akSpell)
    Utility.Wait(1)
    If (akSpell == HealOther) || (akSpell == HealingHands) || (akSpell == HealUndead) || (akSpell == NecromanticHealing) 
    AK69MegaraHealScene.Start()
    endIf

EndEvent