	db  75, 100, 110,  65,  45,  55  ; 450 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GROUND, GROUND  ; type
	db 90  ; catch rate
	db 163  ; base exp
	db NO_ITEM, QUICK_CLAW  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SANDSLASH, SAND_VEIL, SAND_VEIL, SAND_RUSH
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      SAFEGUARD,    \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SANDSTORM,    SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
		 SHADOW_CLAW,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL,    SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, \ ;T4
		 EARTH_POWER,  ROLLOUT,      \ ;T5
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	 ; end
