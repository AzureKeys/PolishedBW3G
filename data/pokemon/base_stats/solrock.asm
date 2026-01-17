	db  90,  95,  85,  70,  55,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, PSYCHIC  ; type
	db 45  ; catch rate
	db 161  ; base exp
	db STARDUST, SUN_STONE  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for SOLROCK, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     BULLDOZE,     SOLAR_BEAM,   \ ;5
		 EARTHQUAKE,   RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
		 WILL_O_WISP,  ACROBATICS,   EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL,    SWORDS_DANCE, \ ;15
		 OVERHEAT,     \ ;T1
		 SIGNAL_BEAM,  \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 EARTH_POWER,  ROLLOUT,      ANCIENTPOWER, \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
