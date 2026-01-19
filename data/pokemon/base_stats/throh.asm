	db 120, 100,  85,  45,  30,  85  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, FIGHTING  ; type
	db 45  ; catch rate
	db 163  ; base exp
	db BLACK_BELT, NO_ITEM  ; held items
	dn GENDER_F0, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for THROH, GUTS, INNER_FOCUS, MOLD_BREAKER
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH,     \ ;HM
		 SEED_BOMB,    FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 ROLLOUT,      OUTRAGE,      \ ;T5
		 KNOCK_OFF,    IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
