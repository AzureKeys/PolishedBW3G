; Maps that roaming monsters can be on, and possible maps they can jump to.
; Notably missing are Route 40 and Route 41, which are water routes.

MACRO roam_map
	map_id \1
	db _NARG - 1
	for i, 2, _NARG + 1
		map_id \<i>
	endr
	db 0
	DEF list_index += 1
ENDM

RoamMaps:
	list_start
	roam_map ROUTE_33, ROUTE_35
	roam_map ROUTE_35, ROUTE_36
	roam_map ROUTE_43, ROUTE_42, ROUTE_44
	roam_map ROUTE_44, ROUTE_42, ROUTE_43, ROUTE_45
	roam_map ROUTE_45, ROUTE_44, ROUTE_46
	assert_list_length NUM_ROAMMON_MAPS
	db -1
