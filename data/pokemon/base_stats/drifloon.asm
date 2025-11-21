	db  90,  50,  34,  70,  60,  44  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, FLYING  ; type
	db 125  ; catch rate
	db 127  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOW  ; gender ratio, step cycles to hatch

	 ;abilities_for DRIFLOON, AFTERMATH, UNBURDEN, FLARE_BOOST
	abilities_for DRIFLOON, AFTERMATH, UNBURDEN, UNBURDEN
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
