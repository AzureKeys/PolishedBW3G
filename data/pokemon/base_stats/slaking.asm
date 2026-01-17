	db 150, 160, 100, 100,  95,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 45  ; catch rate
	db 252  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	 ;abilities_for SLAKING, TRUANT, TRUANT, TRUANT
	abilities_for SLAKING, PRESSURE, PRESSURE, PRESSURE
	db GROWTH_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 3 HP

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    WILD_CHARGE,  \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 SEED_BOMB,    FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    ICY_WIND,     GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, \ ;T4
		 OUTRAGE,      \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, PLAY_ROUGH,   \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
