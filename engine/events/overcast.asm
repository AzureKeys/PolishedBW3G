GetOvercastIndex::
; Some maps are overcast, depending on certain conditions
	ld a, [wMapGroup]
	cp GROUP_LAKE_OF_RAGE ; GROUP_ROUTE_43
	jr z, .lake_of_rage_route_43
.not_overcast:
	xor a ; NOT_OVERCAST
	ret

.azalea_route_33:
; Azalea Town and Route 33
	jr .not_overcast
.azalea_town
; Not overcast until Slowpokes appear (Team Rocket beaten)
	eventflagcheck EVENT_AZALEA_TOWN_SLOWPOKES
	jr nz, .not_overcast
; Overcast on Sunday, Tuesday, Thursday, and Saturday
	call GetWeekday
	cp MONDAY
	jr z, .not_overcast
	cp WEDNESDAY
	jr z, .not_overcast
	cp FRIDAY
	jr z, .not_overcast
	ld a, AZALEA_OVERCAST
	ret

.lake_of_rage_route_43:
; Lake of Rage and Route 43
	ld a, [wMapNumber]
	cp MAP_LAKE_OF_RAGE
	jr z, .lake_of_rage
	cp MAP_ROUTE_43
	jr nz, .not_overcast
.lake_of_rage
; Always overcast until civilians appear (Team Rocket beaten)
	eventflagcheck EVENT_LAKE_OF_RAGE_CIVILIANS
	jr nz, .overcast_lake_of_rage
; Overcast on Monday, Wednesday, and Friday
	call GetWeekday
	cp MONDAY
	jr z, .overcast_lake_of_rage
	cp WEDNESDAY
	jr z, .overcast_lake_of_rage
	cp FRIDAY
	jr nz, .not_overcast
.overcast_lake_of_rage
	ld a, LAKE_OF_RAGE_OVERCAST
	ret

.stormy_beach_goldenrod_city_route_34:
; Stormy Beach, Goldenrod City, Magnet Tunnel West, Route 34, Route 34 Coast
	ld a, [wMapNumber]
; Stormy Beach is always overcast
.maybe_stormy_beach
; Only overcast while Team Rocket is present
	eventflagcheck EVENT_GOLDENROD_CITY_ROCKET_TAKEOVER
	jr nz, .not_overcast
.overcast_stormy_beach
	ld a, STORMY_BEACH_OVERCAST
	ret
