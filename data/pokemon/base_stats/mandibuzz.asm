	db 110,  65, 105,  80,  55,  95  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, FLYING  ; type
	db 60  ; catch rate
	db 179  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F100, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for MANDIBUZZ, BIG_PECKS, OVERCOAT, WEAK_ARMOR
	db GROWTH_SLOW  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     TOXIC,        HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SANDSTORM,    SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        STEEL_WING,   \ ;10
		 DARK_PULSE,   \ ;12
		 ACROBATICS,   \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 CUT,          FLY,          \ ;HM
		 ROOST,        \ ;T4
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	  ; end
