; Some maps have object_events whose facings use two palettes via the NEXT_PALETTE constant.
; These facings assume that the second palette exists right after the first in VRAM.

MACRO dual_obj_pal
	map_id \1
	db PAL_OW_\2, PAL_OW_\3
ENDM

DualObjectPalettes:
	db -1 ; end
