	db  70, 120,  65, 125,  45,  85   ; 510 BST
	  ;   hp  atk  def  spe  sat  sdf

	db DARK, ICE   ; type
	db 45   ; catch rate
	db 199   ; base exp
	db GRIP_CLAW, QUICK_CLAW   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for WEAVILE, PRESSURE, PRESSURE, PICKPOCKET
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 1 Atk, 1 Spe

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DREAM_EATER,  \ ;10
		 FOCUS_BLAST,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          SURF,         STRENGTH,     \ ;HM
		 ICE_PUNCH,    ICY_WIND,     \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, \ ;T4
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
