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

	newgroup   
	map_const HALL_OF_FAME,                                5,  7 ;  9

	newgroup                                                     ;  2 
	map_const TRADE_CENTER,                                5,  4 ;  2
	map_const COLOSSEUM,                                   5,  4 ;  3
	map_const HIDDEN_TREE_GROTTO,                          4,  6 ;  4
	map_const HIDDEN_CAVE_GROTTO,                          4,  6 ;  5

	newgroup                                                     ;  3
	map_const GIANT_CHASM_1F,                              9, 10 ;  1
	map_const REVERSAL_MOUNTAIN_1F,                       27, 16 ;  4
	map_const REVERSAL_MOUNTAIN_B1F,                      17, 16 ;  5
	map_const STRANGE_HOUSE_1F,                           14,  7 ;  6
	map_const STRANGE_HOUSE_B1F,                          13,  6 ;  7
	map_const STRANGE_HOUSE_ROOMS,                        21, 10 ;  8
	map_const LOSTLORN_FOREST,                            20, 28 ;  9
	map_const RELIC_CASTLE_1F,                            10,  9 ; 10
	map_const RELIC_CASTLE_B1F,                            9,  9 ; 11
	map_const RELIC_CASTLE_B2F,                            9,  7 ; 12
	map_const RELIC_CASTLE_B3F,                           10,  5 ; 13
	map_const RELIC_CASTLE_B4F,                           13, 12 ; 14
	map_const NIMBASA_PARK_COASTER_ROOM,                  20, 15 ; 15
	map_const NIMBASA_PARK_RUNWAY,                         5, 13 ; 16
	map_const NIMBASA_PARK_BASEMENT,                       7,  9 ; 17
	map_const VIRBANK_COMPLEX_ELEVATOR,                    2,  2 ; 18
	map_const VIRBANK_COMPLEX_B1F,                         8,  6 ; 19
	map_const VIRBANK_COMPLEX_B2F,                        11, 11 ; 20

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
	map_const LENTIMAS_AIRPORT,                            5,  4 ;  7
	map_const LENTIMAS_LOSTLORN_GATE,                      5,  8 ;  8
	
	newgroup                                                     ;  7
	map_const ROUTE_16_LOSTLORN_GATE,                      5,  4 ;  1
	map_const ROUTE_16,                                   18, 15 ;  2
	map_const ROUTE_16_NIMBASA_GATE,                       5,  4 ;  3
	map_const NIMBASA_CITY,                               23, 18 ;  4
	map_const ROUTE_5,                                    20, 11 ;  5
	map_const ROUTE_5_NIMBASA_GATE,                        5,  4 ;  6
	map_const ROUTE_5_DRAWBRIDGE_GATE,                     5,  4 ;  7
	map_const ROUTE_5_TRUCK,                               4,  3 ;  8
	map_const NIMBASA_POKECENTER,                          5,  5 ;  9
	map_const NIMBASA_SOOTHE_BELL_HOUSE,                   4,  4 ; 10
	map_const NIMBASA_NAME_RATER,                          4,  4 ; 11
	map_const NIMBASA_BALL_MART,                           6,  4 ; 12
	map_const NIMBASA_TM_MART,                             6,  4 ; 13
	map_const NIMBASA_VITAMIN_MART,                        6,  4 ; 14
	map_const NIMBASA_SUBWAY,                             10,  9 ; 15
	map_const ROUTE_4_NIMBASA_GATE,                        5, 11 ; 16
	map_const NIMBASA_PARK_OUTSIDE,                       27, 10 ; 17
	
	newgroup                                                     ;  8
	map_const ROUTE_4,                                    24, 30 ;  1
	map_const DESERT_RESORT,                              30, 23 ;  2
	map_const ROUTE_4_DESERT_GATE,                         5,  4 ;  3
	map_const ROUTE_4_CASTELIA_GATE,                       5,  4 ;  4
	map_const ROUTE_4_HOUSE,                               4,  4 ;  5
	
	newgroup                                                     ;  9
	map_const CASTELIA_CITY_NORTH,                        18, 17 ;  1
	map_const CASTELIA_CITY_STREETS,                      28, 14 ;  2
	map_const CASTELIA_CITY_SOUTH,                        30, 14 ;  3
	map_const CASTELIA_TRADE_HOUSE_1,                      4,  4 ;  4
	map_const CASTELIA_TRADE_HOUSE_2,                      4,  4 ;  5
	map_const CASTELIA_BIKE_SHOP,                          4,  4 ;  6
	map_const CASTELIA_MASSAGE,                            4,  4 ;  7
	map_const CASTELIA_GAME_FREAK,                         4,  5 ;  8
	map_const CASTELIA_GYM,                                7, 22 ;  9
	map_const CASTELIA_POKECENTER,                         5,  5 ; 10
	map_const CASTELIA_SKYARROW_BRIDGE_GATE,               6,  9 ; 11
	map_const CASTELIA_PORT,                               5,  4 ; 12
	map_const CASTELIA_PLAZA_LOBBY,                        6,  4 ; 13
	map_const CASTELIA_PLAZA_GAME_CORNER,                  9,  6 ; 14
	map_const CASTELIA_PLAZA_PRIZE_ROOM,                   8,  3 ; 15
	map_const CASTELIA_PLAZA_RESTAURANT,                   7,  6 ; 16
	map_const CASTELIA_PLAZA_ELEVATOR,                     2,  2 ; 17
	map_const BATTLE_COMPANY_1F,                           4,  4 ; 18
	map_const BATTLE_COMPANY_2F,                           4,  4 ; 19
	map_const FERRY_LEFT,                                  9,  2 ; 20
	
	newgroup                                                     ; 10
	map_const ASPERTIA_CITY,                              14, 22 ;  1
	map_const ASPERTIA_SUBWAY,                            10,  9 ;  2
	map_const ASPERTIA_POKECENTER,                         5,  5 ;  3
	map_const ASPERTIA_BLACKBELT_HOUSE,                    4,  4 ;  4
	map_const ASPERTIA_MOVE_DELETER,                       4,  4 ;  5
	map_const ROUTE_19_ASPERTIA_GATE,                      5,  4 ;  6
	map_const ASPERTIA_MOM_HOUSE,                          7,  4 ;  7
	map_const ASPERTIA_GYM,                                5, 11 ;  8
	
	newgroup                                                     ; 11
	map_const ROUTE_19,                                   21, 13 ;  1
	map_const FLOCCESY_TOWN,                              13, 17 ;  2
	map_const FLOCCESY_POKECENTER,                         5,  5 ;  3
	map_const FLOCCESY_TRADE_HOUSE,                        4,  4 ;  4
	map_const FLOCCESY_PINK_BOW_HOUSE,                     4,  4 ;  5
	map_const ALDERS_HOUSE,                                5,  5 ;  6
	map_const ROUTE_20,                                   23, 18 ;  7
	map_const FLOCCESY_RANCH,                             16, 11 ;  8
	map_const FLOCCESY_RANCH_HOUSE,                        4,  4 ;  9
	map_const FLOCCESY_RANCH_BARN,                         4,  4 ; 10
	
	newgroup                                                     ; 12
	map_const VIRBANK_CITY,                               24, 16 ;  1
	map_const ROUTE_20_VIRBANK_GATE,                       5,  4 ;  2
	map_const VIRBANK_POKECENTER,                          5,  5 ;  3
	map_const VIRBANK_POISON_BARB_HOUSE,                   4,  4 ;  4
	map_const VIRBANK_MUSCLE_BAND_HOUSE,                   4,  4 ;  5
	map_const VIRBANK_GAME_CORNER,                        10,  7 ;  6
	map_const VIRBANK_PORT,                                5,  4 ;  7
	map_const VIRBANK_GYM,                                 7, 17 ;  8
	map_const VIRBANK_COMPLEX_OUTSIDE,                    13, 27 ;  9
	map_const FERRY_RIGHT,                                 9,  2 ; 10
	
DEF NUM_MAP_GROUPS EQU const_value ; 37
