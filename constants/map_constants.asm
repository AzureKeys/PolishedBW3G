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

	newgroup                                                     ;  3
	map_const SPROUT_TOWER_1F,                             8,  8 ;  1
	map_const SPROUT_TOWER_2F,                             8,  8 ;  2
	map_const SPROUT_TOWER_3F,                             8,  8 ;  3
	map_const TIN_TOWER_1F,                                8,  8 ;  4
	map_const TIN_TOWER_2F,                                8,  8 ;  5
	map_const TIN_TOWER_3F,                                8,  8 ;  6
	map_const TIN_TOWER_4F,                                8,  8 ;  7
	map_const TIN_TOWER_5F,                                8,  8 ;  8
	map_const TIN_TOWER_6F,                                8,  8 ;  9
	map_const TIN_TOWER_7F,                                8,  8 ; 10
	map_const TIN_TOWER_8F,                                8,  8 ; 11
	map_const TIN_TOWER_9F,                                8,  8 ; 12
	map_const TIN_TOWER_10F,                               8,  8 ; 13
	map_const BURNED_TOWER_1F,                             8,  8 ; 14
	map_const BURNED_TOWER_B1F,                           10,  9 ; 15
	map_const NATIONAL_PARK,                              21, 27 ; 16
	map_const NATIONAL_PARK_BUG_CONTEST,                  21, 27 ; 17
	map_const ROUTE_35_NATIONAL_PARK_GATE,                10,  4 ; 18
	map_const ROUTE_36_NATIONAL_PARK_GATE,                 5,  4 ; 19
	map_const RADIO_TOWER_1F,                              9,  4 ; 20
	map_const RADIO_TOWER_2F,                              9,  4 ; 21
	map_const RADIO_TOWER_3F,                              9,  4 ; 22
	map_const RADIO_TOWER_4F,                              9,  4 ; 23
	map_const RADIO_TOWER_5F,                              9,  4 ; 24
	map_const UNION_CAVE_1F,                              10, 24 ; 25
	map_const UNION_CAVE_B1F_NORTH,                       10, 13 ; 26
	map_const UNION_CAVE_B1F_SOUTH,                       10, 18 ; 27
	map_const UNION_CAVE_B2F,                             10, 18 ; 28
	map_const SLOWPOKE_WELL_ENTRANCE,                      8,  9 ; 29
	map_const SLOWPOKE_WELL_B1F,                          10,  9 ; 30
	map_const SLOWPOKE_WELL_B2F,                          10,  9 ; 31
	map_const OLIVINE_LIGHTHOUSE_1F,                      10,  9 ; 32
	map_const OLIVINE_LIGHTHOUSE_2F,                      10,  9 ; 33
	map_const OLIVINE_LIGHTHOUSE_3F,                      10,  9 ; 34
	map_const OLIVINE_LIGHTHOUSE_4F,                      10,  9 ; 35
	map_const OLIVINE_LIGHTHOUSE_5F,                      10,  9 ; 36
	map_const OLIVINE_LIGHTHOUSE_6F,                      10,  9 ; 37
	map_const MAHOGANY_MART_1F,                            4,  4 ; 38
	map_const TEAM_ROCKET_BASE_B1F,                       15,  9 ; 39
	map_const TEAM_ROCKET_BASE_B2F,                       15,  9 ; 40
	map_const TEAM_ROCKET_BASE_B3F,                       15,  9 ; 41
	map_const ILEX_FOREST,                                17, 24 ; 42
	map_const WAREHOUSE_ENTRANCE,                         16, 20 ; 43
	map_const UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES,     13, 21 ; 44
	map_const GOLDENROD_DEPT_STORE_B1F,                   10,  9 ; 45
	map_const UNDERGROUND_WAREHOUSE,                      10,  9 ; 46
	map_const MOUNT_MORTAR_1F_OUTSIDE,                    20, 18 ; 47
	map_const MOUNT_MORTAR_1F_INSIDE,                     20, 25 ; 48
	map_const MOUNT_MORTAR_2F_INSIDE,                     20, 18 ; 49
	map_const MOUNT_MORTAR_B1F,                           20, 18 ; 50
	map_const ICE_PATH_1F,                                20, 15 ; 51
	map_const ICE_PATH_B1F,                               10, 18 ; 52
	map_const ICE_PATH_B2F_MAHOGANY_SIDE,                 10,  9 ; 53
	map_const ICE_PATH_B2F_BLACKTHORN_SIDE,                5,  9 ; 54
	map_const ICE_PATH_B3F,                               10,  5 ; 55
	map_const WHIRL_ISLAND_NW,                            17, 18 ; 56
	map_const WHIRL_ISLAND_NE,                            10,  9 ; 57
	map_const WHIRL_ISLAND_SW,                            10,  9 ; 58
	map_const WHIRL_ISLAND_CAVE,                          20, 45 ; 59
	map_const WHIRL_ISLAND_SE,                             5,  9 ; 60
	map_const WHIRL_ISLAND_B1F,                           20, 18 ; 61
	map_const WHIRL_ISLAND_B2F,                           10, 18 ; 62
	map_const WHIRL_ISLAND_LUGIA_CHAMBER,                 10,  9 ; 63
	map_const SILVER_CAVE_ROOM_1,                         10, 18 ; 64
	map_const SILVER_CAVE_ROOM_2,                         15, 17 ; 65
	map_const SILVER_CAVE_ROOM_3,                         10, 17 ; 66
	map_const SILVER_CAVE_ITEM_ROOMS,                     20, 18 ; 67
	map_const DARK_CAVE_VIOLET_ENTRANCE,                  20, 18 ; 68
	map_const DARK_CAVE_BLACKTHORN_ENTRANCE,              15, 15 ; 69
	map_const DRAGONS_DEN_1F,                             20, 45 ; 70
	map_const DRAGONS_DEN_B1F,                            20, 18 ; 71
	map_const DRAGON_SHRINE,                               5,  5 ; 72
	map_const TOHJO_FALLS,                                15,  9 ; 73
	map_const GIOVANNIS_CAVE,                             10, 24 ; 74
	map_const DIGLETTS_CAVE,                              21, 19 ; 75
	map_const MOUNT_MOON_1F,                              15, 13 ; 76
	map_const MOUNT_MOON_B1F,                             16, 14 ; 77
	map_const MOUNT_MOON_B2F,                             16, 17 ; 78
	map_const UNDERGROUND,                                 3, 18 ; 79
	map_const ROCK_TUNNEL_1F,                             15, 14 ; 80
	map_const ROCK_TUNNEL_B1F,                            15, 14 ; 81
	map_const ROCK_TUNNEL_2F,                             15, 14 ; 82
	map_const VICTORY_ROAD_1F,                            12, 13 ; 83
	map_const VICTORY_ROAD_2F,                            14, 11 ; 84
	map_const VICTORY_ROAD_3F,                            12,  9 ; 85

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

	newgroup                                                     ;  5
	map_const BLACKTHORN_GYM_1F,                           5,  9 ;  1
	map_const BLACKTHORN_GYM_2F,                           5,  9 ;  2
	map_const BLACKTHORN_DRAGON_SPEECH_HOUSE,              4,  4 ;  3
	map_const BLACKTHORN_EMYS_HOUSE,                       4,  4 ;  4
	map_const BLACKTHORN_MART,                             6,  4 ;  5
	map_const BLACKTHORN_POKECENTER_1F,                    6,  4 ;  6
	map_const MOVE_DELETERS_HOUSE,                         4,  4 ;  7
	map_const ROUTE_45,                                   12, 46 ;  8
	map_const ROUTE_46,                                   10, 18 ;  9
	map_const BLACKTHORN_CITY,                            20, 19 ; 10

	newgroup                                                     ;  6
	map_const CINNABAR_POKECENTER_1F,                      6,  4 ;  1
	map_const SEAFOAM_ISLANDS_1F,                         17, 18 ;  2
	map_const SEAFOAM_GYM,                                12, 12 ;  3
	map_const SEAFOAM_ISLANDS_B1F,                        20, 10 ;  4
	map_const SEAFOAM_ISLANDS_B2F,                        20, 10 ;  5
	map_const SEAFOAM_ISLANDS_B3F,                        20, 10 ;  6
	map_const SEAFOAM_ISLANDS_B4F,                        20, 10 ;  7
	map_const ROUTE_19,                                   10, 29 ;  8
	map_const ROUTE_20,                                   55,  9 ;  9
	map_const ROUTE_21,                                   10, 48 ; 10
	map_const URAGA_CHANNEL_WEST,                         10, 15 ; 11
	map_const CINNABAR_ISLAND,                            12, 11 ; 12
	map_const CINNABAR_VOLCANO_1F,                        14, 14 ; 13
	map_const CINNABAR_VOLCANO_B1F,                       18, 18 ; 14
	map_const CINNABAR_VOLCANO_B2F,                       14, 14 ; 15
	map_const POKEMON_MANSION_1F,                         15, 14 ; 16
	map_const POKEMON_MANSION_B1F,                        17, 16 ; 17
	map_const CINNABAR_LAB,                               16,  9 ; 18
	map_const SCARY_CAVE_1F,                              20, 17 ; 19
	map_const SCARY_CAVE_B1F,                             12, 12 ; 20
	map_const SCARY_CAVE_SHIPWRECK,                        6,  6 ; 21
	map_const ROUTE_19_BEACH_HOUSE,                        4,  4 ; 22

	newgroup                                                     ;  7
	map_const ROUTE_10_POKECENTER_1F,                      6,  4 ;  8
	map_const POWER_PLANT,                                10,  9 ; 10
	map_const BILLS_HOUSE,                                 4,  4 ; 11
	map_const ROUTE_4,                                    33, 10 ; 12
	map_const ROUTE_24,                                   14, 20 ; 13
	map_const ROUTE_25,                                   17, 21 ; 14

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
