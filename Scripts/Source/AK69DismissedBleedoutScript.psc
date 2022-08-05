Scriptname AK69DismissedBleedoutScript extends ReferenceAlias  

ReferenceAlias Property FollowerActor auto
Potion Property RestoreHealth04  Auto  

Event OnEnterBleedout()
Utility.Wait(4)
FollowerActor.GetActorReference().AddItem(RestoreHealth04, 1, true)
FollowerActor.GetActorReference().EquipItem(RestoreHealth04 as form, false, false)
FollowerActor.GetActorReference().RestoreActorValue("Health", 100 as Float)
EndEvent