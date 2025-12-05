	db 114,  85,  70,  30,  85,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, POISON  ; type
	db 75  ; catch rate
	db 162  ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for AMOONGUSS, EFFECT_SPORE, EFFECT_SPORE, REGENERATOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  \ ;11
		 HEX,          \ ;12
	     PAYBACK,      GIGA_IMPACT,  SWAGGER ;14
	 ; end
