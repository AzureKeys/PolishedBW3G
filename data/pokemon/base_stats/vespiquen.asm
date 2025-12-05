	db  70,  80, 102,  40,  80, 102   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db BUG, FLYING   ; type
	db 45   ; catch rate
	db 166   ; base exp
	db POISON_BARB, NO_ITEM   ; held items
	dn GENDER_F100, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for VESPIQUEN, PRESSURE, PRESSURE, UNNERVE
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 1 Def, 1 SDf

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     TOXIC,        VENOSHOCK,    HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        \ ;10
		 X_SCISSOR,    HEX,          \ ;12
		 ACROBATICS,   \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 CUT,          FLY
	  ; end
