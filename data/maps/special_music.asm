; Functions are defined in home/audio.asm.
; Specifying GetMapMusic makes the Bicycle and Surf music not play.

MACRO music_map
	map_id \1
	dw \2
ENDM

SpecialMusicMaps:
	music_map ROUTE_23,                    GetMapMusic
	music_map INDIGO_PLATEAU,              GetMapMusic
	db 0 ; end
