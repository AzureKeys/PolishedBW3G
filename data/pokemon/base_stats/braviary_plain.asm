	db 100, 123,  75,  80,  57,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FLYING  ; type
	db 60  ; catch rate
	db 179  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F0, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for BRAVIARY, KEEN_EYE, SHEER_FORCE, DEFIANT
	db GROWTH_SLOW  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   ROCK_SLIDE,   \ ;10
		 ACROBATICS,   SHADOW_CLAW,  \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 CUT,          FLY,          STRENGTH,     \ ;HM
		 SEISMIC_TOSS, \ ;T3
		 ROOST,        ZEN_HEADBUTT, \ ;T4
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
