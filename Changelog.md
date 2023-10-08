## Release

Nexus release: 
Version 1.0 released September of 2022. 
### 2.0.35 - X
- Quality of life - frequency of... potato comments, etc. LOL.
- Fixed typo in Al'Tharo's quest and re-equalized his voice.
- Favors/trading/waiting will be available even if Katana's trust goes down BUT you've completed Chasing the Current.

### 2.0.3 - 10/07/2023
- Skin textures will be BnP + Bijin for some details.
- Fixed some male body inconsistencies.
- More lines for Katana + Megara.
- CountsAsFleeing set to false in heal packages.
- Quality of life changes.
- Added descriptions in Katana's and Megara's unique weapons.
- And something else (patch for another mod but hosted elsewhere).

### 2.0.2 - 09/27/2023
- Changed the way some scenes fire since some lists don't like IsInLocation.
- Added a forced moveto function for Katana in Kilerth's Rest.
- Changed some StartCombat calls since they don't play well with some bleedout mods.
- Added quality-of-life changes.
- Made it so the Shade doesn't come out if it's Katana VS. the player.

### 2.0.1 - 09/13/2023
- Reduced filesize.

### 1.905 - 09/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Cleaned up perks. 
- Finetuned idles, hellos.
- Wanderkill tweaked due to Serana getting attacked.
- Adjusted bleedout time.
- River's a little tougher.
- Companions will be quiet during certain quest lines.
- Added music tracks to Kilerth's Rest in case the user has a jolly playlist.

### 1.90 - 08/27/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Only 3 of Megara's lines are missing.
- All Katana's lines are in (unless something changes).
- New questions asked for shade.
- All shade lines done.
- Scout/wanderkill package has been optimized. If Katana doesn't think there are more enemies, she just stays with you.
- New Apothecary patch.
- Al'Tharo's lines are all in.
- Modified Hold Back package so enemies don't target Katana and Megara.
- New Shadow mode. You, Katana, Megara, and two other followers can be invisible and have muffled movement.
- Made it so there shouldn't be any combat lines if you have the hold back package activated (I really need a better name for this).
- Changed home package. Only condition needed now is `IsInterior`.
- Khajiit Speak patch updated.
- Added Relax=0 condition on some dialogue.
- Optimized Actor Detector.
- Finetuned idle frequencies.
- Healing package modified: 60% health or below before heal.

### 1.89 - 08/15/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Quality of life stuff. 
- Shade's look has been changed a bit.
- Shade now has a voice, but not 100% yet.
- ccotherwordly texture removed. Wasn't in use.

### 1.88 - 08/11/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- A lot of idles should no longer repeat due to `GetDayOfWeek` condition.
- Added crimefactions to NoLikeyVar.
- All 2.0 lines (text, not voices) have been added.
- Chadryn re-EQed.

### 1.87 - 08/05/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Chadryn's lines have been FUZ'ed.
- Sneak/sheathe torch feature implemented.
- You can send Katana off to her own bounties, but this is a WIP.
- All loc idles are in, but unvoiced. This is huge.
- Changed settle radius to 700+ from 500.
- Corrected CBBE nude paths.
- Added Lux patches.
- Changed Megara's FX for the staff.
- Changed staff model.
- Azatar should now actually get paralyzed if DeepVos missed.



### 1.86 - 07/26/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Katana's perks now level up with the player.
- Removed weapspeedperk on Katana.
- Khajiit Speak updated.
- See 2.0 Testers file for documentation.

### 1.85 - 07/24/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- 2.0 should be close to being done. This is a test build with incomplete voices.

### 1.84 - 07/20/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Reduced amount of teleportation.
- Changed sandbox energy so they move less around the player.
- Converted Elli's, Deep's, and Azatar's audio to FUZ.
- Dialogue priorities reorganized.

### 1.83 - 07/07/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- New patch for Wounds available, for Megara.
- All the missing Katana lines have been added.
- Al'Tharo's scene implemented.
- Changed Megara's confidence to Foolhardy due to cowering.

