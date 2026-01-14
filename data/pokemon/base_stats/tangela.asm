	db  65,  55, 115,  60, 100,  40  ; 435 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 45  ; catch rate
	db 166  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for TANGELA, CHLOROPHYLL, LEAF_GUARD, REGENERATOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 ENERGY_BALL,  \ ;11
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 SHOCK_WAVE,   \ ;T2
		 ANCIENTPOWER, \ ;T5
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
