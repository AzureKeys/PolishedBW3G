	db  75,  80,  70,  90,  65,  75  ; 455 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, FLYING  ; type
	db 90  ; catch rate
	db 171  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for GOLBAT, INNER_FOCUS, INNER_FOCUS, INFILTRATOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        STEEL_WING,   \ ;10
		 X_SCISSOR,    \ ;12
		 ACROBATICS,   \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 FLY,          \ ;HM
		 GIGA_DRAIN,   \ ;T1
		 ROOST,        ZEN_HEADBUTT, \ ;T4
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	  ; end
