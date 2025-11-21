	db 150,  80,  44,  80,  90,  54  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, FLYING  ; type
	db 60  ; catch rate
	db 204  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOW  ; gender ratio, step cycles to hatch

	 ;abilities_for DRIFBLIM, AFTERMATH, UNBURDEN, FLARE_BOOST
	abilities_for DRIFBLIM, AFTERMATH, UNBURDEN, UNBURDEN
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
