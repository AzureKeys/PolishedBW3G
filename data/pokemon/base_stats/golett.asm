	db  59,  74,  50,  35,  35,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, GROUND  ; type
	db 190  ; catch rate
	db 61  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for GOLETT, IRON_FIST, IRON_FIST, NO_GUARD
	 ;abilities_for GOLETT, IRON_FIST, KLUTZ, NO_GUARD
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
