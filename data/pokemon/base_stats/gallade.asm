	db  68, 125,  65,  80,  65, 115  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FIGHTING  ; type
	db 45  ; catch rate
	db 208  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F0, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GALLADE, STEADFAST, SHARPNESS, JUSTIFIED
	db GROWTH_SLOW  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     BULLDOZE,     THUNDERBOLT,  \ ;5
		 EARTHQUAKE,   RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  ENERGY_BALL,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
		 WILL_O_WISP,  SHADOW_CLAW,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 TRICK,        \ ;T5
		 KNOCK_OFF,    DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  PAIN_SPLIT ;T7
	 ; end
