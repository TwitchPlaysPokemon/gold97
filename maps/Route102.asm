	const_def 2 ; object constants
	const ROUTE102_YOUNGSTER1
	const ROUTE102_YOUNGSTER2
	const ROUTE102_LASS1
	const ROUTE102_FRUIT_TREE
	const ROUTE102_ARTHUR
	const ROUTE102_SILVER
	const ROUTE102_YOUNGSTER3
	const ROUTE102_YOUNGSTER4
	const ROUTE102_BUG_CATCHER
	const ROUTE102_FISHER1
	const ROUTE102_FISHER2


Route102_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_ROUTE36_NOTHING
	scene_script .DummyScene1 ; SCENE_ROUTE36_SILVER

	db 3 ; callbacks
	callback MAPCALLBACK_OBJECTS, .ArthurCallback
	callback MAPCALLBACK_NEWMAP, .CheckMomCall
	callback MAPCALLBACK_TILES, .Route35ClearTree
	
.Route35ClearTree
	checkevent EVENT_ROUTE36_GARDENER
	iftrue .Done
	changeblock  33, 07, $07 ; tree
.Done:
	return

.CheckMomCall:
	checkevent EVENT_TALKED_TO_MOM_AFTER_GETTING_POKEDEX
	iffalse .DoMomCall
	return

.DoMomCall:
	specialphonecall SPECIALCALL_WORRIED
	return

.DummyScene0:
	end

.DummyScene1:
	end

.ArthurCallback:
	checkcode VAR_WEEKDAY
	ifequal THURSDAY, .ArthurAppears
	disappear ROUTE102_ARTHUR
	return

.ArthurAppears:
	appear ROUTE102_ARTHUR
	return
	
GardenerScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .chopped
	writetext GardenerTreeText
	waitbutton
	closetext
	turnobject ROUTE102_FISHER1, UP
	end
	
.chopped
	writetext GardenerTreeChoppedText
	waitbutton
	closetext
	applymovement ROUTE102_FISHER2, GardenerWalkAway
	setevent EVENT_ROUTE36_TREE_CHOPPED
	disappear ROUTE102_FISHER2
	end
	

TrainerCamperSamuel:
	trainer CAMPER, SAMUEL, EVENT_BEAT_YOUNGSTER_SAMUEL, CamperSamuelSeenText, CamperSamuelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperSamuelAfterText
	waitbutton
	closetext
	end

TrainerYoungsterIan:
	trainer YOUNGSTER, IAN, EVENT_BEAT_YOUNGSTER_IAN, YoungsterIanSeenText, YoungsterIanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterIanAfterText
	waitbutton
	closetext
	end


Route102LassScript:
	faceplayer
	opentext
	writetext Route102LassText
	waitbutton
	closetext
	end


TrainerSchoolboyAlan:
	trainer SCHOOLBOY, ALAN, EVENT_BEAT_SCHOOLBOY_ALAN, SchoolboyAlanSeenText, SchoolboyAlanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyAlanAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicMark:
	trainer PSYCHIC_T, MARK, EVENT_BEAT_PSYCHIC_MARK, PsychicMarkSeenText, PsychicMarkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicMarkAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFledglingJohnny:
	trainer FLEDGLING, JOHNNY, EVENT_BEAT_FLEDGLING_JOHNNY, FledglingJohnnySeenText, FledglingJohnnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FledglingJohnnyAfterBattleText
	waitbutton
	closetext
	end

ArthurScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
	iftrue .AlreadyGotStone
	checkcode VAR_WEEKDAY
	ifnotequal THURSDAY, ArthurNotThursdayScript
	checkevent EVENT_MET_ARTHUR_OF_THURSDAY
	iftrue .MetArthur
	writetext MeetArthurText
	buttonsound
	setevent EVENT_MET_ARTHUR_OF_THURSDAY
.MetArthur:
	writetext ArthurGivesGiftText
	buttonsound
	verbosegiveitem HARD_STONE
	iffalse .BagFull
	setevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
	writetext ArthurGaveGiftText
	waitbutton
	closetext
	end

.AlreadyGotStone:
	writetext ArthurThursdayText
	waitbutton
.BagFull:
	closetext
	end

ArthurNotThursdayScript:
	writetext ArthurNotThursdayText
	waitbutton
	closetext
	end

