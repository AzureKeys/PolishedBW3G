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

	newgroup                                                     ;  1
	map_const BATTLE_TOWER_1F,                            11,  8 ;  1
	map_const BATTLE_TOWER_2F,                            11,  5 ;  2
	map_const BATTLE_TOWER_BATTLE_ROOM,                    4,  4 ;  3
	map_const BATTLE_TOWER_ELEVATOR,                       2,  2 ;  4
	map_const BATTLE_TOWER_HALLWAY,                       11,  2 ;  5
	map_const BATTLE_TOWER_OUTSIDE,                       10, 13 ;  6

	newgroup                                                     ; 16
	map_const HALL_OF_FAME,                                5,  7 ;  9

	newgroup                                                     ;  2
	map_const POKECENTER_2F,                               8,  4 ;  1
	map_const TRADE_CENTER,                                5,  4 ;  2
	map_const COLOSSEUM,                                   5,  4 ;  3
	map_const HIDDEN_TREE_GROTTO,                          5,  9 ;  4
	map_const HIDDEN_CAVE_GROTTO,                         20, 45 ;  5

	newgroup                                                     ;  3
	map_const GIANT_CHASM_1F,                              9, 10 ;  1
	map_const REVERSAL_MOUNTAIN_1F,                       27, 16 ;  4
	map_const REVERSAL_MOUNTAIN_B1F,                      17, 16 ;  5
	map_const STRANGE_HOUSE_1F,                           14,  7 ;  6
	map_const STRANGE_HOUSE_B1F,                          13,  6 ;  7
	map_const STRANGE_HOUSE_ROOMS,                        21, 10 ;  8

	newgroup                                                     ;  4
	map_const PLAYERS_HOUSE_1F,                            5,  4 ;  1
	map_const PLAYERS_HOUSE_2F,                            4,  3 ;  2
	map_const HUMILAU_CITY,                               15, 19 ;  3
	map_const HUMILAU_POKECENTER,                          5,  5 ;  4
	map_const MARLONS_HOUSE,                               5,  4 ;  5
	map_const MOMS_PARTNERS_HOUSE,                         4,  4 ;  6
	map_const HUMILAU_TRADE_HOUSE,                         4,  4 ;  7
	map_const HUMILAU_GYM,                                 5, 12 ;  8
	map_const ROUTE_22,                                   19, 10 ;  9

	newgroup                                                     ;  5
	map_const ROUTE_13,                                   18, 27 ;  1
	map_const LACUNOSA_TOWN,                              10, 11 ;  2
	map_const LACUNOSA_POKECENTER,                         5,  5 ;  3
	map_const LACUNOSA_SPEECH_HOUSE,                       4,  4 ;  4
	map_const LACUNOSA_BERRY_HOUSE,                        4,  4 ;  5
	map_const ROUTE_12,                                   14, 10 ;  6
	map_const ROUTE_12_VILLAGE_BRIDGE_GATE,                5,  4 ;  7
	
	newgroup                                                     ;  6
	map_const UNDELLA_TOWN,                               22, 14 ;  1
	map_const ROUTE_13_UNDELLA_TOWN_GATE,                  5,  4 ;  2
	map_const UNDELLA_POKECENTER,                          5,  5 ;  3
	map_const UNDELLA_FISHING_GURU_HOUSE,                  4,  4 ;  4
	map_const CAITLINS_HOUSE,                              5,  8 ;  5
	map_const MARINE_TUBE_ENTRANCE,                       13,  5 ;  6
	map_const MARINE_TUBE,                                 5, 15 ;  7
	map_const ROUTE_14,                                   21, 15 ;  8
	
	newgroup                                                     ;  6
	map_const LENTIMAS_OUTSKIRT,                          20, 12 ;  1
	map_const LENTIMAS_TOWN,                              16, 14 ;  2
	map_const LENTIMAS_POKECENTER,                         5,  5 ;  3
	map_const LENTIMAS_COIN_HOUSE,                         4,  4 ;  4
	map_const LENTIMAS_SPELL_TAG_HOUSE,                    4,  4 ;  5
	map_const LENTIMAS_GYM,                                8, 10 ;  6

DEF NUM_MAP_GROUPS EQU const_value ; 37
