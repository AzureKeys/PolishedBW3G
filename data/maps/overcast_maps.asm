MACRO overcast_area
	assert const_value < $ff, "overcast_area overflow"
	const \1
	for x, 2, _NARG + 1
		map_id \<x>
	endr
	db -1 ; terminator
ENDM

RandomAliasedOvercastMapGroups:
	const_def NUM_MAP_GROUPS + 1 ; aliased groups start after normal groups
	overcast_area AREA_HUMILAU_CITY, ROUTE_22, HUMILAU_CITY
	
MACRO overcast_map
	const_skip
	if !DEF(GROUP_\1) && STRFIND("\1", "AREA_") == 0
		db \1, 0
	else
		map_id \1
	endc
ENDM

RandomOvercastMapsJohto:
	const_def
	; aliases
	overcast_map AREA_HUMILAU_CITY
	DEF NUM_JOHTO_OVERCAST_MAPS EQU const_value

RandomOvercastMapsKanto:
	const_def
	DEF NUM_KANTO_OVERCAST_MAPS EQU const_value
