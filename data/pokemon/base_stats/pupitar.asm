	db  70,  84,  70,  51,  65,  70  ; 410 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, GROUND  ; type
	db 45  ; catch rate
	db 144  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for PUPITAR, SHED_SKIN, SHED_SKIN, SHED_SKIN
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_MONSTER  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SANDSTORM,    AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 DARK_PULSE,   \ ;12
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 EARTH_POWER,  ANCIENTPOWER, OUTRAGE,      \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