Route102SilverScript:
	applymovement PLAYER, Movement_102DownOne
	playsound SFX_EXIT_BUILDING
	moveobject ROUTE102_SILVER, 6, 5
	appear ROUTE102_SILVER
	applymovement ROUTE102_SILVER, Movement_102SilverDownOne
	special FadeOutMusic
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext Route102RivalBeforeText
	waitbutton
	closetext
	checkevent EVENT_GOT_PALSSIO_FROM_ELM
	iftrue .Palssio
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .CHIKORITA
	winlosstext Route102SilverWinText, Route102SilverLossText
	loadtrainer RIVAL1, RIVAL1_2_PALSSIO
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .AfterBattle

.Palssio:
	winlosstext Route102SilverWinText, Route102SilverLossText
	loadtrainer RIVAL1, RIVAL1_2_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .AfterBattle

.CHIKORITA:
	winlosstext Route102SilverWinText, Route102SilverLossText
	loadtrainer RIVAL1, RIVAL1_2_CUBBURN
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext Route102RivalAfterText
	waitbutton
	closetext
	applymovement ROUTE102_SILVER, Route102RivalBattleExitMovement
	playsound SFX_ENTER_DOOR
	disappear ROUTE102_SILVER
	setscene SCENE_ROUTE36_NOTHING
	waitsfx
	playmapmusic
	setevent EVENT_ROUTE_102_SILVER
	end

Route102SilverTalkScript:
	end

Route102Sign:
	jumptext Route102SignText

RuinsOfAlphNorthSign:
	jumptext RuinsOfAlphNorthSignText

Route102TrainerTips1:
	jumptext Route102TrainerTips1Text

Route102TrainerTips2:
	jumptext Route102TrainerTips2Text
	
Route102GameHouse:
	jumptext Route102GameHouseText

Route102FruitTree:
	fruittree FRUITTREE_ROUTE_102

BellignanShakeMovement:
	tree_shake ; shake
	step_end

WeirdTreeMovement_Flee:
	fast_jump_step UP
	fast_jump_step UP
	step_end
	
Movement_102DownOne:
	step DOWN
	turn_head UP
	step_end
	
Movement_102SilverDownOne:
	step DOWN
	step_end

FloriaMovement1:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

FloriaMovement2:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Route102SuiMovement:
	set_sliding
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	remove_sliding
	step_end
	
Route102Greatball:
	itemball GREAT_BALL
	
Route102RivalBattleExitMovement:
	step UP
	step_end
	
GardenerWalkAway:
	step UP
	fast_jump_step LEFT
	fast_jump_step LEFT
	fast_jump_step LEFT
	step DOWN
	fast_jump_step LEFT
	step_end
	
Route102SilverWinText:
	text "Wow! Looks like"
	line "you've been"
	para "working hard to"
	line "raise your"
	cont "#MON!"
	done
	
Route102SilverLossText:
	text "My team is the"
	line "best!"
	done
	
Route102RivalBeforeText:
	text "<PLAY_G>!"

	para "I've started the"
	line "LEAGUE challenge!"
	
	para "I heard you have,"
	line "too!"
	
	para "This will be a"
	line "great way to show"
	cont "the world how my"
	cont "team is the best!"

	para "Let's battle to"
	line "see which of us"
	cont "is better!"
	done
	
Route102RivalAfterText:
	text "Whew! It was good"
	line "catching up with"
	cont "you, <PLAY_G>!"
	
	para "I'm heading back"
	line "into the city!"
	
	para "See you around!"
	done

Route102LassText:
	text "A small tree is"
	line "blocking the way"
	cont "to WESTPORT CITY."

	para "If you need to"
	line "get through, a"
	para "#MON could"
	line "probably CUT the"
	cont "tree."
	done

PsychicMarkSeenText:
	text "I'm going to read"
	line "your thoughts!"
	done

PsychicMarkBeatenText:
	text "I misread you!"
	done

PsychicMarkAfterBattleText:
	text "I'd be strong if"
	line "only I could tell"

	para "what my opponent"
	line "was thinking."
	done

SchoolboyAlanSeenText:
	text "Thanks to my stud-"
	line "ies, I'm ready for"
	cont "any #MON!"
	done

SchoolboyAlanBeatenText:
	text "Oops! Computation"
	line "error?"
	done

SchoolboyAlanAfterBattleText:
	text "Darn. I study five"
	line "hours a day too."

	para "There's more to"
	line "learning than just"
	cont "reading books."
	done

MeetArthurText:
	text "ARTHUR: Who are"
	line "you?"

	para "I'm ARTHUR of"
	line "Thursday."
	done

