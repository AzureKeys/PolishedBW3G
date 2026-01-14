	db 105,  95,  80,  90,  40,  80  ; 490 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 45  ; catch rate
	db 175  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F100, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for KANGASKHAN, EARLY_BIRD, SCRAPPY, INNER_FOCUS
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MONSTER, EGG_MONSTER  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 CUT,          SURF,         STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 AQUA_TAIL,    THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, \ ;T4
		 OUTRAGE,      \ ;T5
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
