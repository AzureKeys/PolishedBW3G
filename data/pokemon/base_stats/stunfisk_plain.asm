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
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, \ ;15
		 SURF
	 ; end
