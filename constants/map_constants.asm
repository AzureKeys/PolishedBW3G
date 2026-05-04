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

	newgroup                                                     ;  2 
	map_const TRADE_CENTER,                                5,  4 ;  2
	map_const COLOSSEUM,                                   5,  4 ;  3
	map_const HIDDEN_TREE_GROTTO,                          4,  6 ;  4
	map_const HIDDEN_CAVE_GROTTO,                          4,  6 ;  5

	newgroup                                                     ;  3
	map_const GIANT_CHASM_1F,                              9, 10 ;  1
	map_const GIANT_CHASM_B1F,                            23, 20 ;  2
	map_const GIANT_CHASM_ROOMS,                           8, 13 ;  3
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
	map_const PINWHEEL_FOREST,                            23, 21 ; 21
	map_const WELLSPRING_CAVE_1F,                         16, 12 ; 22
	map_const WELLSPRING_CAVE_B1F,                        13, 25 ; 23
	map_const DREAMYARD,                                  20, 19 ; 24
	map_const DREAMYARD_B1F,                              12, 12 ; 25
	map_const P2_LAB_ENTRANCE,                             5,  5 ; 26
	map_const P2_LAB,                                     14, 21 ; 27
	map_const CASTELIA_SEWERS,                            26, 21 ; 28
	map_const CASTELIA_SEWERS_ROOMS,                      15,  9 ; 29
	map_const RELIC_PASSAGE_FRONT,                        24, 13 ; 30
	map_const RELIC_PASSAGE_BACK,                         15, 16 ; 31
	map_const MISTRALTON_CAVE_1F,                         13, 11 ; 32
	map_const MISTRALTON_CAVE_2F,                         13, 13 ; 33
	map_const MISTRALTON_CAVE_3F,                         14, 13 ; 34
	map_const CHARGESTONE_CAVE_1F,                        23, 18 ; 35
	map_const CHARGESTONE_CAVE_B1F,                       16, 21 ; 36
	map_const CHARGESTONE_CAVE_B2F,                       12, 15 ; 37
	map_const CELESTIAL_TOWER_1F,                          5,  6 ; 38
	map_const CELESTIAL_TOWER,                             5, 22 ; 39
	map_const CELESTIAL_TOWER_ROOF,                        9,  8 ; 40
	map_const SEASIDE_CAVE_1F,                            11, 18 ; 41
	map_const SEASIDE_CAVE_B1F,                           12, 14 ; 42
	map_const SEASIDE_CAVE_B2F,                           14, 12 ; 43
	map_const SEASIDE_CAVE_CHAMBER,                        6,  8 ; 44
	map_const DRAGONSPIRAL_TOWER_OUTSIDE,                  7, 12 ; 45
	map_const DRAGONSPIRAL_TOWER_1F,                       5,  9 ; 46
	map_const DRAGONSPIRAL_TOWER_2F,                       8, 11 ; 47
	map_const DRAGONSPIRAL_TOWER_3F,                      10,  8 ; 48
	map_const DRAGONSPIRAL_TOWER_4F,                       9,  9 ; 49
	map_const DRAGONSPIRAL_TOWER_5F,                       9, 10 ; 50
	map_const DRAGONSPIRAL_TOWER_6F,                       8, 10 ; 51
	map_const DRAGONSPIRAL_TOWER_ROOF,                     9,  9 ; 52
	map_const VICTORY_ROAD_CAVE_1F,                       20, 19 ; 53
	map_const VICTORY_ROAD_CAVE_2F,                       23, 26 ; 54
	map_const VICTORY_ROAD_CAVE_3F,                       11, 16 ; 55
	map_const VICTORY_ROAD_OUTDOOR_1F,                    32, 13 ; 56
	map_const VICTORY_ROAD_OUTDOOR_2F,                    20, 21 ; 57
	map_const VICTORY_ROAD_GROVE,                          9, 13 ; 58
	map_const VICTORY_ROAD_CASTLE,                        12, 10 ; 59
	map_const NS_ROOM,                                     5,  5 ; 60

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
	map_const ROUTE_21,                                   11, 29 ; 10

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
	map_const SKYARROW_BRIDGE,                            26,  5 ; 20
	map_const PINWHEEL_SKYARROW_BRIDGE_GATE,               5,  9 ; 21
	map_const FERRY_LEFT,                                  9,  2 ; 22
	
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
	map_const FLOCCESY_FAIRY_FEATHER_HOUSE,                4,  4 ;  5
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
	
	newgroup                                                     ; 13
	map_const NACRENE_OUTSKIRT,                           10, 26 ;  1
	map_const NACRENE_OUTSKIRT_CONNECTION_DUMMY,           4, 24 ;  2
	map_const NACRENE_OUTSKIRT_EAST,                      15, 12 ;  3
	map_const NACRENE_CITY,                               18, 11 ;  4
	map_const NACRENE_POKECENTER,                          5,  5 ;  5
	map_const NACRENE_CHARCOAL_HOUSE,                      4,  4 ;  6
	map_const NACRENE_WISE_GLASSES_HOUSE,                  4,  4 ;  7
	map_const NACRENE_CAFE,                                4,  4 ;  8
	map_const NACRENE_MUSEUM,                              5,  6 ;  9
	map_const ROUTE_3_NACRENE_GATE,                        5,  4 ; 10
	
	newgroup                                                     ; 14
	map_const ROUTE_3,                                    22, 20 ;  1
	map_const ROUTE_3_DAY_CARE,                            4,  4 ;  2
	map_const STRIATON_CITY,                              24, 16 ;  3
	map_const STRIATON_POKECENTER,                         5,  5 ;  4
	map_const STRIATON_TRADE_HOUSE,                        4,  4 ;  5
	map_const STRIATON_LAB,                                4,  4 ;  6
	map_const STRIATON_GYM,                                7,  9 ;  7
	map_const ROUTE_2,                                    23, 20 ;  8
	map_const ROUTE_2_ACCUMULA_GATE,                       5,  4 ;  9
	
	newgroup                                                     ; 15
	map_const ACCUMULA_TOWN,                              15, 12 ;  1
	map_const ACCUMULA_POKECENTER,                         5,  5 ;  2
	map_const ACCUMULA_STONES_HOUSE,                       4,  4 ;  3
	map_const ACCUMULA_TRADE_HOUSE,                        4,  4 ;  4
	map_const ACCUMULA_BALL_MANIAC_HOUSE,                  4,  4 ;  5
	map_const ROUTE_1,                                    19, 22 ;  6
	map_const NUVEMA_TOWN,                                13, 12 ;  7
	map_const NUVEMA_LAB,                                  7,  6 ;  8
	map_const NUVEMA_MOM_HOUSE,                            5, 10 ;  9
	
	newgroup                                                     ; 16
	map_const ROUTE_17,                                   23, 19 ;  1
	map_const ROUTE_18,                                   24, 19 ;  2
	map_const ROUTE_1_ROUTE_17_GATE,                       5,  4 ;  3
	map_const ROUTE_18_HOUSE,                              4,  4 ;  4
	
	newgroup                                                     ; 17
	map_const PWT_OUTSIDE,                                19, 15 ;  1
	map_const PWT_INSIDE,                                  8,  9 ;  2
	map_const PWT_HALLWAY,                                10,  3 ;  3
	map_const PWT_QUALIFIER_ROOM,                          8,  6 ;  4
	map_const PWT_BACK_ROOM,                               4,  6 ;  5
	map_const PWT_BATTLE_ROOM,                             8,  6 ;  6
	
	newgroup                                                     ; 18
	map_const DRIFTVEIL_CITY,                             26, 20 ;  1
	map_const PWT_DRIFTVEIL_GATE,                          5,  4 ;  2
	map_const DRIFTVEIL_DRAWBRIDGE_GATE,                   5,  4 ;  3
	map_const DRIFTVEIL_POKECENTER,                        5,  5 ;  4
	map_const DRIFTVEIL_EVERSTONE_HOUSE,                   4,  4 ;  5
	map_const DRIFTVEIL_FOSSIL_HOUSE,                      4,  4 ;  6
	map_const DRIFTVEIL_TRADE_HOUSE,                       4,  4 ;  7
	map_const DRIFTVEIL_DRAWBRIDGE,                       21,  8 ;  8
	map_const DRIFTVEIL_SHELTER,                           5,  6 ;  9
	map_const DRIFTVEIL_STONE_EMPORIUM,                    5,  6 ; 10
	map_const ROUTE_6,                                    26, 25 ; 11
	map_const ROUTE_6_LAB,                                 4,  4 ; 12
	map_const ROUTE_6_HOUSE,                               4,  4 ; 13
	
	newgroup                                                     ; 19
	map_const MISTRALTON_CITY,                            20, 16 ;  1
	map_const MISTRALTON_POKECENTER,                       5,  5 ;  2
	map_const MISTRALTON_SHARP_BEAK_HOUSE,                 4,  4 ;  3
	map_const MISTRALTON_MOVE_REMINDER,                    4,  4 ;  4
	map_const MISTRALTON_AIRPORT,                          7,  6 ;  5
	map_const PLANE_LEFT,                                 13,  5 ;  6
	map_const PLANE_RIGHT,                                13,  5 ;  7
	map_const MISTRALTON_GYM_1F,                           7, 10 ;  8
	map_const MISTRALTON_GYM_2F,                           9,  9 ;  9
	map_const ROUTE_7_SOUTH,                              12, 27 ; 10
	map_const ROUTE_7_MIDDLE,                              5,  7 ; 11
	map_const ROUTE_7_NORTH,                              11, 24 ; 12
	map_const ROUTE_7_RAZOR_CLAW_HOUSE,                    4,  4 ; 13
	map_const ROUTE_7_TRADE_HOUSE,                         4,  4 ; 14
	
	newgroup                                                     ; 20
	map_const VILLAGE_BRIDGE,                             34, 19 ;  1
	map_const ROUTE_11,                                   22, 12 ;  2
	map_const ROUTE_11_VILLAGE_BRIDGE_GATE,                5,  4 ;  3
	map_const ROUTE_11_OPELUCID_GATE,                      5,  4 ;  4
	map_const ROUTE_11_TRUCK,                              4,  3 ;  5
	map_const OPELUCID_CITY,                              28, 17 ;  6
	map_const OPELUCID_POKECENTER,                         5,  5 ;  7
	map_const OPELUCID_SUPER_ROD_HOUSE,                    4,  4 ;  8
	map_const OPELUCID_BLACKBELT_HOUSE,                    4,  4 ;  9
	map_const OPELUCID_CURIOSITY_SHOP,                     4,  4 ; 10
	map_const ROUTE_9_OPELUCID_GATE,                       5,  4 ; 11
	map_const DRAYDENS_HOUSE_1F,                           5,  5 ; 12
	map_const DRAYDENS_HOUSE_2F,                           4,  4 ; 13
	map_const OPELUCID_GYM,                               14, 16 ; 14
	map_const OPELUCID_BATTLE_HOUSE,                       5,  4 ; 15
	map_const ROUTE_9,                                    22, 11 ; 16
	map_const SHOPPING_MALL_NINE,                          9, 14 ; 17
	map_const MEMBERS_ROOM,                                7,  4 ; 18
	
	newgroup                                                     ; 21
	map_const TUBELINE_BRIDGE,                             9,  7 ;  1
	map_const ROUTE_8,                                    24, 11 ;  2
	map_const MOOR_OF_ICIRRUS,                            24, 20 ;  3
	map_const ICIRRUS_CITY_SOUTH_CONNECTION_DUMMY,        26,  3 ;  4
	map_const ICIRRUS_CITY_SOUTH,                         24, 13 ;  5
	map_const ICIRRUS_CITY_NORTH,                         13, 13 ;  6
	map_const ICIRRUS_POKECENTER,                          5,  5 ;  7
	map_const ICIRRUS_ROCKET_HOUSE,                        4,  4 ;  8
	map_const ICIRRUS_BOUTIQUE,                            6,  4 ;  9
	map_const ICIRRUS_FAN_CLUB,                            5,  6 ; 10
	map_const ICIRRUS_CAVE,                               16, 19 ; 11
	
	newgroup                                                       ; 22
	map_const ROUTE_23_EAST,                                17, 26 ;  1
	map_const ROUTE_23_WEST,                                33, 12 ;  2
	map_const ROUTE_23_GATE,                                 5,  4 ;  3
	map_const ROUTE_23_HOUSE,                                4,  4 ;  4
	map_const VICTORY_ROAD_ENTRANCE_SOUTH_EAST,             14,  8 ;  5
	map_const VICTORY_ROAD_ENTRANCE_SOUTH_WEST,             14,  8 ;  6
	map_const VICTORY_ROAD_ENTRANCE_NORTH_CONNECTION_DUMMY, 28,  3 ;  7
	map_const VICTORY_ROAD_ENTRANCE_NORTH,                  26, 12 ;  8
	map_const VICTORY_ROAD_POKECENTER,                       5,  5 ;  9
	map_const PKMN_LEAGUE_ENTRANCE,                         15, 12 ; 10
	map_const PKMN_LEAGUE_POKECENTER,                        5,  5 ; 11
	map_const PKMN_LEAGUE_MAIN,                             14, 12 ; 12
	map_const MARSHALS_ROOM,                                 8,  7 ; 13
	map_const GRIMSLEYS_ROOM,                                8,  7 ; 14
	map_const ELESAS_ROOM,                                   8,  7 ; 15
	map_const COLRESSS_ROOM,                                 8,  7 ; 16
	map_const CHAMPIONS_ROOM_ENTRANCE,                       9, 11 ; 17
	map_const CHAMPIONS_ROOM,                                8, 10 ; 18
	map_const HALL_OF_FAME,                                  5,  7 ; 19
	map_const POST_CREDITS_DUMMY,                            1,  1 ; 20
	
DEF NUM_MAP_GROUPS EQU const_value ; 37
