	db  80, 135, 130,  70,  95,  90  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, PSYCHIC  ; type
	db 3  ; catch rate
	db 210  ; base exp
	db METAL_COAT, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for METAGROSS, CLEAR_BODY, CLEAR_BODY, LIGHT_METAL
	db GROWTH_SLOW  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 3 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
