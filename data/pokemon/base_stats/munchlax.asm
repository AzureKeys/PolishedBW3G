	db 135,  85,  45,   5,  40,  85  ; 395 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 50  ; catch rate
	db 94  ; base exp
	db NO_ITEM, LEFTOVERS  ; held items
	dn GENDER_F12_5, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for MUNCHLAX, PICKUP, THICK_FAT, GLUTTONY
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

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
