; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to map groups
	dw AlloyGroupSprites
	dw SanskritGroupSprites
	dw DungeonsGroupSprites
	dw TeknosGroupSprites
	dw BlueForestGroupSprites
	dw FrostpointGroupSprites
	dw NagoGroupSprites
	dw BirdonGroupSprites
	dw PagotaGroupSprites
	dw WestportGroupSprites
	dw AmamiGroupSprites
	dw KobanGroupSprites
	dw YoronGroupSprites
	dw FastShipGroupSprites
	dw LeagueGroupSprites
	dw StandGroupSprites
	dw CableClubGroupSprites
	dw KantoGroupSprites
	dw SunpointGroupSprites
	dw SilentGroupSprites
	dw RyukyuGroupSprites
	dw CrownGroupSprites


KobanGroupSprites:
	db SPRITE_GRANNY
	db SPRITE_GRAMPS
	db SPRITE_TWIN
	db SPRITE_FISHER
	db SPRITE_CLAIR
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_F
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SWIMMER_GUY
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

YoronGroupSprites:
	db SPRITE_FISHER
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SWIMMER_GUY
	db SPRITE_SUPER_NERD
	db SPRITE_TEACHER
	db SPRITE_LASS
	db SPRITE_ROCKER
	db SPRITE_JYNX
	db SPRITE_MONSTER
	; 8 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

FrostpointGroupSprites:
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SWIMMER_GUY
	db SPRITE_YOUNGSTER
	db SPRITE_TWIN
	db SPRITE_GRAMPS
	db SPRITE_TEACHER
	db SPRITE_COOLTRAINER_F
	db SPRITE_ROCKER
	; 7 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

NagoGroupSprites:
	db SPRITE_MOLTRES
	db SPRITE_SWIMMER_GUY
	db SPRITE_SWIMMER_GIRL
	db SPRITE_TEACHER
	db SPRITE_FISHING_GURU
	db SPRITE_LASS
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_SUPER_NERD
	; 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_SLOWPOKE
	db 0 ; end

RyukyuGroupSprites:
	db SPRITE_POKEFAN_M
	db SPRITE_TEACHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_LASS
	db SPRITE_BUG_CATCHER
	db SPRITE_TWIN
	db SPRITE_SWIMMER_GUY
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SUPER_NERD
	; 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_SLOWPOKE
	db 0 ; end

KantoGroupSprites:
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_M
	db SPRITE_FISHER
	db SPRITE_TEACHER
	db SPRITE_SUPER_NERD
	db SPRITE_FAIRY
	db SPRITE_BIKER
	; 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_ROCK
	db 0 ; end

AmamiGroupSprites:
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_BUG_CATCHER
	db SPRITE_LASS
	db SPRITE_GRAMPS
	db SPRITE_BUENA
	db SPRITE_SAILOR
	; 7 of max 9 walking sprites
	db SPRITE_BIG_SNORLAX
	db SPRITE_MACHOP
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

StandGroupSprites:
	db SPRITE_TEACHER
	db SPRITE_ROCKER
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_POKEFAN_M
	db SPRITE_SURGE
	db SPRITE_MONSTER
	db SPRITE_FAIRY
	db SPRITE_CHUCK
	; 9 of max 9 wallking sprites
	db SPRITE_ROCKET
	db SPRITE_POKEFAN_F
	db SPRITE_TWIN
	db SPRITE_BIRD
	db SPRITE_OFFICER
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ;end

LeagueGroupSprites:
	db SPRITE_POKEFAN_M
	db SPRITE_LASS
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_FISHER
	db SPRITE_TEACHER
	db SPRITE_SUPER_NERD
	db SPRITE_BIKER
	; 8 of max 9 walking sprites
	db SPRITE_MACHOP
	db SPRITE_POKE_BALL
	db SPRITE_BOULDER
	db 0 ; end

SilentGroupSprites:
	db SPRITE_SILVER
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_BLUE
	db SPRITE_BUG_CATCHER
	db SPRITE_POKEFAN_F
	; max 9 of 9 walking sprites
	db SPRITE_COOLTRAINER_F
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ;end

