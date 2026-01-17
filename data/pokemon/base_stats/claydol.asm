	db  60,  70, 105,  75,  70, 120  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, PSYCHIC  ; type
	db 90  ; catch rate
	db 189  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for CLAYDOL, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     BULLDOZE,     SOLAR_BEAM,   \ ;5
		 EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 ROCK_SLIDE,   DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
		 HEX,          \ ;12
		 EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL,    \ ;15
		 STRENGTH,     \ ;HM
		 SIGNAL_BEAM,  \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 TRICK,        EARTH_POWER,  ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE ;T7
	 ; end
