	db  69,  55,  45,  15,  55,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, POISON  ; type
	db 190  ; catch rate
	db 59  ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for FOONGUS, EFFECT_SPORE, EFFECT_SPORE, REGENERATOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  \ ;11
	     PAYBACK,      SWAGGER,      \ ;14
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 ROLLOUT,      \ ;T5
		 SUCKER_PUNCH ;T6
	 ; end
