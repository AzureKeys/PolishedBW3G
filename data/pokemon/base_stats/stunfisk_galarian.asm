	db 109,  81,  99,  32,  66,  84  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, STEEL  ; type
	db 75  ; catch rate
	db 165  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for STUNFISK_GALARIAN, STATIC, LIMBER, SAND_VEIL
	;abilities_for STUNFISK_GALARIAN, MIMICRY, MIMICRY, MIMICRY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_INDETERMINATE  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 SCALD,        \ ;11
	     PAYBACK,      SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, \ ;15
		 SURF,         \ ;HM
		 ICE_FANG,     \ ;T2
		 EARTH_POWER,  \ ;T5
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
