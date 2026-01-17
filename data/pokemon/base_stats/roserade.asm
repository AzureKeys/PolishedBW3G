	db  60,  70,  55,  90, 125, 105  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, POISON  ; type
	db 75  ; catch rate
	db 204  ; base exp
	db POISON_BARB, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for ROSERADE, NATURAL_CURE, POISON_POINT, TECHNICIAN
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_FAIRY, EGG_PLANT  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
		 ENERGY_BALL,  \ ;11
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 DOUBLE_EDGE,  HEAL_BELL ;T7
	 ; end
