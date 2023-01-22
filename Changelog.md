## Release

Nexus release: 
Version 1.0 released September of 2022. 

### 1.1 - 01/22/2023 - I don't recommend you download this right now. Just uploaded so I have a backup.
- Removed: KatlasFarmExterior [CELL:000092BF] (in Tamriel "Skyrim" [WRLD:0000003C] at -19,23)
- Removed: MarkarthExterior01 [CELL:0000717A] (in Tamriel "Skyrim" [WRLD:0000003C] at -42,1)
- Removed: RiftenCityNorthGateExterior [CELL:0000BCAF] (in Tamriel "Skyrim" [WRLD:0000003C] at 42,-23)
- Removed: WhiterunExterior01 [CELL:0000961B] (in Tamriel "Skyrim" [WRLD:0000003C] at 4,-3)
- Removed: WinterholdExterior05 [CELL:00008EC0] (in Tamriel "Skyrim" [WRLD:0000003C] at 27,24)
- Removed: SilentMoonsCampBlacksmith [CELL:0000951F] (in Tamriel "Skyrim" [WRLD:0000003C] at 0,4)
- ITPO records removed: 6
- Removed: Duplicate navmesh.
- Re-recorded 781 Katana voice lines.
- Modified Takiyo's skeleton as it caused crashes for Precision users.
- Added spell to check relationship with Katana.
- Added relax variables so the mod's followers do not mount when waiting for the player.
- Modifed both Katana and Megara config scripts, to simplify `sandbox around player` packages.
- Modified frequency of scarf comment.
- Added lines to script to help ensure Lucky Irnsvar shows up during the quest.
- Optional objectives should now also be marked as complete.
- Removed variable that may have caused Cappy to show up at the Bee and Barb.
- Added time passed factor RE: Katana's quest, for those that have a long Skyrim playthrough already (I'm not changing the regard system for waiting, trading, and favors).
    - First stage - 1 game hour
    - Second stage - 6 game hours
    - Third stage - 8 game hours
    - Fourth stage - 24 game hours
- Modified COTN - Winterhold - Katana patch: Elli's location.
- Added BHUNP textures for FOMOD.
- Modified dialogue frequency.
- Added unique katana weapon.

### 1.0.1 - 09/02/2022
- Removed idle animation changes and using DAR instead.
- Removed sabrecat idle since most people have USSEP.
- Fixed JK's All in One FOMOD detection.
- Fixed body type paths in FOMOD.
- Removed the relationship system's major stat increase as I had the wrong idea about the bounty query stat. 
- Deleted .tga files.

### 1.0 - 08/31/2022
- Uploaded all dialogue that's needed.
- Removed Requiem patch so Arkay can update whenever he wants to.
- Updated Khajiit Speak patch.
- Moving forward, please use the Nexus version: https://www.nexusmods.com/skyrimspecialedition/mods/69622

## Beta Changelog

### 0.63 - UNRELEASED
- Removed green shader for stamina regen.
- Added dialogue.

### 0.62 - 08/18/22
- Tweaked MGEFs for most actors since some of them may have not worked previously due to conditions.
- Added invulnerability aspect for River to prevent player from trying to kill her before Elli.
- Added stamina regen for Katana.
- Added Tower of Strength to Megara, River, Elli, and Katana.
- Changed Elli's weapon to Ebony.
- Changed armor rating of Elli's to 30. Was 18. 
- Megara's armor rating is now 25.
- River's armor rating is now 30. Was 18.
- Changed River's Frostbite damage from 12 to 15.
- Oh boy. Playing with mults again... Elli: Was 17, now 28. Galtun: was 15, now 25. Katana Shadow: Was 20, now 30. Lucky: was 10, now 20. River: Was 20, now 30. Runir: Was 15, now 21.
- Changed markers in the hideout to reduce delays in the scenes.
- Added dialogue.
- Converted all current Katana audio files into FUZ files.

### 0.61 - 08/15/22
- Added dialogue.
- Modified debug spell. Sneak bug should go away when you see it.
- Increased Megara's healing powers.
- Added more unvoiced Megara lines.
- Corrected the Wander Kill package.
- Suppressed rifle noise.
- Tweaked both Megara's and Katana's combat styles.
- Renamed some assets to make more sense when using the console, ex: `Shadow` > `Katana's Shadow`.

### 0.60 - 08/08/2022
- Removed the LocTypeInn condition to get the quest started.
- New FOMOD.
- Added distance feature.
- Added "wander kill" feature.

### 0.59 - 08/05/2022
- Just kidding, now the bleedout package works for when the two are not recruited.
- Just kidding part 2: I needed to take off `IsInDialogueWithPlayer` for Goodbye topics.
- Changed some parameters for stage 170 of the quest so you don't run into Elli.
- Tweaked the villain values.
- Changed River's combat style so she uses magic more.
- Added more dialogue.

### 0.58 - 08/03/2022
- Corrected Megara's cure function. No longer uses the generic Stendarr template.
- Elli's travel to hideout package changed. 
- Added more emotion values and gestures.
- Added delete scripts for all Chasing the Current object references.
- Tweaked Megara's healing package.
- Made it so the two heal themselves even if not recruited.
- Cleaned an ITM record.
- Added "IsInDialogueWithPlayer" for all greetings so you don't constantly hear "Yes?" | "What's going on?" LOL.
- Converted Elli's audio lines to FUZ.

