CutGrassBlockPointers:
; Which tileset are we in?
	dbw TILESET_JOHTO_TRADITIONAL, .johto_traditional
	dbw TILESET_JOHTO_MODERN, .johto_modern
	dbw TILESET_JOHTO_OUTLANDS, .johto_overcast
	db -1

; Which meta tile are we facing, and which should we replace it with?

.johto_traditional
.johto_modern
.johto_overcast
	db $03, $02
	db -1

WhirlpoolBlockPointers:
	db -1
