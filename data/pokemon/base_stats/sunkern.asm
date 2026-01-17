	db  30,  30,  30,  30,  30,  30  ; 180 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 235  ; catch rate
	db 52  ; base exp
	db NO_ITEM, STARF_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SUNKERN, CHLOROPHYLL, SOLAR_POWER, EARLY_BIRD
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  \ ;11
	     SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 EARTH_POWER,  \ ;T5
		 DOUBLE_EDGE ;T7
	 ; end
