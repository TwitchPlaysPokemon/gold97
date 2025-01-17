# Bugs and Glitches

These are known bugs and glitches in the original Pokémon Crystal game: code that clearly does not work as intended, or that only works in limited circumstances but has the possibility to fail or crash.

Fixes are written in the `diff` format. If you're familiar with git, this should look farmiliar:
```diff
 this is some code
-delete red - lines
+add green + lines
```


## Contents

- [Thick Club and Light Ball can make (Special) Attack wrap around above 1024](#thick-club-and-light-ball-can-make-special-attack-wrap-around-above-1024)
- [Metal Powder can increase damage taken with boosted (Special) Defense](#metal-powder-can-increase-damage-taken-with-boosted-special-defense)
- [Reflect and Light Screen can make (Special) Defense wrap around above 1024](#reflect-and-light-screen-can-make-special-defense-wrap-around-above-1024)
- [Belly Drum sharply boosts Attack even with under 50% HP](#belly-drum-sharply-boosts-attack-even-with-under-50-hp)
- [Confusion damage is affected by type-boosting items and Explosion/Self-Destruct doubling](#confusion-damage-is-affected-by-type-boosting-items-and-explosionself-destruct-doubling)
- [Moves that lower Defense can do so after breaking a Substitute](#moves-that-lower-defense-can-do-so-after-breaking-a-substitute)
- [Counter and Mirror Coat still work if the opponent uses an item](#counter-and-mirror-coat-still-work-if-the-opponent-uses-an-item)
- [A Disabled but PP Up–enhanced move may not trigger Struggle](#a-disabled-but-pp-upenhanced-move-may-not-trigger-struggle)
- [A Pokémon that fainted from Pursuit will have its old status condition when revived](#a-pokémon-that-fainted-from-pursuit-will-have-its-old-status-condition-when-revived)
- [Lock-On and Mind Reader don't always bypass Fly and Dig](#lock-on-and-mind-reader-dont-always-bypass-fly-and-dig)
- [Beat Up can desynchronize link battles](#beat-up-can-desynchronize-link-battles)
- [Beat Up works incorrectly with only one Pokémon in the party](#beat-up-works-incorrectly-with-only-one-pokémon-in-the-party)
- [Beat Up may fail to raise Substitute](#beat-up-may-fail-to-raise-substitute)
- [Beat Up may trigger King's Rock even if it failed](#beat-up-may-trigger-kings-rock-even-if-it-failed)
- [Present damage is incorrect in link battles](#present-damage-is-incorrect-in-link-battles)
- ["Smart" AI encourages Mean Look if its own Pokémon is badly poisoned](#smart-ai-encourages-mean-look-if-its-own-pokémon-is-badly-poisoned)
- [AI makes a false assumption about `CheckTypeMatchup`](#ai-makes-a-false-assumption-about-checktypematchup)
- [NPC use of Full Heal or Full Restore does not cure Nightmare status](#npc-use-of-full-heal-or-full-restore-does-not-cure-nightmare-status)
- [HP bar animation is slow for high HP](#hp-bar-animation-is-slow-for-high-hp)
- [HP bar animation off-by-one error for low HP](#hp-bar-animation-off-by-one-error-for-low-hp)
- [Experience underflow for level 1 Pokémon with Medium-Slow growth rate](#experience-underflow-for-level-1-pokémon-with-medium-slow-growth-rate)
- [Five-digit experience gain is printed incorrectly](#five-digit-experience-gain-is-printed-incorrectly)
- [BRN/PSN/PAR do not affect catch rate](#brnpsnpar-do-not-affect-catch-rate)
- [Moon Ball does not boost catch rate](#moon-ball-does-not-boost-catch-rate)
- [Love Ball boosts catch rate for the wrong gender](#love-ball-boosts-catch-rate-for-the-wrong-gender)
- [Fast Ball only boosts catch rate for three Pokémon](#fast-ball-only-boosts-catch-rate-for-three-pokémon)
- [Dragon Scale, not Dragon Fang, boosts Dragon-type moves](#dragon-scale-not-dragon-fang-boosts-dragon-type-moves)
- [Daisy's grooming doesn't always increase happiness](#daisys-grooming-doesnt-always-increase-happiness)
- [Magikarp in Lake of Rage are shorter, not longer](#magikarp-in-lake-of-rage-are-shorter-not-longer)
- [Magikarp length limits have a unit conversion error](#magikarp-length-limits-have-a-unit-conversion-error)
- [Magikarp lengths can be miscalculated](#magikarp-lengths-can-be-miscalculated)
- [Battle transitions fail to account for the enemy's level](#battle-transitions-fail-to-account-for-the-enemys-level)
- [A "HOF Master!" title for 200-Time Famers is defined but inaccessible](#a-hof-master-title-for-200-time-famers-is-defined-but-inaccessible)
- [Slot machine payout sound effects cut each other off](#slot-machine-payout-sound-effects-cut-each-other-off)
- [Team Rocket battle music is not used for Executives or Scientists](#team-rocket-battle-music-is-not-used-for-executives-or-scientists)
- [No bump noise if standing on tile `$3E`](#no-bump-noise-if-standing-on-tile-3e)
- [Playing En's Pokédex cry can distort Rai's and Sui's](#playing-ens-pokédex-cry-can-distort-rais-and-suis)
- [In-battle “`…`” ellipsis is too high](#in-battle--ellipsis-is-too-high)
- [Two tiles in the `port` tileset are drawn incorrectly](#two-tiles-in-the-port-tileset-are-drawn-incorrectly)
- [`LoadMetatiles` wraps around past 128 blocks](#loadmetatiles-wraps-around-past-128-blocks)
- [Surfing directly across a map connection does not load the new map](#surfing-directly-across-a-map-connection-does-not-load-the-new-map)
- [Swimming NPCs aren't limited by their movement radius](#swimming-npcs-arent-limited-by-their-movement-radius)
- [`CheckOwnMon` only checks the first five letters of OT names](#checkownmon-only-checks-the-first-five-letters-of-ot-names)
- [Catching a Transformed Pokémon always catches a Ditto](#catching-a-transformed-pokémon-always-catches-a-ditto)
- [Using a Park Ball in normal battles has a corrupt animation](#using-a-park-ball-in-normal-battles-has-a-corrupt-animation)
- [`HELD_CATCH_CHANCE` has no effect](#held_catch_chance-has-no-effect)
- [Only the first three evolution entries can have Stone compatibility reported correctly](#only-the-first-three-evolution-entries-can-have-stone-compatibility-reported-correctly)
- [`EVOLVE_STAT` can break Stone compatibility reporting](#evolve_stat-can-break-stone-compatibility-reporting)
- [`ScriptCall` can overflow `wScriptStack` and crash](#scriptcall-can-overflow-wscriptstack-and-crash)
- [`LoadSpriteGFX` does not limit the capacity of `UsedSprites`](#loadspritegfx-does-not-limit-the-capacity-of-usedsprites)
- [`ChooseWildEncounter` doesn't really validate the wild Pokémon species](#choosewildencounter-doesnt-really-validate-the-wild-pokémon-species)
- [`TryObjectEvent` arbitrary code execution](#tryobjectevent-arbitrary-code-execution)
- [`ClearWRAM` only clears WRAM bank 1](#clearwram-only-clears-wram-bank-1)


## Thick Club and Light Ball can make (Special) Attack wrap around above 1024

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://www.youtube.com/watch?v=rGqu3d3pdok&t=450))

**Fix:** Edit `SpeciesItemBoost` in [engine/battle/effect_commands.asm](/engine/battle/effect_commands.asm)

```diff
 ; Double the stat
 	sla l
 	rl h
+
+	ld a, HIGH(MAX_STAT_VALUE)
+	cp h
+	jr c, .cap
+	ld a, LOW(MAX_STAT_VALUE)
+	cp l
+	ret nc
+
+.cap
+	ld h, HIGH(MAX_STAT_VALUE)
+	ld l, LOW(MAX_STAT_VALUE)
 	ret
```


## Metal Powder can increase damage taken with boosted (Special) Defense

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://www.youtube.com/watch?v=rGqu3d3pdok&t=450))

**Fix:** Edit `DittoMetalPowder` in [engine/battle/effect_commands.asm](/engine/battle/effect_commands.asm):

```diff
 	ld a, c
 	srl a
 	add c
 	ld c, a
 	ret nc

 	srl b
 	ld a, b
 	and a
 	jr nz, .done
 	inc b
 .done
 	scf
 	rr c
+
+	ld a, HIGH(MAX_STAT_VALUE)
+	cp b
+	jr c, .cap
+	ld a, LOW(MAX_STAT_VALUE)
+	cp c
+	ret nc
+
+.cap
+	ld b, HIGH(MAX_STAT_VALUE)
+	ld c, LOW(MAX_STAT_VALUE)
 	ret
```


## Reflect and Light Screen can make (Special) Defense wrap around above 1024

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

This bug existed for all battles in Gold and Silver, and was only fixed for single-player battles in Crystal to preserve link compatibility.

**Fix:** Edit `TruncateHL_BC` in [engine/battle/effect_commands.asm](/engine/battle/effect_commands.asm)

```diff
 .finish
-	ld a, [wLinkMode]
-	cp LINK_COLOSSEUM
-	jr z, .done
 ; If we go back to the loop point,
 ; it's the same as doing this exact
 ; same check twice.
 	ld a, h
 	or b
 	jr nz, .loop

-.done
 	ld b, l
 	ret
```

(This fix also affects Thick Club, Light Ball, and Metal Powder, as described above, but their specific fixes in the above bugs allow more accurate damage calculations.)


## Belly Drum sharply boosts Attack even with under 50% HP

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://www.youtube.com/watch?v=zuCLMikWo4Y))

**Fix:** Edit `BattleCommand_BellyDrum` in [engine/battle/move_effects/belly_drum.asm](/engine/battle/move_effects/belly_drum.asm):

```diff
 BattleCommand_BellyDrum:
 ; bellydrum
-; This command is buggy because it raises the user's attack
-; before checking that it has enough HP to use the move.
-; Swap the order of these two blocks to fix.
-	call BattleCommand_AttackUp2
-	ld a, [wAttackMissed]
-	and a
-	jr nz, .failed
-
 	callfar GetHalfMaxHP
 	callfar CheckUserHasEnoughHP
 	jr nc, .failed
+
+	push bc
+	call BattleCommand_AttackUp2
+	pop bc
+	ld a, [wAttackMissed]
+	and a
+	jr nz, .failed
```


## Confusion damage is affected by type-boosting items and Explosion/Self-Destruct doubling

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://twitter.com/crystal_rby/status/874626362287562752))

*To do:* Identify specific code causing this bug and fix it.


## Moves that lower Defense can do so after breaking a Substitute

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://www.youtube.com/watch?v=OGwKPRJLaaI))

This bug affects Acid, Iron Tail, and Rock Smash.

**Fix:** Edit `DefenseDownHit` in [data/moves/effects.asm](/data/moves/effects.asm):

```diff
 DefenseDownHit:
 	checkobedience
 	usedmovetext
 	doturn
 	critical
 	damagestats
 	damagecalc
 	stab
 	damagevariation
 	checkhit
 	effectchance
 	hittarget
 	failuretext
 	checkfaint
 	criticaltext
 	supereffectivetext
 	checkfaint
 	buildopponentrage
-	effectchance ; bug: duplicate effectchance shouldn't be here
 	defensedown
 	statdownmessage
 	endmove
```


## Counter and Mirror Coat still work if the opponent uses an item

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://www.youtube.com/watch?v=uRYyzKRatFk))

**Fix:** Edit `BattleCommand_Counter` in [engine/battle/move_effects/counter.asm](/engine/battle/move_effects/counter.asm) and `BattleCommand_MirrorCoat` in [engine/battle/move_effects/mirror_coat.asm](/engine/battle/move_effects/mirror_coat.asm):

```diff
-	; BUG: Move should fail with all non-damaging battle actions
 	ld hl, wCurDamage
 	ld a, [hli]
 	or [hl]
-	ret z
+	jp z, .failed
```

Add this to the end of each file:

```diff
+.failed
+	ld a, 1
+	ld [wEffectFailed], a
+	and a
+	ret
```


## A Disabled but PP Up–enhanced move may not trigger Struggle

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://www.youtube.com/watch?v=1v9x4SgMggs))

**Fix:** Edit `CheckPlayerHasUsableMoves` in [engine/battle/core.asm](/engine/battle/core.asm):

```diff
 .done
-	; Bug: this will result in a move with PP Up confusing the game.
-	and a ; should be "and PP_MASK"
+	and PP_MASK
 	ret nz

 .force_struggle
 	ld hl, BattleText_MonHasNoMovesLeft
 	call StdBattleTextBox
 	ld c, 60
 	call DelayFrames
 	xor a
 	ret
```


## A Pokémon that fainted from Pursuit will have its old status condition when revived

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://www.youtube.com/watch?v=tiRvw-Nb2ME))

*To do:* Identify specific code causing this bug and fix it.


## Lock-On and Mind Reader don't always bypass Fly and Dig

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

This bug affects Attract, Curse, Foresight, Mean Look, Mimic, Nightmare, Spider Web, Transform, and stat-lowering effects of moves like String Shot or Bubble during the semi-invulnerable turn of Fly or Dig.

**Fix:** Edit `CheckHiddenOpponent` in [engine/battle/effect_commands.asm](/engine/battle/effect_commands.asm):

```diff
 CheckHiddenOpponent:
-; BUG: This routine is completely redundant and introduces a bug, since BattleCommand_CheckHit does these checks properly.
-	ld a, BATTLE_VARS_SUBSTATUS3_OPP
-	call GetBattleVar
-	and 1 << SUBSTATUS_FLYING | 1 << SUBSTATUS_UNDERGROUND
+	xor a
 	ret
```


## Beat Up can desynchronize link battles

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://www.youtube.com/watch?v=202-iAsrIa8))

**Fix:** Edit `BattleCommand_BeatUp` in [engine/battle/move_effects/beat_up.asm](/engine/battle/move_effects/beat_up.asm):

```diff
 .got_mon
 	ld a, [wd002]
 	ld hl, wPartyMonNicknames
 	call GetNick
 	ld a, MON_HP
 	call GetBeatupMonLocation
 	ld a, [hli]
 	or [hl]
 	jp z, .beatup_fail ; fainted
 	ld a, [wd002]
 	ld c, a
 	ld a, [wCurBattleMon]
-	; BUG: this can desynchronize link battles
-	; Change "cp [hl]" to "cp c" to fix
-	cp [hl]
+	cp c
 	ld hl, wBattleMonStatus
 	jr z, .active_mon
 	ld a, MON_STATUS
 	call GetBeatupMonLocation
 .active_mon
 	ld a, [hl]
 	and a
 	jp nz, .beatup_fail
```


## Beat Up works incorrectly with only one Pokémon in the party

*Fixing this bug may break compatibility with standard Pokémon Crystal for link battles.*

This bug prevents the rest of Beat Up's effect from being executed if the player or enemy only has one Pokémon in their party while using it. It prevents Substitute from being raised and King's Rock from working.

**Fix:** Edit `BattleCommand_EndLoop` in [engine/battle/effect_commands.asm](/engine/battle/effect_commands.asm):

```diff
 .only_one_beatup
 	ld a, BATTLE_VARS_SUBSTATUS3
 	call GetBattleVarAddr
 	res SUBSTATUS_IN_LOOP, [hl]
-	call BattleCommand_BeatUpFailText
-	jp EndMoveEffect
+	ret
```

**Cosmetic fix:** This fix does not break compatibility, but it only affects what's shown on the screen for the patched game.

```diff
 .only_one_beatup
 	ld a, BATTLE_VARS_SUBSTATUS3
 	call GetBattleVarAddr
 	res SUBSTATUS_IN_LOOP, [hl]
 	call BattleCommand_BeatUpFailText
+	call BattleCommand_RaiseSub
 	jp EndMoveEffect
```


## Beat Up may fail to raise Substitute

This bug prevents Substitute from being raised if Beat Up was blocked by Protect or Detect.

**Fix:** Edit `BattleCommand_FailureText` in [engine/battle/effect_commands.asm](/engine/battle/effect_commands.asm).

```diff
 	cp EFFECT_MULTI_HIT
 	jr z, .multihit
 	cp EFFECT_DOUBLE_HIT
 	jr z, .multihit
 	cp EFFECT_POISON_MULTI_HIT
 	jr z, .multihit
+	cp EFFECT_BEAT_UP
+	jr z, .multihit
 	jp EndMoveEffect

 .multihit
 	call BattleCommand_RaiseSub
 	jp EndMoveEffect
```


## Beat Up may trigger King's Rock even if it failed

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

This bug is caused because Beat Up never sets `wAttackMissed`, even when no Pokémon was able to attack (due to being fainted or having a status condition).

**Fix:** Edit `BattleCommand_BeatUpFailText` in [engine/battle/move_effects/beat_up.asm](/engine/battle/move_effects/beat_up.asm):

```diff
 BattleCommand_BeatUpFailText:
 ; beatupfailtext

 	ld a, [wBeatUpHitAtLeastOnce]
 	and a
 	ret nz
+
+	inc a
+	ld [wAttackMissed], a

 	jp PrintButItFailed
```


## Present damage is incorrect in link battles

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

([Video](https://www.youtube.com/watch?v=XJaQoKtrEuw))

This bug existed for all battles in Gold and Silver, and was only fixed for single-player battles in Crystal to preserve link compatibility.

**Fix:** Edit `BattleCommand_Present` in [engine/battle/move_effects/present.asm](/engine/battle/move_effects/present.asm):

```diff
 BattleCommand_Present:
 ; present

-	ld a, [wLinkMode]
-	cp LINK_COLOSSEUM
-	jr z, .colosseum_skippush
 	push bc
 	push de
-.colosseum_skippush
-
	call BattleCommand_Stab
-
-	ld a, [wLinkMode]
-	cp LINK_COLOSSEUM
-	jr z, .colosseum_skippop
 	pop de
 	pop bc
-.colosseum_skippop
```


## "Smart" AI encourages Mean Look if its own Pokémon is badly poisoned

([Video](https://www.youtube.com/watch?v=cygMO-zHTls))

**Fix:** Edit `AI_Smart_MeanLook` in [engine/battle/ai/scoring.asm](/engine/battle/ai/scoring.asm):

```diff
-; 80% chance to greatly encourage this move if the enemy is badly poisoned (buggy).
-; Should check wPlayerSubStatus5 instead.
-	ld a, [wEnemySubStatus5]
+; 80% chance to greatly encourage this move if the player is badly poisoned
+	ld a, [wPlayerSubStatus5]
 	bit SUBSTATUS_TOXIC, a
 	jr nz, .asm_38e26
```


## AI makes a false assumption about `CheckTypeMatchup`

In [engine/battle/effect_commands.asm](/engine/battle/effect_commands.asm).

```asm
BattleCheckTypeMatchup:
	ld hl, wEnemyMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, CheckTypeMatchup
	ld hl, wBattleMonType1
CheckTypeMatchup:
; There is an incorrect assumption about this function made in the AI related code: when
; the AI calls CheckTypeMatchup (not BattleCheckTypeMatchup), it assumes that placing the
; offensive type in a will make this function do the right thing. Since a is overwritten,
; this assumption is incorrect. A simple fix would be to load the move type for the
; current move into a in BattleCheckTypeMatchup, before falling through, which is
; consistent with how the rest of the code assumes this code works like.
	push hl
	push de
	push bc
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	ld d, a
```

*To do:* Fix this bug.


## NPC use of Full Heal or Full Restore does not cure Nightmare status

([Video](https://www.youtube.com/watch?v=rGqu3d3pdok&t=322))

**Fix:** Edit `AI_HealStatus` in [engine/battle/ai/items.asm](/engine/battle/ai/items.asm):

```diff
 AI_HealStatus:
 	ld a, [wCurOTMon]
 	ld hl, wOTPartyMon1Status
 	ld bc, PARTYMON_STRUCT_LENGTH
 	call AddNTimes
 	xor a
 	ld [hl], a
 	ld [wEnemyMonStatus], a
-	; Bug: this should reset SUBSTATUS_NIGHTMARE too
-	; Uncomment the lines below to fix
-	; ld hl, wEnemySubStatus1
-	; res SUBSTATUS_NIGHTMARE, [hl]
+	ld hl, wEnemySubStatus1
+	res SUBSTATUS_NIGHTMARE, [hl]
 	ld hl, wEnemySubStatus5
 	res SUBSTATUS_TOXIC, [hl]
 	ret
```


## HP bar animation is slow for high HP

([Video](https://www.youtube.com/watch?v=SE-BfsFgZVM))

**Fix:** Edit `LongAnim_UpdateVariables` in [engine/battle/anim_hp_bar.asm](/engine/battle/anim_hp_bar.asm):

```diff
-	; This routine is buggy. The result from ComputeHPBarPixels is stored
-	; in e. However, the pop de opcode deletes this result before it is even
-	; used. The game then proceeds as though it never deleted that output.
-	; To fix, uncomment the line below.
 	call ComputeHPBarPixels
-	; ld a, e
+	ld a, e
 	pop bc
 	pop de
 	pop hl
-	ld a, e ; Comment or delete this line to fix the above bug.
 	ld hl, wCurHPBarPixels
 	cp [hl]
 	jr z, .loop
 	ld [hl], a
 	and a
 	ret
```


## HP bar animation off-by-one error for low HP

([Video](https://www.youtube.com/watch?v=9KyNVIZxJvI))

**Fix:** Edit `ShortHPBar_CalcPixelFrame` in [engine/battle/anim_hp_bar.asm](/engine/battle/anim_hp_bar.asm):

```diff
 	ld b, 0
-; This routine is buggy. If [wCurHPAnimMaxHP] * [wCurHPBarPixels] is
-; divisible by HP_BAR_LENGTH_PX, the loop runs one extra time.
-; To fix, uncomment the line below.
 .loop
 	ld a, l
 	sub HP_BAR_LENGTH_PX
 	ld l, a
 	ld a, h
 	sbc $0
 	ld h, a
-	; jr z, .done
+	jr z, .done
 	jr c, .done
 	inc b
 	jr .loop
```


## Experience underflow for level 1 Pokémon with Medium-Slow growth rate

([Video](https://www.youtube.com/watch?v=SXH8u0plHrE))

This can bring Pokémon straight from level 1 to 100 by gaining just a few experience points.

**Fix:** Edit `CalcExpAtLevel` in [engine/pokemon/experience.asm](/engine/pokemon/experience.asm):

```diff
 CalcExpAtLevel:
 ; (a/b)*n**3 + c*n**2 + d*n - e
+	ld a, d
+	cp 1
+	jr nz, .UseExpFormula
+; Pokémon have 0 experience at level 1
+	xor a
+	ld hl, hProduct
+	ld [hli], a
+	ld [hli], a
+	ld [hli], a
+	ld [hl], a
+	ret
+
 +.UseExpFormula
 	ld a, [wBaseGrowthRate]
 	add a
 	add a
 	ld c, a
 	ld b, 0
 	ld hl, GrowthRates
 	add hl, bc
```


## Five-digit experience gain is printed incorrectly

([Video](https://www.youtube.com/watch?v=o54VjpAEoO8))

**Fix:** Edit `Text_ABoostedStringBuffer2ExpPoints` and `Text_StringBuffer2ExpPoints` in [data/text/common_2.asm](/data/text/common_2.asm):

```diff
 Text_ABoostedStringBuffer2ExpPoints::
 	text_start
 	line "a boosted"
 	cont "@"
-	text_decimal wStringBuffer2, 2, 4
+	text_decimal wStringBuffer2, 2, 5
 	text " EXP. Points!"
 	prompt

 Text_StringBuffer2ExpPoints::
 	text_start
 	line "@"
-	text_decimal wStringBuffer2, 2, 4
+	text_decimal wStringBuffer2, 2, 5
 	text " EXP. Points!"
 	prompt
```


## BRN/PSN/PAR do not affect catch rate

**Fix:** Edit `PokeBallEffect` in [engine/items/item_effects.asm](/engine/items/item_effects.asm):

```diff
-; This routine is buggy. It was intended that SLP and FRZ provide a higher
-; catch rate than BRN/PSN/PAR, which in turn provide a higher catch rate than
-; no status effect at all. But instead, it makes BRN/PSN/PAR provide no
-; benefit.
-; Uncomment the line below to fix this.
 	ld b, a
 	ld a, [wEnemyMonStatus]
 	and 1 << FRZ | SLP
 	ld c, 10
 	jr nz, .addstatus
-	; ld a, [wEnemyMonStatus]
+	ld a, [wEnemyMonStatus]
 	and a
 	ld c, 5
 	jr nz, .addstatus
 	ld c, 0
 .addstatus
 	ld a, b
 	add c
 	jr nc, .max_1
 	ld a, $ff
 .max_1
```


## Moon Ball does not boost catch rate

**Fix:** Edit `MoonBallMultiplier` in [items/item_effects.asm](/items/item_effects.asm):

```diff
-; Moon Stone's constant from Pokémon Red is used.
-; No Pokémon evolve with Burn Heal,
-; so Moon Balls always have a catch rate of 1×.
 	push bc
 	ld a, BANK("Evolutions and Attacks")
 	call GetFarByte
-	cp MOON_STONE_RED ; BURN_HEAL
+	cp MOON_STONE
 	pop bc
 	ret nz
```


## Love Ball boosts catch rate for the wrong gender

**Fix:** Edit `LoveBallMultiplier` in [items/item_effects.asm](/items/item_effects.asm):

```diff
 .wildmale

 	ld a, d
 	pop de
 	cp d
 	pop bc
-	ret nz ; for the intended effect, this should be "ret z"
+	ret z
```


## Fast Ball only boosts catch rate for three Pokémon

**Fix:** Edit `FastBallMultiplier` in [items/item_effects.asm](/items/item_effects.asm):

```diff
 .loop
 	ld a, BANK(FleeMons)
 	call GetFarByte

 	inc hl
 	cp -1
 	jr z, .next
 	cp c
-	jr nz, .next ; for the intended effect, this should be "jr nz, .loop"
+	jr nz, .loop
 	sla b
 	jr c, .max
```


## Dragon Scale, not Dragon Fang, boosts Dragon-type moves

*Fixing this bug will break compatibility with standard Pokémon Crystal for link battles.*

**Fix:** Edit `ItemAttributes` in [data/items/attributes.asm](/data/items/attributes.asm):

```diff
 ; DRAGON_FANG
-	item_attribute 100, HELD_NONE, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
+	item_attribute 100, HELD_DRAGON_BOOST, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
 ...
 ; DRAGON_SCALE
-	item_attribute 2100, HELD_DRAGON_BOOST, 10, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
+	item_attribute 2100, HELD_NONE, 10, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
```


## Daisy's grooming doesn't always increase happiness

This is a bug with `HaircutOrGrooming` in [engine/events/haircut.asm](/engine/events/haircut.asm):

```asm
; Bug: Subtracting $ff from $ff fails to set c.
; This can result in overflow into the next data array.
; In the case of getting a grooming from Daisy, we bleed
; into CopyPokemonName_Buffer1_Buffer3, which passes
; $d0 to ChangeHappiness and returns $73 to the script.
; The end result is that there is a 0.4% chance your
; Pokemon's happiness will not change at all.
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	inc hl
	jr .loop

.ok
	inc hl
	ld a, [hli]
	ld [wScriptVar], a
	ld c, [hl]
	call ChangeHappiness
	ret

...

INCLUDE "data/events/happiness_probabilities.asm"

CopyPokemonName_Buffer1_Buffer3:
	ld hl, wStringBuffer1
	ld de, wStringBuffer3
	ld bc, MON_NAME_LENGTH
	jp CopyBytes
```

**Fix:** Edit  [data/events/happiness_probabilities.asm](/data/events/happiness_probabilities.asm):

```diff
 HappinessData_DaisysGrooming:
-	db $ff, 2, HAPPINESS_GROOMING ; 99.6% chance
+	db $80, 2, HAPPINESS_GROOMING ; 50% chance
+	db $ff, 2, HAPPINESS_GROOMING ; 50% chance
```


## Magikarp in Lake of Rage are shorter, not longer

**Fix:** Edit `LoadEnemyMon.CheckMagikarpArea` in [engine/battle/core.asm](/engine/battle/core.asm):

```diff
 .CheckMagikarpArea:
-; The "jr z" checks are supposed to be "jr nz".
-
-; Instead, all maps in GROUP_LAKE_OF_RAGE (Mahogany area)
-; and Routes 20 and 44 are treated as Lake of Rage.
-
-; This also means Lake of Rage Magikarp can be smaller than ones
-; caught elsewhere rather than the other way around.
-
-; Intended behavior enforces a minimum size at Lake of Rage.
-; The real behavior prevents a minimum size in the Lake of Rage area.
-
-; Moreover, due to the check not being translated to feet+inches, all Magikarp
-; smaller than 4'0" may be caught by the filter, a lot more than intended.
 	ld a, [wMapGroup]
 	cp GROUP_LAKE_OF_RAGE
-	jr z, .Happiness
+	jr nz, .Happiness
 	ld a, [wMapNumber]
 	cp MAP_LAKE_OF_RAGE
-	jr z, .Happiness
+	jr nz, .Happiness
```


## Magikarp length limits have a unit conversion error

**Fix:** Edit `LoadEnemyMon.CheckMagikarpArea` in [engine/battle/core.asm](/engine/battle/core.asm):

```diff
 ; Get Magikarp's length
 	ld de, wEnemyMonDVs
 	ld bc, wPlayerID
 	callfar CalcMagikarpLength

 ; No reason to keep going if length > 1536 mm (i.e. if HIGH(length) > 6 feet)
 	ld a, [wMagikarpLength]
-	cp HIGH(1536) ; should be "cp 5", since 1536 mm = 5'0", but HIGH(1536) = 6
+	cp 5
 	jr nz, .CheckMagikarpArea

 ; 5% chance of skipping both size checks
 	call Random
 	cp 5 percent
 	jr c, .CheckMagikarpArea
 ; Try again if length >= 1616 mm (i.e. if LOW(length) >= 3 inches)
 	ld a, [wMagikarpLength + 1]
-	cp LOW(1616) ; should be "cp 3", since 1616 mm = 5'3", but LOW(1616) = 80
+	cp 3
 	jr nc, .GenerateDVs

 ; 20% chance of skipping this check
 	call Random
 	cp 20 percent - 1
 	jr c, .CheckMagikarpArea
 ; Try again if length >= 1600 mm (i.e. if LOW(length) >= 2 inches)
 	ld a, [wMagikarpLength + 1]
-	cp LOW(1600) ; should be "cp 2", since 1600 mm = 5'2", but LOW(1600) = 64
+	cp 2
 	jr nc, .GenerateDVs
```


## Magikarp lengths can be miscalculated

**Fix:** Edit `CalcMagikarpLength.BCLessThanDE` in [engine/events/magikarp.asm](/engine/events/magikarp.asm):

```diff
 .BCLessThanDE:
-; Intention: Return bc < de.
-; Reality: Return b < d.
 	ld a, b
 	cp d
 	ret c
-	ret nc ; whoops
 	ld a, c
 	cp e
 	ret
```


## Battle transitions fail to account for the enemy's level

([Video](https://www.youtube.com/watch?v=eij_1060SMc))

There are three things wrong here:

- `wEnemyMonLevel` isn't initialized yet
- `wBattleMonLevel` gets overwritten after it's initialized by `FindFirstAliveMonAndStartBattle`
- `wBattleMonLevel` isn't initialized until much later when the battle is with a trainer

**Fix:**

First, edit [engine/battle/battle_transition.asm](/engine/battle/battle_transition.asm):

```diff
 StartTrainerBattle_DetermineWhichAnimation:
 ; The screen flashes a different number of times depending on the level of
 ; your lead Pokemon relative to the opponent's.
-; BUG: wBattleMonLevel and wEnemyMonLevel are not set at this point, so whatever
-; values happen to be there will determine the animation.
+	ld a, [wOtherTrainerClass]
+	and a
+	jr z, .wild
+	farcall SetTrainerBattleLevel
+
+.wild
+	ld b, PARTY_LENGTH
+	ld hl, wPartyMon1HP
+	ld de, PARTYMON_STRUCT_LENGTH - 1
+
+.loop
+	ld a, [hli]
+	or [hl]
+	jr nz, .okay
+	add hl, de
+	dec b
+	jr nz, .loop
+
+.okay
+	ld de, MON_LEVEL - MON_HP
+	add hl, de
	ld de, 0
-	ld a, [wBattleMonLevel]
+	ld a, [hl]
 	add 3
-	ld hl, wEnemyMonLevel
+	ld hl, wCurPartyLevel
 	cp [hl]
 	jr nc, .not_stronger
 	set TRANS_STRONGER_F, e
 .not_stronger
 	ld a, [wEnvironment]
 	cp CAVE
 	jr z, .cave
 	cp ENVIRONMENT_5
 	jr z, .cave
 	cp DUNGEON
 	jr z, .cave
 	set TRANS_NO_CAVE_F, e
 .cave
 	ld hl, .StartingPoints
 	add hl, de
 	ld a, [hl]
 	ld [wJumptableIndex], a
 	ret

 .StartingPoints:
 ; entries correspond to TRANS_* constants
 	db BATTLETRANSITION_CAVE
 	db BATTLETRANSITION_CAVE_STRONGER
 	db BATTLETRANSITION_NO_CAVE
 	db BATTLETRANSITION_NO_CAVE_STRONGER
```

Then edit [engine/battle/start_battle.asm](/engine/battle/start_battle.asm):

```diff
 FindFirstAliveMonAndStartBattle:
 	xor a
 	ldh [hMapAnims], a
 	call DelayFrame
-	ld b, 6
-	ld hl, wPartyMon1HP
-	ld de, PARTYMON_STRUCT_LENGTH - 1
-
-.loop
-	ld a, [hli]
-	or [hl]
-	jr nz, .okay
-	add hl, de
-	dec b
-	jr nz, .loop
-
-.okay
-	ld de, MON_LEVEL - MON_HP
-	add hl, de
-	ld a, [hl]
-	ld [wBattleMonLevel], a
 	predef DoBattleTransition
```

Finally, edit [engine/battle/read_trainer_party.asm](/engine/battle/read_trainer_party.asm):

```diff
 INCLUDE "data/trainers/parties.asm"
+
+SetTrainerBattleLevel:
+	ld a, 255
+	ld [wCurPartyLevel], a
+
+	ld a, [wInBattleTowerBattle]
+	bit 0, a
+	ret nz
+
+	ld a, [wLinkMode]
+	and a
+	ret nz
+
+	ld a, [wOtherTrainerClass]
+	dec a
+	ld c, a
+	ld b, 0
+	ld hl, TrainerGroups
+	add hl, bc
+	add hl, bc
+	ld a, [hli]
+	ld h, [hl]
+	ld l, a
+
+	ld a, [wOtherTrainerID]
+	ld b, a
+.skip_trainer
+	dec b
+	jr z, .got_trainer
+.loop1
+	ld a, [hli]
+	cp $ff
+	jr nz, .loop1
+	jr .skip_trainer
+.got_trainer
+
+.skip_name
+	ld a, [hli]
+	cp "@"
+	jr nz, .skip_name
+
+	inc hl
+	ld a, [hl]
+	ld [wCurPartyLevel], a
+	ret
```


## A "HOF Master!" title for 200-Time Famers is defined but inaccessible

([Video](https://www.youtube.com/watch?v=iHkWubvxmSg))

**Fix:** Edit `_HallOfFamePC.DisplayMonAndStrings` in [engine/events/halloffame.asm](/engine/events/halloffame.asm):

```diff
 	ld a, [wHallOfFameTempWinCount]
-	cp HOF_MASTER_COUNT + 1 ; should be HOF_MASTER_COUNT
+	cp HOF_MASTER_COUNT
 	jr c, .print_num_hof
 	ld de, .HOFMaster
 	hlcoord 1, 2
 	call PlaceString
 	hlcoord 13, 2
 	jr .finish
```


## Slot machine payout sound effects cut each other off

([Video](https://www.youtube.com/watch?v=ojq3xqfRF6I))

**Fix:** Edit `Slots_PayoutAnim` in [engine/games/slot_machine.asm](/engine/games/slot_machine.asm):

```diff
 .okay
 	ld [hl], e
 	dec hl
 	ld [hl], d
 	ld a, [wSlotsDelay]
 	and $7
-	ret z ; ret nz would be more appropriate
+	ret nz
 	ld de, SFX_GET_COIN_FROM_SLOTS
 	call PlaySFX
 	ret
```


## Team Rocket battle music is not used for Executives or Scientists

**Fix:** Edit `PlayBattleMusic` in [engine/battle/start_battle.asm](/engine/battle/start_battle.asm):

```diff
 	ld de, MUSIC_ROCKET_BATTLE
 	cp GRUNTM
 	jr z, .done
 	cp GRUNTF
 	jr z, .done
+	cp EXECUTIVEM
+	jr z, .done
+	cp EXECUTIVEF
+	jr z, .done
+	cp SCIENTIST
+	jr z, .done
```


## No bump noise if standing on tile `$3E`

**Fix:** Edit `DoPlayerMovement.CheckWarp` in [engine/overworld/player_movement.asm](/engine/overworld/player_movement.asm):

```diff
 .CheckWarp:
-; Bug: Since no case is made for STANDING here, it will check
-; [.edgewarps + $ff]. This resolves to $3e at $8035a.
-; This causes wd041 to be nonzero when standing on tile $3e,
-; making bumps silent.
-
 	ld a, [wWalkingDirection]
-	; cp STANDING
-	; jr z, .not_warp
+	cp STANDING
+	jr z, .not_warp
 	ld e, a
 	ld d, 0
 	ld hl, .EdgeWarps
 	add hl, de
 	ld a, [wPlayerStandingTile]
 	cp [hl]
 	jr nz, .not_warp

 	ld a, 1
 	ld [wd041], a
 	ld a, [wWalkingDirection]
-	; This is in the wrong place.
-	cp STANDING
-	jr z, .not_warp
```


## Playing En's Pokédex cry can distort Rai's and Sui's

([Video](https://www.youtube.com/watch?v=z305e4sIO24))

The exact cause of this bug is unknown.

**Workaround:** Edit `DexEntryScreen_MenuActionJumptable.Cry` in [engine/pokedex/pokedex.asm](/engine/pokedex/pokedex.asm):

```diff
 .Cry:
-	call Pokedex_GetSelectedMon
-	ld a, [wTempSpecies]
-	call GetCryIndex
-	ld e, c
-	ld d, b
-	call PlayCry
+	ld a, [wCurPartySpecies]
+	call PlayMonCry
 	ret
```


## In-battle “`…`” ellipsis is too high

This is a mistake with the “`…`” tile in [gfx/battle/hp_exp_bar_border.png](/gfx/battle/hp_exp_bar_border.png):

![image](/docs/images/hp_exp_bar_border.png)

**Fix:** Lower the ellipsis by two pixels:

![image](/docs/images/hp_exp_bar_border_fix.png)


## Two tiles in the `port` tileset are drawn incorrectly

This is a mistake with the left-hand warp carpet corner tiles in [gfx/tilesets/port.png](/gfx/tilesets/port.png):

![image](/docs/images/port.png)

**Fix:** Adjust them to match the right-hand corner tiles:

![image](/docs/images/port_fix.png)


## `LoadMetatiles` wraps around past 128 blocks

This bug prevents you from using blocksets with more than 128 blocks.

**Fix:** Edit `LoadMetatiles` in [home/map.asm](/home/map.asm):

```diff
 	; Set hl to the address of the current metatile data ([wTilesetBlocksAddress] + (a) tiles).
-	; This is buggy; it wraps around past 128 blocks.
-	; To fix, uncomment the line below.
-	add a ; Comment or delete this line to fix the above bug.
 	ld l, a
 	ld h, 0
-	; add hl, hl
+	add hl, hl
 	add hl, hl
 	add hl, hl
 	add hl, hl
 	ld a, [wTilesetBlocksAddress]
 	add l
 	ld l, a
 	ld a, [wTilesetBlocksAddress + 1]
 	adc h
 	ld h, a
```


## Surfing directly across a map connection does not load the new map

([Video](https://www.youtube.com/watch?v=XFOWvMNG-zw))

*To do:* Identify specific code causing this bug and fix it.


## Swimming NPCs aren't limited by their movement radius

This bug is why the Lapras in [maps/UnionCaveB2F.asm](/maps/UnionCaveB2F.asm), which uses `SPRITEMOVEDATA_SWIM_WANDER`, is not restricted by its `1, 1` movement radius.

**Fix:** Edit `CanObjectMoveInDirection` in [engine/overworld/npc_movement.asm](/engine/overworld/npc_movement.asm):

```diff
 	ld hl, OBJECT_FLAGS1
 	add hl, bc
 	bit NOCLIP_TILES_F, [hl] ; lost, uncomment next line to fix
-	; jr nz, .noclip_tiles
+	jr nz, .noclip_tiles
```


## `CheckOwnMon` only checks the first five letters of OT names

([Video](https://www.youtube.com/watch?v=GVTTmReM4nQ))

This bug can allow you to talk to Eusine in Celadon City and encounter Ho-Oh with only traded legendary beasts.

**Fix:** Edit `CheckOwnMon` in [engine/pokemon/search.asm](/engine/pokemon/search.asm):

```diff
 ; check OT
-; This only checks five characters, which is fine for the Japanese version,
-; but in the English version the player name is 7 characters, so this is wrong.

 	ld hl, wPlayerName

-rept NAME_LENGTH_JAPANESE + -2 ; should be PLAYER_NAME_LENGTH + -2
+rept PLAYER_NAME_LENGTH + -2
 	ld a, [de]
 	cp [hl]
 	jr nz, .notfound
 	cp "@"
 	jr z, .found ; reached end of string
 	inc hl
 	inc de
 endr

 	ld a, [de]
 	cp [hl]
 	jr z, .found
```


## Catching a Transformed Pokémon always catches a Ditto

This bug can affect Mew or Pokémon other than Ditto that used Transform via Mirror Move or Sketch.

**Fix:** Edit `PokeBallEffect` in [engine/items/item_effects.asm](/engine/items/item_effects.asm):

```diff
 	ld hl, wEnemySubStatus5
 	ld a, [hl]
 	push af
 	set SUBSTATUS_TRANSFORMED, [hl]

-; This code is buggy. Any wild Pokémon that has Transformed will be
-; caught as a Ditto, even if it was something else like Mew.
-; To fix, do not set [wTempEnemyMonSpecies] to DITTO.
 	bit SUBSTATUS_TRANSFORMED, a
-	jr nz, .ditto
-	jr .not_ditto
+	jr nz, .load_data

-.ditto
-	ld a, DITTO
-	ld [wTempEnemyMonSpecies], a
-	jr .load_data
-
-.not_ditto
-	set SUBSTATUS_TRANSFORMED, [hl]
 	ld hl, wEnemyBackupDVs
 	ld a, [wEnemyMonDVs]
 	ld [hli], a
 	ld a, [wEnemyMonDVs + 1]
 	ld [hl], a

 .load_data
 	ld a, [wTempEnemyMonSpecies]
 	ld [wCurPartySpecies], a
 	ld a, [wEnemyMonLevel]
 	ld [wCurPartyLevel], a
 	farcall LoadEnemyMon

 	pop af
 	ld [wEnemySubStatus5], a
```


## Using a Park Ball in normal battles has a corrupt animation

([Video](https://www.youtube.com/watch?v=v1ErZdLCIyU))

**Fix:** Edit `PokeBallEffect` in [engine/items/item_effects.asm](/engine/items/item_effects.asm):

```diff
 .room_in_party
 	xor a
 	ld [wWildMon], a
-	ld a, [wCurItem]
-	cp PARK_BALL
+	ld a, [wBattleType]
+	cp BATTLETYPE_CONTEST
 	call nz, ReturnToBattle_UseBall
```


## `HELD_CATCH_CHANCE` has no effect

**Fix:** Edit `PokeBallEffect` in [engine/items/item_effects.asm](/engine/items/item_effects.asm):

```diff
-	; BUG: farcall overwrites a, and GetItemHeldEffect takes b anyway.
-	; This is probably the reason the HELD_CATCH_CHANCE effect is never used.
-	; Uncomment the line below to fix.
 	ld d, a
 	push de
 	ld a, [wBattleMonItem]
-	; ld b, a
+	ld b, a
 	farcall GetItemHeldEffect
 	ld a, b
 	cp HELD_CATCH_CHANCE
 	pop de
 	ld a, d
 	jr nz, .max_2
 	add c
 	jr nc, .max_2
 	ld a, $ff
 .max_2
```


## Only the first three evolution entries can have Stone compatibility reported correctly

**Workaround:** Edit `PlacePartyMonEvoStoneCompatibility.DetermineCompatibility` in [engine/pokemon/party_menu.asm](/engine/pokemon/party_menu.asm):

```diff
 .DetermineCompatibility:
 	ld de, wStringBuffer1
 	ld a, BANK(EvosAttacksPointers)
 	ld bc, 2
 	call FarCopyBytes
 	ld hl, wStringBuffer1
 	ld a, [hli]
 	ld h, [hl]
 	ld l, a
 	ld de, wStringBuffer1
 	ld a, BANK("Evolutions and Attacks")
-	ld bc, 10
+	ld bc, wStringBuffer2 - wStringBuffer1
 	call FarCopyBytes
```

This supports up to six entries.


## `EVOLVE_STAT` can break Stone compatibility reporting

**Fix:** Edit `PlacePartyMonEvoStoneCompatibility.DetermineCompatibility` in [engine/pokemon/party_menu.asm](/engine/pokemon/party_menu.asm):

```diff
 .loop2
 	ld a, [hli]
 	and a
 	jr z, .nope
+	cp EVOLVE_STAT
+	jr nz, .not_four_bytes
+	inc hl
+.not_four_bytes
 	inc hl
 	inc hl
 	cp EVOLVE_ITEM
 	jr nz, .loop2
```


## `ScriptCall` can overflow `wScriptStack` and crash

In [engine/overworld/scripting.asm](/engine/overworld/scripting.asm):

```asm
ScriptCall:
; Bug: The script stack has a capacity of 5 scripts, yet there is
; nothing to stop you from pushing a sixth script.  The high part
; of the script address can then be overwritten by modifications
; to wScriptDelay, causing the script to return to the rst/interrupt
; space.

	push de
	ld hl, wScriptStackSize
	ld e, [hl]
	inc [hl]
	ld d, $0
	ld hl, wScriptStack
	add hl, de
	add hl, de
	add hl, de
	pop de
	ld a, [wScriptBank]
	ld [hli], a
	ld a, [wScriptPos]
	ld [hli], a
	ld a, [wScriptPos + 1]
	ld [hl], a
	ld a, b
	ld [wScriptBank], a
	ld a, e
	ld [wScriptPos], a
	ld a, d
	ld [wScriptPos + 1], a
	ret
```

*To do:* Fix this bug.


## `LoadSpriteGFX` does not limit the capacity of `UsedSprites`

**Fix:** Edit `LoadSpriteGFX` in [engine/overworld/overworld.asm](/engine/overworld/overworld.asm):

```diff
 LoadSpriteGFX:
-; Bug: b is not preserved, so it's useless as a next count.
-; Uncomment the lines below to fix.
-
 	ld hl, wUsedSprites
 	ld b, SPRITE_GFX_LIST_CAPACITY
 .loop
 	ld a, [hli]
 	and a
 	jr z, .done
 	push hl
 	call .LoadSprite
 	pop hl
 	ld [hli], a
 	dec b
 	jr nz, .loop

 .done
 	ret

 .LoadSprite:
-	; push bc
+	push bc
 	call GetSprite
-	; pop bc
+	pop bc
 	ld a, l
 	ret
```


## `ChooseWildEncounter` doesn't really validate the wild Pokémon species

**Fix:** Edit `ChooseWildEncounter` in [engine/overworld/wildmons.asm](/engine/overworld/wildmons.asm):

```diff
 .ok
 	ld a, b
 	ld [wCurPartyLevel], a
 	ld b, [hl]
-	; ld a, b
+	ld a, b
 	call ValidateTempWildMonSpecies
 	jr c, .nowildbattle

 	cp UNOWN
 	jr nz, .done
```


## `TryObjectEvent` arbitrary code execution

**Fix:** Edit `TryObjectEvent` in [engine/overworld/events.asm](/engine/overworld/events.asm):

```diff
-; Bug: If IsInArray returns nc, data at bc will be executed as code.
 	push bc
 	ld de, 3
 	ld hl, .pointers
 	call IsInArray
 	jr nc, .nope_bugged
 	pop bc

 	inc hl
 	ld a, [hli]
 	ld h, [hl]
 	ld l, a
 	jp hl

 .nope_bugged
-	; pop bc
+	pop bc
 	xor a
 	ret
```


## `ClearWRAM` only clears WRAM bank 1

**Fix:** Edit `ClearWRAM` in [home/init.asm](/home/init.asm):

```diff
 ClearWRAM::
 ; Wipe swappable WRAM banks (1-7)
 ; Assumes CGB or AGB

 	ld a, 1
 .bank_loop
 	push af
 	ldh [rSVBK], a
 	xor a
 	ld hl, WRAM1_Begin
 	ld bc, WRAM1_End - WRAM1_Begin
 	call ByteFill
 	pop af
 	inc a
 	cp 8
-	jr nc, .bank_loop ; Should be jr c
+	jr c, .bank_loop
 	ret
```
