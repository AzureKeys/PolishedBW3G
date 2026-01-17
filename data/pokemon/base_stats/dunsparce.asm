	db 100,  70,  70,  45,  65,  65  ; 415 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 190  ; catch rate
	db 75  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for DUNSPARCE, SERENE_GRACE, RUN_AWAY, RATTLED
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     TOXIC,        HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 WILD_CHARGE,  HEX,          \ ;12
		 WATER_PULSE,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, GYRO_BALL,    \ ;15
		 STRENGTH,     \ ;HM
		 AQUA_TAIL,    SHOCK_WAVE,   \ ;T2
		 ROOST,        ZEN_HEADBUTT, \ ;T4
		 EARTH_POWER,  ROLLOUT,      ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE,  HYPER_VOICE,  PAIN_SPLIT ;T7
	 ; end
