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

	newgroup                                                     ;  2
	map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE,          4,  4 ;  1
	map_const MAHOGANY_GYM,                                5,  9 ;  2
	map_const MAHOGANY_POKECENTER_1F,                      6,  4 ;  3
	map_const ROUTE_42_ECRUTEAK_GATE,                      5,  4 ;  4
	map_const ROUTE_42,                                   30,  9 ;  5
	map_const ROUTE_44,                                   30,  9 ;  6
	map_const MAHOGANY_TOWN,                              10,  9 ;  7
	map_const LAKE_OF_RAGE_HIDDEN_POWER_HOUSE,             4,  4 ;  8
	map_const LAKE_OF_RAGE_MAGIKARP_HOUSE,                 4,  4 ;  9
	map_const ROUTE_43_MAHOGANY_GATE,                      5,  4 ; 10
	map_const ROUTE_43_GATE,                               5,  4 ; 11
	map_const ROUTE_43,                                   10, 27 ; 12
	map_const LAKE_OF_RAGE,                               20, 18 ; 13

	newgroup                                                     ;  4
	map_const ECRUTEAK_HOUSE,                             10,  9 ;  1
	map_const WISE_TRIOS_ROOM,                             4,  4 ;  2
	map_const ECRUTEAK_POKECENTER_1F,                      6,  4 ;  3
	map_const ECRUTEAK_LUGIA_SPEECH_HOUSE,                 4,  4 ;  4
	map_const DANCE_THEATRE,                               6,  7 ;  5
	map_const ECRUTEAK_MART,                               6,  4 ;  6
	map_const ECRUTEAK_GYM,                                5,  9 ;  7
	map_const ECRUTEAK_ITEMFINDER_HOUSE,                   4,  4 ;  8
	map_const ECRUTEAK_CITY,                              20, 18 ;  9
	map_const ROUTE_35,                                   12, 18 ; 10
	map_const ROUTE_36,                                   32,  9 ; 11
	map_const ROUTE_36_RUINS_OF_ALPH_GATE,                 5,  4 ; 12
	map_const ROUTE_36_VIOLET_GATE,                        5,  4 ; 13
	map_const ROUTE_37,                                   10, 10 ; 14
	map_const VALERIES_HOUSE,                              4,  4 ; 15
	map_const ECRUTEAK_CHERISH_BALL_HOUSE,                 4,  4 ; 16
	map_const ECRUTEAK_DESTINY_KNOT_HOUSE,                 4,  4 ; 17

	newgroup                                                     ;  9
	map_const BATTLE_TOWER_1F,                            11,  8 ;  1
	map_const BATTLE_TOWER_2F,                            11,  5 ;  2
	map_const BATTLE_TOWER_BATTLE_ROOM,                    4,  4 ;  3
	map_const BATTLE_TOWER_ELEVATOR,                       2,  2 ;  4
	map_const BATTLE_TOWER_HALLWAY,                       11,  2 ;  5
	map_const BATTLE_TOWER_OUTSIDE,                       10, 13 ;  7

	newgroup                                                     ; 16
	map_const ROUTE_23,                                   12, 70 ;  1
	map_const INDIGO_PLATEAU,                             12, 13 ;  2
	map_const INDIGO_PLATEAU_POKECENTER_1F,                8,  7 ;  3
	map_const WILLS_ROOM,                                  5,  9 ;  4
	map_const KOGAS_ROOM,                                  5,  9 ;  5
	map_const BRUNOS_ROOM,                                 5,  9 ;  6
	map_const KARENS_ROOM,                                 5,  9 ;  7
	map_const LANCES_ROOM,                                 7, 12 ;  8
	map_const HALL_OF_FAME,                                5,  7 ;  9
	map_const BELLCHIME_TRAIL,                            12,  7 ; 10

	newgroup                                                     ; 20
	map_const POKECENTER_2F,                               8,  4 ;  1
	map_const TRADE_CENTER,                                5,  4 ;  2
	map_const COLOSSEUM,                                   5,  4 ;  3
	map_const HIDDEN_TREE_GROTTO,                          5,  9 ;  4
	map_const HIDDEN_CAVE_GROTTO,                         20, 45 ;  5

	newgroup                                                     ; 24
	map_const NEW_BARK_TOWN,                              10,  9 ;  4
	map_const ELMS_LAB,                                    5,  6 ;  5
	map_const PLAYERS_HOUSE_1F,                            6,  4 ;  6
	map_const PLAYERS_HOUSE_2F,                            4,  3 ;  7
	map_const PLAYERS_NEIGHBORS_HOUSE,                     4,  4 ;  8
	map_const LYRAS_HOUSE_1F,                              6,  4 ;  9
	map_const LYRAS_HOUSE_2F,                              4,  3 ; 10
	map_const ELMS_HOUSE,                                  4,  4 ; 11

DEF NUM_MAP_GROUPS EQU const_value ; 37
