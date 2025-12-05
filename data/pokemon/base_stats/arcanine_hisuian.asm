	db  95, 115,  80,  90,  95,  80  ; 555 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, ROCK  ; type
	db 75  ; catch rate
	db 213  ; base exp
	db NO_ITEM, ASPEAR_BERRY  ; held items
	dn GENDER_F25, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for ARCANINE_HISUIAN, INTIMIDATE, FLASH_FIRE, ROCK_HEAD
	db GROWTH_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     THIEF,        ROCK_SLIDE,   \ ;10
		 WILD_CHARGE,  DRAGON_PULSE, \ ;12
		 WILL_O_WISP,  \ ;13
		 GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH
	 ; end
