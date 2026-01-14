	db 115,  45,  20,  20,  45,  25  ; 270 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FAIRY  ; type
	db 170  ; catch rate
	db 76  ; base exp
	db ORAN_BERRY, ORAN_BERRY  ; held items
	dn GENDER_F75, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for JIGGLYPUFF, CUTE_CHARM, COMPETITIVE, FRISK
	db GROWTH_FAST  ; growth rate
	dn EGG_FAIRY, EGG_FAIRY  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 WILD_CHARGE,  DARK_PULSE,   HEX,          \ ;12
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 THUNDER_WAVE, GYRO_BALL,    \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 ROLLOUT,      \ ;T5
		 KNOCK_OFF,    PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  HEAL_BELL,    PAIN_SPLIT ;T7
	 ; end
