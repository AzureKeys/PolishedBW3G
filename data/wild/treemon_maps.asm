MACRO treemon_map
	map_id \1
	db  \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map ROUTE_35, TREEMON_SET_ROUTE
	treemon_map ROUTE_36, TREEMON_SET_ROUTE
	treemon_map ROUTE_37, TREEMON_SET_APRICORNS
	treemon_map ROUTE_42, TREEMON_SET_APRICORNS
	treemon_map ROUTE_43, TREEMON_SET_LAKE
	treemon_map ROUTE_44, TREEMON_SET_CANYON
	treemon_map NEW_BARK_TOWN, TREEMON_SET_CITY
	treemon_map ECRUTEAK_CITY, TREEMON_SET_CITY
	treemon_map MAHOGANY_TOWN, TREEMON_SET_CITY
	treemon_map LAKE_OF_RAGE, TREEMON_SET_LAKE
	db -1

RockMonMaps:
	treemon_map BURNED_TOWER_B1F, TREEMON_SET_ROCK
	db -1
