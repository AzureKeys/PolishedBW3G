MACRO fishmon_map
	map_id \1
	db \2 ; fish group
ENDM

FishMonMaps:
	fishmon_map ROUTE_35, FISHGROUP_POND
	fishmon_map NEW_BARK_TOWN, FISHGROUP_OCEAN
	fishmon_map ECRUTEAK_CITY, FISHGROUP_POND
	db -1
