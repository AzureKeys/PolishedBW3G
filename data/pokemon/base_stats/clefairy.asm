	db  70,  45,  48,  35,  60,  65  ; 323 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FAIRY, FAIRY  ; type
	db 150  ; catch rate
	db 68  ; base exp
	db LEPPA_BERRY, MOON_STONE  ; held items
	dn GENDER_F75, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for CLEFAIRY, CUTE_CHARM, MAGIC_GUARD, CUTE_CHARM
	db GROWTH_FAST  ; growth rate
	dn EGG_FAIRY, EGG_FAIRY  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    THUNDER,      \ ;5
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 TRICK,        ROLLOUT,      \ ;T5
		 KNOCK_OFF,    PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  HEAL_BELL ;T7
	 ; end
