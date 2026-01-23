MACRO spawn
; map, y, x
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4

	spawn PLAYERS_HOUSE_2F,            3,  3

	spawn HUMILAU_CITY,                3, 28
	spawn LACUNOSA_TOWN,               9, 16
	spawn UNDELLA_TOWN,               29, 10
	spawn LENTIMAS_TOWN,              25, 14
	spawn NIMBASA_CITY,               15, 24
	spawn CASTELIA_CITY_SOUTH,        39,  8

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
