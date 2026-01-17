	db  74, 100,  72,  46,  90,  72  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS  ; type
	db 200  ; catch rate
	db 159  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for CARNIVINE, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_SLOW  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 ENERGY_BALL,  \ ;11
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 KNOCK_OFF ;T6
	 ; end
