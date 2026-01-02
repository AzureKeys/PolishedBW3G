	db  85,  90,  80, 130,  70,  80  ; 535 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, FLYING  ; type
	db 90  ; catch rate
	db 204  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for CROBAT, INNER_FOCUS, INNER_FOCUS, INFILTRATOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 3 Spe

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        STEEL_WING,   \ ;10
		 X_SCISSOR,    DARK_PULSE,   HEX,          \ ;12
		 ACROBATICS,   \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 FLY
	  ; end
