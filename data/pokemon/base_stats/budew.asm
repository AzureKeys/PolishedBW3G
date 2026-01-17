	db  40,  30,  35,  55,  50,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, POISON  ; type
	db 255  ; catch rate
	db 68  ; base exp
	db POISON_BARB, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for BUDEW, NATURAL_CURE, POISON_POINT, LEAF_GUARD
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm VENOSHOCK,    HIDDEN_POWER, \ ;2
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
		 CUT,          \ ;HM
		 SEED_BOMB,    GIGA_DRAIN ;T1
	 ; end
