MACRO spawn
; map, y, x
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4

	spawn PLAYERS_HOUSE_2F,            3,  3

	spawn CERULEAN_CITY,              19, 18
	spawn CERULEAN_CAPE,               9,  6
	spawn CINNABAR_ISLAND,            11, 16
	spawn INDIGO_PLATEAU,             11,  6

	spawn NEW_BARK_TOWN,              15,  6
	spawn VIOLET_CITY,                31, 26
	spawn ROUTE_32,                   11, 74
	spawn AZALEA_TOWN,                15, 10
	spawn ECRUTEAK_CITY,              23, 28
	spawn MAHOGANY_TOWN,              15, 14
	spawn LAKE_OF_RAGE,               21, 29
	spawn BLACKTHORN_CITY,            21, 30

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
