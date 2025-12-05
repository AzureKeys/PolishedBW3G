	db  91, 134,  95,  80, 100, 100  ; 600 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, FLYING  ; type
	db 45  ; catch rate
	db 218  ; base exp
	db NO_ITEM, DRAGON_SCALE  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for DRAGONITE, INNER_FOCUS, INNER_FOCUS, MULTISCALE
	db GROWTH_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_DRAGON  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DRAGON_PULSE, \ ;12
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, \ ;15
		 CUT,          FLY,          SURF,         STRENGTH,     WATERFALL
	 ; end
