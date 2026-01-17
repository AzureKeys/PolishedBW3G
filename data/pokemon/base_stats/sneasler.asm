	db  80, 130,  60, 120,  40,  80  ; 510 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, FIGHTING  ; type
	db 45  ; catch rate
	db 199  ; base exp
	db GRIP_CLAW, QUICK_CLAW  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SNEASLER, PRESSURE, UNBURDEN, POISON_TOUCH
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk, 1 Spe

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    \ ;1
	     TOXIC,        BULK_UP,      VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
		 ACROBATICS,   SHADOW_CLAW,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 GUNK_SHOT,    \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, \ ;T4
		 ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE ;T7
	 ; end
