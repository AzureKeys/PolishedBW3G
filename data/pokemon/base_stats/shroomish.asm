	db  60,  40,  60,  35,  40,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 255  ; catch rate
	db 65  ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SHROOMISH, EFFECT_SPORE, POISON_HEAL, QUICK_FEET
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FAIRY, EGG_PLANT  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  FALSE_SWIPE,  \ ;11
	     SWAGGER,      \ ;14
		 SWORDS_DANCE ;15
	 ; end
