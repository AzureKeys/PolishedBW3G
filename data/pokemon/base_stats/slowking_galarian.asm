	db  95,  65,  80,  30, 110, 110  ; 490 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, PSYCHIC  ; type
	db 70  ; catch rate
	db 164  ; base exp
	db NO_ITEM, KINGS_ROCK  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SLOWKING_GALARIAN, GLUTTONY, OWN_TEMPO, REGENERATOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MONSTER, EGG_WATER_1  ; egg groups

	ev_yield 3 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     TOXIC,        HAIL,         VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     BULLDOZE,     IRON_TAIL,    \ ;5
		 EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  SCALD,        \ ;11
		 HEX,          \ ;14
		 WATER_PULSE,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SURF,         STRENGTH,     WATERFALL,    \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 AQUA_TAIL,    THUNDERPUNCH, ICE_FANG,     \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SIGNAL_BEAM,  GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 TRICK,        ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE ;T7
	 ; end
