	db  81, 102,  77,  85,  85,  75  ; 505 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, GROUND  ; type
	db 45  ; catch rate
	db 195  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F0, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for NIDOKING, POISON_POINT, RIVALRY, SHEER_FORCE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_GROUND  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DRAGON_PULSE, HEX,          \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 CUT,          SURF,         STRENGTH,     \ ;HM
		 FIRE_FANG,    FIRE_PUNCH,   \ ;T1
		 AQUA_TAIL,    THUNDER_FANG, THUNDERPUNCH, SHOCK_WAVE,   ICE_FANG,     \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 DYNAMICPUNCH, \ ;T4
		 EARTH_POWER,  OUTRAGE,      \ ;T5
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	 ; end
