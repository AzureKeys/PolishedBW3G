MACRO newgroup
	DEF const_value += 1
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH  EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def
	
	newgroup                                                     ;  9
	map_const BATTLE_TOWER_1F,                            11,  8 ;  1
	map_const BATTLE_TOWER_2F,                            11,  5 ;  2
	map_const BATTLE_TOWER_BATTLE_ROOM,                    4,  4 ;  3
	map_const BATTLE_TOWER_ELEVATOR,                       2,  2 ;  4
	map_const BATTLE_TOWER_HALLWAY,                       11,  2 ;  5
	map_const BATTLE_TOWER_OUTSIDE,                       10, 13 ;  7

	newgroup                                                     ; 16
	map_const WILLS_ROOM,                                  5,  9 ;  4
	map_const KOGAS_ROOM,                                  5,  9 ;  5
	map_const BRUNOS_ROOM,                                 5,  9 ;  6
	map_const KARENS_ROOM,                                 5,  9 ;  7
	map_const LANCES_ROOM,                                 7, 12 ;  8
	map_const HALL_OF_FAME,                                5,  7 ;  9

	newgroup                                                     ; 20
	map_const POKECENTER_2F,                               8,  4 ;  1
	map_const TRADE_CENTER,                                5,  4 ;  2
	map_const COLOSSEUM,                                   5,  4 ;  3
	map_const HIDDEN_TREE_GROTTO,                          5,  9 ;  4
	map_const HIDDEN_CAVE_GROTTO,                         20, 45 ;  5

	newgroup                                                     ; 24
	map_const NEW_BARK_TOWN,                              10,  9 ;  4
	map_const PLAYERS_HOUSE_1F,                            6,  4 ;  6
	map_const PLAYERS_HOUSE_2F,                            4,  3 ;  7

DEF NUM_MAP_GROUPS EQU const_value ; 37
