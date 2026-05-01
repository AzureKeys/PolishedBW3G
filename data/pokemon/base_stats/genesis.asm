	bst 730, 140, 115, 110, 125, 110, 130
	;   bst   hp  atk  def  sat  sdf  spe

	db UNKNOWN_T, UNKNOWN_T  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for GENESIS_MON, DOWNLOAD, DOWNLOAD, DOWNLOAD
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 Atk, 1 SAt, 1 Spe

	 ; tm/hm learnset
	tmhm 
	 ; end