### 1.82 - UNRELEASED - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Reduced the amount of start-game enabled quests and ensures that all of them (except for the follow quests) stop accordingly.
- Katana now correctly reacts to the player stats changing. Refer to [this document](https://github.com/annakins/Katana/blob/main/Relationship%20System.md) if needed
- Changed priority of some dialogue so you hear them first.

### 1.81 - UNRELEASED - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Forwarded USSEP weather for Frozen Hearth.
- Removed Katana's record for WICastMagicNonHostileSpell01 quest.
- Removed Megara's record for BQ01 quest.
- Added recruited condition to use summon spell and reset spell for both followers.
- Modified Katana's, River's, Elli's, and Megara's perks. Ex: I originally had only Restoration50 on Megara, without Restoration00-25.
- Removed `if utility.randomfloat()` in reaction var scenes so they play more.
- Removed getstage lines for letters.
- Changed angle from 64 to -500 and -300 for tele script.

### 1.8 - 06/04/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Removed Katana's teleportation to the player during combat, if dying.
- Increased bleedout time.
- Marked the two notes you get from the quest as optional. Some people reported they couldn't advance the quest upon reading the note(s), so this should help.
- Marked Lucky Irnsvar, Runir Wulfhart, and Galtun Bold-Thief as optional as well, to reduce possible glitches.
- Added BlockActivation on Katana's Shadow to prevent exploitation with looting the corpse.
- Marked Elli's greatsword as not playable.
- Reduced scarf regen from 5 to 2.
- Changed Katana's race stats:
    - Starting health: 150 to 100
    - Starting magicka: 150 to 100
    - Starting stamina: 150 to 100
    - Health regen: 5 to 3
- Moved Lucky Irnsvar a little. Hopefully that helps those that weren't able to find them before.
- Leveling data changed:
    - Elli: 28 to 20.
    - Galtun Bold-Thief: 25 to 17.
    - Lucky Irnsvar: 20 to 12.
    - River: 30 to 22.
    - Runir Wulfhart: 21 to 13.

### 1.7 - 04/16/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Visually replaced all actors (not the bandits).
- New characters (not followers) have been created.
- Katana can now hold back in combat (enable/disable via dialogue), if you play a stealthy character.
- Megara can also hold back in combat (enable/disable via dialogue), but she can still heal you. 
- Both of them go back to being able to attack if they get hit.

### 1.6 - 03/26/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Implemented dialogue option for stealthy characters.
- Added DecreaseRateMajor for if you betray Katana OR Megara.
- Megara can now buff the player if desired (check buff documentation).
- Added Hearthfire to requirements since I'll add lines for that.
- Removed non-CBBE bodies.

### 1.5 - 03/21/2023 - I don't recommend you download this right now. Just uploaded so I have a backup. 
- Changed how bleedout lines are executed.
- Corrected wrong property (Player Reactions Scene).
- OCD check?
    - `Ak69TakiyoSummon` > `AK69TakiyoSummon`.
    - `Ak69KatanaMistRavenCooldown` > `Ak69KatanaMistRavenCooldown`.
    - `AK66MegaraBleedoutHealLinesScript` > `AK69MegaraBleedoutHealLinesScript`.
- Removed extra scripts.
- Added new way for Katana to comment on targets she won't want to kill.
- Reduced regen abilities from 1 to 0.7.
- Gave Megara unique staff.
- Added Katana teleport if you dismiss her and she's far from home.
- Added new lines before hideout time. There is now a script within the dialogue to unseal the door, instead of unsealing it in a quest stage.
- Added dismissed bleedout behavior upon player's hostile activity.
- Added teleportation for dismissal if you are not close to Katana's home.
    - This does not apply to Megara, though. I see her preferring to take her time rather than choosing a theatrical exit. 
- Removed redundant idle animations in intro quest.
- Megara now has lines for Skyrim quests.


### 1.1.2 - 03/03/2023 - I don't recommend you download this right now. Just uploaded so I have a backup.
- Added new lines.
- Changed scarf regen rate from 10% to 5%.
- Added missing progression in loyalty path (dev note: A3G).
- Reduced time for quest progression. By a fair amount.
- Really edited dialogue frequency. I found they didn't talk enough despite having a nice amount of lines.
- Nerfed River's Frostbite.
- Removed extra spaces in topic starters.

### 1.1.1 - 02/03/2023 - I don't recommend you download this right now. Just uploaded so I have a backup.
- Changed the way Megara says healing lines.
- Added message on Takiyo.
- No Trust Decrease system added within dialogue.
    - `Katana will acknowledge all of your actions.` = DEFAULT TRUST.
    - `Katana will look the other way if you decide to partake in certain activities.` = NO TRUST DECREASE.
    - Cleaned up body type folder structure.
- A lot of new lines.
- Re-recorded a lot of lines for consistency.
- Added 3BA + CBBE textures, but I have not tested.

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