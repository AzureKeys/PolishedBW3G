	db  50,  60,  45,  65, 100,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, POISON  ; type
	db 150  ; catch rate
	db 152  ; base exp
	db POISON_BARB, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for ROSELIA, NATURAL_CURE, POISON_POINT, LEAF_GUARD
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FAIRY, EGG_PLANT  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
		 ENERGY_BALL,  \ ;11
	     POISON_JAB,   SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT
	 ; end
