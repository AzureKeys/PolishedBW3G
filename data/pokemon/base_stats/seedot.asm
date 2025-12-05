	db  40,  40,  50,  30,  30,  30  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 255  ; catch rate
	db 44  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SEEDOT, CHLOROPHYLL, EARLY_BIRD, PICKPOCKET
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_PLANT  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  FALSE_SWIPE,  \ ;11
		 EXPLOSION,    \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 SWORDS_DANCE ;15
	 ; end
