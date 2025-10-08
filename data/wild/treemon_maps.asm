MACRO treemon_map
	map_id \1
	db  \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map ROUTE_35, TREEMON_SET_ROUTE
	treemon_map ROUTE_36, TREEMON_SET_ROUTE
	treemon_map ROUTE_37, TREEMON_SET_APRICORNS
	treemon_map NEW_BARK_TOWN, TREEMON_SET_CITY
	treemon_map ECRUTEAK_CITY, TREEMON_SET_CITY
	db -1

RockMonMaps:
	db -1
