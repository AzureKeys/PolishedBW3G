	db  60,  60,  75,  80,  60,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, PSYCHIC  ; type
	db 90  ; catch rate
	db 153  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for MEDICHAM, HUGE_POWER, HUGE_POWER, HUGE_POWER
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   \ ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  ENERGY_BALL,  \ ;11
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 TRICK,        \ ;T5
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
