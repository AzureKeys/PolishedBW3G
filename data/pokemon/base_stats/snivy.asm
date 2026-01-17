	db  45,  45,  55,  63,  45,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 45  ; catch rate
	db 62  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SNIVY, OVERGROW, OVERGROW, CONTRARY
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_PLANT  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  \ ;11
	     SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 AQUA_TAIL,    \ ;T2
		 OUTRAGE,      \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
