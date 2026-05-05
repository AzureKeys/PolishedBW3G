; Functions are defined in home/audio.asm.
; Specifying GetMapMusic makes the Bicycle and Surf music not play.

MACRO music_map
	map_id \1
	dw \2
ENDM

SpecialMusicMaps:
	music_map VICTORY_ROAD_ENTRANCE_SOUTH_EAST, GetMapMusic
	music_map VICTORY_ROAD_ENTRANCE_SOUTH_WEST, GetMapMusic
	music_map VICTORY_ROAD_ENTRANCE_NORTH,      GetMapMusic
	music_map VICTORY_ROAD_CAVE_1F,             GetMapMusic
	music_map VICTORY_ROAD_CAVE_2F,             GetMapMusic
	music_map VICTORY_ROAD_CAVE_3F,             GetMapMusic
	music_map VICTORY_ROAD_OUTDOOR_1F,          GetMapMusic
	music_map VICTORY_ROAD_OUTDOOR_2F,          GetMapMusic
	music_map VICTORY_ROAD_GROVE,               GetMapMusic
	music_map VICTORY_ROAD_CASTLE,              GetMapMusic
	music_map NS_ROOM,                          GetMapMusic
	music_map PKMN_LEAGUE_ENTRANCE,             GetMapMusic
	db 0 ; end
