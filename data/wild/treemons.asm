TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Apricorns
	dw TreeMonSet_NoisyForest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (normal, rare).

MACRO tree_mon
; %, species, level
	db \1
	if _NARG == 4
		dp \2, \3
		shift
	else
		dp \2
	endc
	db \3
ENDM

TreeMonSet_City:
TreeMonSet_Canyon:
	tree_mon 80, RATTATA,    10
	tree_mon 20, RATTATA,      10
	db -1
	; rare
	tree_mon 50, RATTATA,    10
	tree_mon 30, HERACROSS,  10
	tree_mon 20, RATTATA,      10
	db -1

TreeMonSet_Town:
	tree_mon 65, RATTATA,    10
	tree_mon 15, RATTATA,      10
	tree_mon 20, RATTATA,      10
	db -1
	; rare
	tree_mon 60, RATTATA,    10
	tree_mon 30, HERACROSS,  10
	tree_mon 10, MEOWTH,     10
	db -1

TreeMonSet_Route:
	tree_mon 50, RATTATA,   10
	tree_mon 15, RATTATA,   10
	tree_mon 15, RATTATA,     10
	tree_mon 20, EXEGGCUTE,  10
	db -1
	; rare
	tree_mon 40, MURKROW,    10
	tree_mon 40, RATTATA,     10
	tree_mon 20, EXEGGCUTE,  10
	db -1

TreeMonSet_Kanto:
	tree_mon 65, RATTATA,   10
	tree_mon 15, RATTATA,      10
	tree_mon 20, EXEGGCUTE,  10
	db -1
	; rare
	tree_mon 40, MURKROW,    10
	tree_mon 40, RATTATA,     10
	tree_mon 20, EXEGGCUTE,  10
	db -1

TreeMonSet_Lake:
	tree_mon 65, RATTATA,   10
	tree_mon 15, RATTATA,    10
	tree_mon 20, EXEGGCUTE,  10
	db -1
	; rare
	tree_mon 50, RATTATA,   10
	tree_mon 30, RATTATA,     10
	tree_mon 20, EXEGGCUTE,  10
	db -1

TreeMonSet_Forest:
	tree_mon 50, RATTATA,   10
	tree_mon 30, RATTATA,     10
	tree_mon 10, RATTATA,    10
	tree_mon  5, RATTATA, 10
	tree_mon  5, RATTATA,   10
	db -1
	; rare
	tree_mon 60, RATTATA,   10
	tree_mon 15, RATTATA,   10
	tree_mon 15, RATTATA,     10
	tree_mon  5, RATTATA,    10
	tree_mon  5, RATTATA,     10
	db -1

TreeMonSet_Apricorns:
	tree_mon 50, RATTATA,               10
	tree_mon 20, RATTATA,                 10
	tree_mon 20, RATTATA,                 10
	tree_mon 10, RATTATA, HISUIAN_FORM, 10
	db -1
	; rare
	tree_mon 40, RATTATA,               10
	tree_mon 20, RATTATA, HISUIAN_FORM, 10
	tree_mon 20, HERACROSS,             10
	tree_mon 20, MEOWTH,                10
	db -1

TreeMonSet_NoisyForest:
	tree_mon 60, RATTATA,                  LEVEL_FROM_BADGES - 3
	tree_mon  5, RATTATA,              LEVEL_FROM_BADGES + 2
	tree_mon 35, RATTATA, HISUIAN_FORM, LEVEL_FROM_BADGES + 0
	db -1
	; rare
	tree_mon 60, RATTATA, HISUIAN_FORM, LEVEL_FROM_BADGES + 0
	tree_mon 30, RATTATA,                  LEVEL_FROM_BADGES - 2
	tree_mon 10, RATTATA,              LEVEL_FROM_BADGES + 3
	db -1

TreeMonSet_Rock:
	tree_mon 70, RATTATA,     15
	tree_mon 25, GEODUDE,    15
	tree_mon  5, SHUCKLE,    15
	db -1
