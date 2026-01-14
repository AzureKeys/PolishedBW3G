	db 100, 100, 125,  50, 110,  50  ; 535 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 30  ; catch rate
	db 211  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for TANGROWTH, CHLOROPHYLL, LEAF_GUARD, REGENERATOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     SOLAR_BEAM,   \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  ENERGY_BALL,  \ ;11
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,          \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 SHOCK_WAVE,   \ ;T2
		 SEISMIC_TOSS, \ ;T3
		 ANCIENTPOWER, \ ;T5
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
