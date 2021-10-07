	const_def 2 ; object constants
	const ICEPATHB2FBLACKTHORNSIDE_POKE_BALL
	const ICEPATHB2FBLACKTHORNSIDE_EN

MagmaShaft1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MagmaShaft1FTMRest:
	itemball TM_REST

MagmaShaft1FHiddenIceHeal:
	hiddenitem ICE_HEAL, EVENT_ICE_PATH_B2F_BLACKTHORN_SIDE_HIDDEN_ICE_HEAL
	

EnEvent:
	faceplayer
	opentext
	writetext EnText
	cry EN
	pause 15
	closetext
	setevent EVENT_RIVAL_AZALEA_TOWN
	writecode VAR_BATTLETYPE, BATTLETYPE_ROAMING
	loadwildmon EN, 40
	startbattle
	disappear ICEPATHB2FBLACKTHORNSIDE_EN
	reloadmapafterbattle
	end
	
EnText:
	text "Groroa!"
	done

MagmaShaft1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  1, 17, SUNPOINT_CITY, 1
	warp_event  3,  5, MAGMA_SHAFT_B1F, 1
	warp_event 16, 17, MAGMA_SHAFT_B2F, 8
	warp_event 17, 17, MAGMA_SHAFT_B2F, 8

	db 0 ; coord events

	db 1 ; bg events
	bg_event  5, 12, BGEVENT_ITEM, MagmaShaft1FHiddenIceHeal

	db 2 ; object events
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MagmaShaft1FTMRest, EVENT_ICE_PATH_B2F_BLACKTHORN_SIDE_TM_REST
	object_event 16,  2, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EnEvent, EVENT_RIVAL_AZALEA_TOWN
