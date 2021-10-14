	const_def 2 ; object constants
	const WHIRLISLAND_SUI

TidalGrotto1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SuiEvent:
	faceplayer
	opentext
	writetext SuiText
	cry SUI
	pause 15
	closetext
	setevent EVENT_RIVAL_TEAM_ROCKET_BASE
	writecode VAR_BATTLETYPE, BATTLETYPE_ROAMING
	loadwildmon SUI, 40
	startbattle
	disappear WHIRLISLAND_SUI
	reloadmapafterbattle
	end

SuiText:
	text "Groroa!"
	done
	
WhirlWarpToSanskrit:
	playsound SFX_BUBBLEBEAM
	turnobject PLAYER, LEFT
	pause 3
	turnobject PLAYER, UP
	pause 3
	turnobject PLAYER, RIGHT
	pause 3
	turnobject PLAYER, DOWN
	pause 3
	turnobject PLAYER, LEFT
	pause 3
	turnobject PLAYER, UP
	pause 3
	turnobject PLAYER, RIGHT
	pause 3
	turnobject PLAYER, DOWN
	pause 3
	special FadeOutPalettes
	warpfacing DOWN, SANSKRIT_TOWN, 11, 9
	end
	
WhirlWarpToSanskrit2:
	playsound SFX_BUBBLEBEAM
	turnobject PLAYER, LEFT
	pause 3
	turnobject PLAYER, UP
	pause 3
	turnobject PLAYER, RIGHT
	pause 3
	turnobject PLAYER, DOWN
	pause 3
	turnobject PLAYER, LEFT
	pause 3
	turnobject PLAYER, UP
	pause 3
	turnobject PLAYER, RIGHT
	pause 3
	turnobject PLAYER, DOWN
	pause 3
	special FadeOutPalettes
	warpfacing DOWN, SANSKRIT_TOWN, 11, 9
	end

TidalGrotto1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  2, TIDAL_GROTTO_B1F, 1
	warp_event 18, 33, TIDAL_GROTTO_B1F, 2

	db 2 ; coord events
	coord_event  3,  5, 0, WhirlWarpToSanskrit
	coord_event 18, 22, 0, WhirlWarpToSanskrit2

	db 0 ; bg events

	db 1 ; object events
	object_event 19, 24, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SuiEvent, EVENT_RIVAL_TEAM_ROCKET_BASE
