	db  75,  75,  55,  30, 105,  85  ; 425 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 120  ; catch rate
	db 146  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SUNFLORA, CHLOROPHYLL, SOLAR_POWER, EARLY_BIRD
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
		 ENERGY_BALL,  \ ;11
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT
	 ; end
