	db 109,  66,  84,  32,  81,  99  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, ELECTRIC  ; type
	db 75  ; catch rate
	db 165  ; base exp
	db SOFT_SAND, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for STUNFISK, STATIC, LIMBER, SAND_VEIL
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_INDETERMINATE  ; egg groups

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
