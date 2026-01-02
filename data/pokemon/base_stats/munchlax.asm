	db 135,  85,  45,   5,  40,  85  ; 395 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 50  ; catch rate
	db 94  ; base exp
	db NO_ITEM, LEFTOVERS  ; held items
	dn GENDER_F12_5, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for MUNCHLAX, PICKUP, THICK_FAT, GLUTTONY
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         STRENGTH
	 ; end
