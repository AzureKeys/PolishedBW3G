MACRO fishmon_map
	map_id \1
	db \2 ; fish group
ENDM

FishMonMaps:
	fishmon_map NEW_BARK_TOWN, FISHGROUP_OCEAN
	db -1
