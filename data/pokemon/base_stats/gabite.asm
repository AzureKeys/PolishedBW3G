	db  68,  90,  65,  82,  50,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, GROUND  ; type
	db 45  ; catch rate
	db 144  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	 ;abilities_for GABITE, SAND_VEIL, SAND_VEIL, ROUGH_SKIN
	abilities_for GABITE, SAND_VEIL, SAND_VEIL, SAND_VEIL
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_DRAGON  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FALSE_SWIPE,  \ ;11
		 DRAGON_PULSE, \ ;12
		 SHADOW_CLAW,  \ ;13
	     POISON_JAB,   SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 FIRE_FANG,    \ ;T1
		 THUNDER_FANG, \ ;T2
		 SEISMIC_TOSS, \ ;T3
		 EARTH_POWER,  OUTRAGE,      \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