CrownGroupSprites:; actually do whatever now
	db SPRITE_POKEFAN_M
	db SPRITE_LASS
	db SPRITE_COOLTRAINER_M
	db SPRITE_ROCKER
	db SPRITE_JANINE
	; 5 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ;end

PagotaGroupSprites:
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_SILVER
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_COOLTRAINER_M
	db SPRITE_BUG_CATCHER
	db SPRITE_SUPER_NERD
	db SPRITE_TWIN
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ;end

TeknosGroupSprites:
	db SPRITE_SAILOR
	db SPRITE_TWIN
	db SPRITE_LASS
	db SPRITE_GRAMPS
	db SPRITE_ROCKET
	db SPRITE_COOLTRAINER_M
	db SPRITE_BUG_CATCHER
	db SPRITE_YOUNGSTER
	db SPRITE_FISHER
	; 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_POKEFAN_M
	db SPRITE_FRUIT_TREE
	db SPRITE_SUPER_NERD
	db 0 ;end

BirdonGroupSprites:
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_OFFICER
	db SPRITE_POKEFAN_M
	db SPRITE_BUG_CATCHER
	db SPRITE_TEACHER
	db SPRITE_SUPER_NERD
	db SPRITE_LASS
	db SPRITE_FISHER
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_SLOWPOKE
	db 0 ;end

WestportGroupSprites:
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_FAIRY
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKER
	db SPRITE_COOLTRAINER_F
	db SPRITE_ROCKET
	db SPRITE_LASS
	db SPRITE_SILVER
	; 9 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ;end

SunpointGroupSprites:
	db SPRITE_TWIN
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_COOLTRAINER_M
	db SPRITE_FISHING_GURU
	db SPRITE_SAILOR
	db SPRITE_POKEFAN_F
	db SPRITE_ROCKER
	db SPRITE_ROCKET
	; 9 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_ROCK
	db SPRITE_POKE_BALL
	db 0 ; end

AlloyGroupSprites:
	db SPRITE_SILVER
	db SPRITE_BUENA
	db SPRITE_LASS
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_SAILOR
	db SPRITE_JANINE
	db SPRITE_POKEFAN_M
	db SPRITE_FISHER
	; 9 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_DAY_CARE_MON_1
	db SPRITE_DAY_CARE_MON_2
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_F
	db 0 ; end

SanskritGroupSprites:
	db SPRITE_SCIENTIST
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	db SPRITE_SWIMMER_GUY
	db SPRITE_SWIMMER_GIRL
	; max 9 of 9 walking sprites
	db SPRITE_GENTLEMAN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_MONSTER
	db SPRITE_SWIMMER_GUY
	db SPRITE_YOUNGSTER
	db SPRITE_BUG_CATCHER
	db 0 ;end

BlueForestGroupSprites:
	db SPRITE_TWIN
	db SPRITE_YOUNGSTER
	db SPRITE_TEACHER
	db SPRITE_SWIMMER_GUY
	db SPRITE_POKEFAN_M
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_GRAMPS
	db SPRITE_BLACK_BELT
	; 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_OFFICER
	db SPRITE_FISHER
	db 0 ;end

DungeonsGroupSprites:
	db SPRITE_LASS
	db SPRITE_POKEFAN_F
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKER
	db SPRITE_FISHER
	db SPRITE_SCIENTIST
	; 8 of max 9 walking sprites
	db SPRITE_BOULDER
	db SPRITE_GAMEBOY_KID
	db SPRITE_GROWLITHE
	db SPRITE_POKE_BALL
	db 0 ; end

FastShipGroupSprites:
	db SPRITE_SAILOR
	db SPRITE_FISHING_GURU
	db SPRITE_GENTLEMAN
	db SPRITE_SUPER_NERD
	db SPRITE_TEACHER
	db SPRITE_COOLTRAINER_F
	db SPRITE_YOUNGSTER
	db SPRITE_FAIRY
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_ROCK
	db SPRITE_HO_OH
	db 0 ; end

CableClubGroupSprites:
	; no outdoor maps
	db 0 ; end
