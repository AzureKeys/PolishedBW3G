MapGroupRoofs:
; entries correspond to map groups
; values are indexes for LoadMapGroupRoof.Roofs
	table_width 1
	db -1            ; 0
	db ROOF_OLIVINE  ; 9 (Battle Tower Outside)
	db -1            ; 16
	db -1            ; 20
	db -1            ; 24 (Humilau)
	assert_table_length NUM_MAP_GROUPS + 1
