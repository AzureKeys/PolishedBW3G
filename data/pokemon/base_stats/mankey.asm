	db  40,  80,  35,  70,  35,  45  ; 305 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, FIGHTING  ; type
	db 190  ; catch rate
	db 74  ; base exp
	db NO_ITEM, KEE_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for MANKEY, VITAL_SPIRIT, ANGER_POINT, DEFIANT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 ACROBATICS,   SHADOW_CLAW,  \ ;13
	     PAYBACK,      POISON_JAB,   U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH
	 ; end