ArthurGivesGiftText:
	text "Here. You can have"
	line "this."
	done

ArthurGaveGiftText:
	text "ARTHUR: A #MON"
	line "that uses rock-"

	para "type moves should"
	line "hold on to that."

	para "It pumps up rock-"
	line "type attacks."
	done

ArthurThursdayText:
	text "ARTHUR: I'm ARTHUR"
	line "of Thursday. I'm"

	para "the second son out"
	line "of seven children."
	done

ArthurNotThursdayText:
	text "ARTHUR: Today's"
	line "not Thursday. How"
	cont "disappointing."
	done

Route102SignText:
	text "ROUTE 102"
	para "PAGOTA CITY -"
	line "WESTPORT CITY"
	done

RuinsOfAlphNorthSignText:
	text "RUINS OF ALPH"
	line "NORTH ENTRANCE"
	done

Route102TrainerTips1Text:
	text "TRAINER TIPS"

	para "#MON stats"
	line "vary--even within"
	cont "the same species."

	para "Their stats may be"
	line "similar at first."

	para "However, differ-"
	line "ences will become"

	para "pronounced as the"
	line "#MON grow."
	done

Route102TrainerTips2Text:
	text "TRAINER TIPS"

	para "Use DIG to return"
	line "to the entrance of"
	cont "any place."

	para "It is convenient"
	line "for exploring"

	para "caves and other"
	line "landmarks."
	done
	
Route102GameHouseText:
	text "Come and take a"
	line "break!"
	para "GAME HOUSE"
	done
	
CamperSamuelSeenText:
	text "This is where I do"
	line "my training!"
	done

CamperSamuelBeatenText:
	text "Beaten by a"
	line "passing stranger!"
	done

CamperSamuelAfterText:
	text "I'm going to train"
	line "even harder."

	para "After all, I'm"
	line "trying to become"
	cont "a GYM LEADER."
	done

YoungsterIanSeenText:
	text "I'm the best in my"
	line "class at #MON."
	para "It's honestly not"
	line "even close."
	done

YoungsterIanBeatenText:
	text "No! There are bet-"
	line "ter trainers…"
	done

YoungsterIanAfterText:
	text "I guess I gotta"
	line "try even harder."
	done
	
FledglingJohnnySeenText:
	text "Do you like bird"
	line "#MON?"
	done

FledglingJohnnyBeatenText:
	text "You're wickedly"
	line "tough!"
	done

FledglingJohnnyAfterBattleText:
	text "I'm tired of train-"
	line "ing. I need to"
	cont "take a break."
	done
	
GardenerTreeText:
	text "Bah!"
	para "This tree is"
	line "blocking the path!"
	
	para "I think I can chop"
	line "it down but it's"
	cont "gonna take some"
	cont "time…"
	done
	
GardenerTreeChoppedText:
	text "Ha!"
	para "I finally got that"
	line "tree chopped down."
	
	para "Now I can get to"
	line "WESTPORT CITY at"
	cont "last!"
	
	para "See ya kid,"
	line "and good luck!"
	done


Route102_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6,  5, ROUTE_102_WESTPORT_GATE, 4
	warp_event 16,  4, ROUTE_102_N64_HOUSE, 1

	db 1 ; coord events
	coord_event  6,  6, SCENE_ROUTE36_SILVER, Route102SilverScript

	db 4 ; bg events
	bg_event 22, 10, BGEVENT_READ, Route102TrainerTips2
	bg_event 50, 10, BGEVENT_READ, Route102Sign
	bg_event 32, 10, BGEVENT_READ, Route102TrainerTips1
	bg_event 18,  4, BGEVENT_READ, Route102GameHouse

	db 12 ; object events
	object_event  8, 9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicMark, -1
	object_event 29,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSchoolboyAlan, -1
	object_event 50,  7, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route102LassScript, -1
	object_event 39,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route102FruitTree, -1
	object_event 40,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArthurScript, EVENT_ROUTE_36_ARTHUR_OF_THURSDAY
	object_event  1,  1, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route102SilverTalkScript, EVENT_ROUTE_36_SILVER
	object_event 12, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperSamuel, -1
	object_event 20,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterIan, -1
	object_event 34,  9, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerFledglingJohnny, -1
	object_event 33,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GardenerScript, EVENT_ROUTE36_GARDENER
	object_event 33,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GardenerScript, EVENT_ROUTE36_GARDENER_CHOPPED
	object_event 33,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route102Greatball, EVENT_ROUTE_36_GREATBALL	
