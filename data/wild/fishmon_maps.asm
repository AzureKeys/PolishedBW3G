MACRO fishmon_map
	map_id \1
	db \2 ; fish group
ENDM

FishMonMaps:
	fishmon_map HUMILAU_CITY, FISHGROUP_SHORE
	fishmon_map ROUTE_22, FISHGROUP_SHORE
	fishmon_map ROUTE_13, FISHGROUP_SHORE
	fishmon_map GIANT_CHASM_1F, FISHGROUP_POND
	db -1