### 0.57 - 07/30/2022
- Decided to remove the `Armors Improved` stat for reactions due to bugginess.
- Made River and Elli stronger.
- Added float values to reduce amount of times Katana would teleport to you to save you.
- Changed Megara's staff to a Firebolt one.
- Made Katana's shadow much stronger.
- Removed hood from my initial experimental days.
- Megara can now cure player diseases. She needs garlic in return.
- Changed FX for Megara summons.
- Removed most of the DAR folders.
- Corrected typos. Hehe, thanks Destiny.
- Checked the box for `Stores Text` for Player Reference Aliases, to make patching easier (RE: considering mods like Khajiit Speak).

### 0.56b - 07/25/2022
- Added GetRandomPercent for reactions to player scenes.

### 0.56 - 07/25/2022
*Needed to just release this due to v0.55.1 being a bit "off".*
- Reverted back to original damage.
- Added a spell to try to correct sneak bug.
- Fixed typo on `Game.QueryStat("Trespasses")`.
- Did a round of script clean-up.
- Changed follow distance package for both Katana and Megara.
- Added new bleedout behavior for both Katana and Megara.
- Tweaked Cappy's travel packages during the quest.
- Reduced Megara's aggression.
- Modified Katana's and Megara's combat styles. Harry Styles.

### 0.55.1 - 07/22/2022
*Needs testers due to the amount of updates, and unsure if compatible with previous version.*
- Changed Takiyo and Cappy's Stay packages.
- Added missing dialogue.
- Corrected Megara's hair so there's no clipping when she wears helmets.
- Added more dialogue.
- Added possible sneak bug fix.
- Added possible follower-on-follower attack fix.
- Did a round of script clean-up.
- Reduced Katana's regen, but increased damage.

### 0.54 - 06/28/2022
*Not compatible with previous versions.*
- Added travel packages for Cappy during quest (*ooh, immersion*).
- Corrected seam, changed underwear.
- Corrected a bunch of packages.
- Also corrected the nude option.

### 0.53 - 06/21/2022
*Likely not compatible with previous versions.*
- Nerfed all quest enemies. 
- Made Megara's armor "playable".
- Added new response system for player actions.
- Modified relationship system.

### 0.52 - 06/13/2022
*Compatible with 0.51, before meeting Galtun Bold-Thief.*
- Just did a quick nerf for Galtun and the enemies after.
- Re-added the CBBE nude instructions because I forgot it in 0.51.

### 0.51 - 06/12/2022
*NOT compatible with previous versions.*
- Megara is now available as a follower (healer). 
- Changed Elli's sword because paralysis seems buggy if overly used.
- This log may be short, but the changes made were huge.

### 0.50 - 06/07/2022
*NOT compatible with previous versions.*
- Updated AI package.
- More dialogue.
- Added spell to get Katana unstuck.
- New dialogue for when Katana isn't in your squad (I'll add more later).
- Megara now has radiant bounty quests.
- Nerfed River and Katana more.
- Elli and River are now in the same faction (so if you attack one, the other attacks).
- Katana now has a special ability upon completing her quest. 
- Katana can now live in an interior and non-hostile environment.

### 0.49 - 05/30/2022
*Might not be compatible with previous versions.*
- Changed Katana's hair.
- Removed Katana's invisibility conditions for dragons.
- Added a torch for Megara.
- Added an option to proceed with quest if the player decides to attempt to kill the final villains.
- Nerfed all enemies except for Lucky Irnsvar.
- Added CBBE nude option.
- More dialogue.

### 0.48 - 05/20/2022
*NOT compatible with previous versions.*
- Nerfed Katana. *I apparently had her skilled in Destruction, too...* `You saw nothing.` ;)
- Removed most of the combat animations. *If I reached out to you previously to include your mod, thank you for giving me permission to do so. I sincerely appreciate your kindness.* 
    - This is due to the fact that most people use their own combat frameworks these days.
    - Kept the idles and only a few other combat animations.
- Removed ability for player to pickpocket Katana. 
- Follow package has been updated to make her more combat-aware.
- Added the rest of Elli's voice lines.
- Added the rest of Katana's quest lines.

### 0.47 - 05/09/2022
*NOT compatible with previous versions.*
- Added Elli and River difficulty.
- Added remaining dialogue and scenes (without voices, except for Elli's) for the quest.


### 0.46 - 04/04/2022
*I recommend using ReSaver if you have an older version of Katana. Or if you have a new save, great.*
- Katana's lines before stage 180 have been recorded. These may still be changed.
- The map markers were still showing in the last build. Should be okay now.
- Removed some animations.

### 0.452 - 03/20/2022
*I recommend using ReSaver if you have an older version of Katana. Or if you have a new save, great.*
- Katana's armor ratings have been reduced to allow more outfit replacement.
- Massive rework on quest dialogue.
- Removed KeepDistanceFrom package.
- Added favor *flavors*.
- Modified mounting behavior. 
- Modfied teleport behavior with ranged weapons.
- Modified Takiyo's idle.
- Removed local map markers for personal quest.

### 0.44 - 02/21/2022 
*Save-compatible.*
- Takiyo should no longer move to you if you don't have Katana with you.
### 0.43 - 02/14/2022 
*Should be save-compatible.*
- Combat style has been updated to be more dynamic.
- Gun sounds are more tolerable.
### 0.42 - 02/11/2022
- For the most part, the quest's voices are incomplete. There are placeholders, however.