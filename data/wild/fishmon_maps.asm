MACRO fishmon_map
	map_id \1
	db \2 ; fish group
ENDM

FishMonMaps:
	fishmon_map HUMILAU_CITY, FISHGROUP_OCEAN
	db -1
