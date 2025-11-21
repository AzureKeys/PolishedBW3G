	db 105,  95,  75,  74,  85,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, GROUND  ; type
	db 45  ; catch rate
	db 229  ; base exp
	db PERSIM_BERRY, PECHA_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SEISMITOAD, SWIFT_SWIM, POISON_TOUCH, WATER_ABSORB
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_WATER_1  ; egg groups

	ev_yield 3 HP

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
