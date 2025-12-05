	db  60,  60,  75,  83,  60,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 45  ; catch rate
	db 145  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SERVINE, OVERGROW, OVERGROW, CONTRARY
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_PLANT  ; egg groups

	ev_yield 2 Spe

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
		 CUT
	 ; end
