	const_def 2 ; object constants
	const HALLOFFAME_LANCE

HallOfFame_MapScripts:
	db 2 ; scene scripts
	scene_script .EnterHallOfFame ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.EnterHallOfFame:
	priorityjump .EnterHallOfFameScript
	end

.DummyScene:
	end

.EnterHallOfFameScript:
	follow HALLOFFAME_LANCE, PLAYER
	applymovement HALLOFFAME_LANCE, HallOfFame_WalkUpWithLance
	stopfollow
	turnobject PLAYER, RIGHT
	opentext
	writetext HallOfFame_LanceText
	waitbutton
	closetext
	turnobject HALLOFFAME_LANCE, UP
	applymovement PLAYER, HallOfFame_SlowlyApproachMachine
	setscene SCENE_FINISHED
	pause 15
	writebyte HEALMACHINE_HALL_OF_FAME
	special HealMachineAnim
	setevent EVENT_BEAT_ELITE_FOUR

	setevent EVENT_REMATCH_AVAILABLE_FALKNER
	setevent EVENT_REMATCH_AVAILABLE_BUGSY
	setevent EVENT_REMATCH_AVAILABLE_WHITNEY
	setevent EVENT_REMATCH_AVAILABLE_MORTY
	setevent EVENT_REMATCH_AVAILABLE_JASMINE
	setevent EVENT_REMATCH_AVAILABLE_PRYCE
	setevent EVENT_REMATCH_AVAILABLE_OKERA
	setevent EVENT_REMATCH_AVAILABLE_RED
	setevent EVENT_BATTLE_AVAILABLE_CLAIR
	clearevent EVENT_BRUNO_BATTLE_DONE
	clearevent EVENT_EXPLODING_TRAP_16 ; silver in nanjo forest
	checkevent EVENT_MEW_FOUGHT
	iffalse .NoMew
	writebyte MEW
	special MonCheck
	iftrue .NoMew ; if player caught
	clearevent EVENT_MEW_SPOT_8_FOUND
	clearevent EVENT_MEW_FOUGHT
.NoMew:
	
clearifnotcaught: MACRO
    writebyte \1
    special MonCheck
    iftrue .skip\@
    clearevent \2
.skip\@:
ENDM
    clearifnotcaught ARTICUNO, EVENT_EXPLODING_TRAP_9
    clearifnotcaught ZAPDOS,   EVENT_EXPLODING_TRAP_3
    clearifnotcaught MOLTRES,  EVENT_EXPLODING_TRAP_4
    clearifnotcaught RAI,      EVENT_AZALEA_TOWN_SLOWPOKES
    clearifnotcaught EN,       EVENT_RIVAL_AZALEA_TOWN
    clearifnotcaught SUI,      EVENT_RIVAL_TEAM_ROCKET_BASE
    clearifnotcaught LUGIA,    EVENT_FOUGHT_LUGIA
    clearifnotcaught HO_OH,    EVENT_FOUGHT_HO_OH
    clearifnotcaught MEWTWO,   EVENT_SWITCH_11

	checkevent EVENT_PACKAGE_TAKEN_NO_SHOW
	iffalse .skipPackages ; if package is sitting there unopened
	checkevent EVENT_TAKEN_SILVER_TROPHY
	iftrue .skipPackages
	setevent EVENT_SILVER_TROPHY_IN_PACKAGE
	clearevent EVENT_PACKAGE_TAKEN_NO_SHOW
.skipPackages:
	checkevent EVENT_BEAT_BLUE_ONCE_BEFORE
	iffalse skipblueflag
	clearevent EVENT_RI_BLUEBATTLE_HIDDEN
skipblueflag:
	setevent EVENT_OLIVINE_PORT_SPRITES_BEFORE_HALL_OF_FAME
	clearevent EVENT_OLIVINE_PORT_SPRITES_AFTER_HALL_OF_FAME
;	setmapscene BRASS_TOWER_3F, SCENE_FINISHED
	special HealParty
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue .SkipPhoneCall
	specialphonecall SPECIALCALL_SSTICKET
.SkipPhoneCall:
	halloffame
	end

HallOfFame_WalkUpWithLance:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

HallOfFame_SlowlyApproachMachine:
	slow_step UP
	step_end

HallOfFame_LanceText:
	text "LANCE: It's been a"
	line "long time since I"
	cont "last came here."

	para "This is where we"
	line "honor the LEAGUE"

	para "CHAMPIONS for all"
	line "eternity."

	para "Their courageous"
	line "#MON are also"
	cont "inducted."

	para "Here today, we"
	line "witnessed the rise"

	para "of a new LEAGUE"
	line "CHAMPION--a"

	para "trainer who feels"
	line "compassion for,"

	para "and trust toward,"
	line "all #MON."

	para "A trainer who"
	line "succeeded through"

	para "perseverance and"
	line "determination."

	para "The new LEAGUE"
	line "CHAMPION who has"

	para "all the makings"
	line "of greatness!"

	para "<PLAY_G>, allow me"
	line "to register you"

	para "and your partners"
	line "as CHAMPIONS!"
	done

HallOfFame_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 13, LANCES_ROOM, 3
	warp_event  5, 13, LANCES_ROOM, 4

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  4, 12, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
