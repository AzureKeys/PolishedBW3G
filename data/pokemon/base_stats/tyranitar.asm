	db 100, 134, 110,  61,  95, 100   ; 600 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ROCK, DARK   ; type
	db 45   ; catch rate
	db 218   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_SLOWEST   ; gender ratio, step cycles to hatch

	abilities_for TYRANITAR, SAND_STREAM, SAND_STREAM, UNNERVE
	db GROWTH_SLOW   ; growth rate
	dn EGG_MONSTER, EGG_MONSTER   ; egg groups

	ev_yield 3 Atk

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   DRAGON_PULSE, \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, \ ;15
		 CUT,          SURF,         STRENGTH,     \ ;HM
		 FIRE_FANG,    FIRE_PUNCH,   \ ;T1
		 AQUA_TAIL,    THUNDER_FANG, THUNDERPUNCH, SHOCK_WAVE,   ICE_FANG,     \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, \ ;T4
		 EARTH_POWER,  ANCIENTPOWER, OUTRAGE,      \ ;T5
		 KNOCK_OFF,    IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
