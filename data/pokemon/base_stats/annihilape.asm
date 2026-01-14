	db 110, 115,  80,  90,  50,  90  ; 535 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, GHOST  ; type
	db 45  ; catch rate
	db 189  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for ANNIHILAPE, VITAL_SPIRIT, INNER_FOCUS, DEFIANT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 ACROBATICS,   SHADOW_CLAW,  \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH,     \ ;HM
		 SEED_BOMB,    FIRE_PUNCH,   OVERHEAT,     \ ;T1
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, \ ;T4
		 OUTRAGE,      \ ;T5
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
