	db  40,  70,  40,  60,  35,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, FIGHTING  ; type
	db 75  ; catch rate
	db 72  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for RIOLU, STEADFAST, INNER_FOCUS, PRANKSTER
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      POISON_JAB,   SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 STRENGTH,     \ ;HM
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 DOUBLE_EDGE ;T7
	 ; end
