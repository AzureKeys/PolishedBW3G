	db  70,  55,  75,  60,  45,  65   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db DARK, FLYING   ; type
	db 190   ; catch rate
	db 74   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F100, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for VULLABY, BIG_PECKS, OVERCOAT, WEAK_ARMOR
	db GROWTH_SLOW   ; growth rate
	dn EGG_FLYING, EGG_FLYING   ; egg groups

	ev_yield 1 Def

	  ; tm/hm learnset
	tmhm TOXIC,        HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        STEEL_WING,   \ ;10
		 DARK_PULSE,   \ ;12
	     PAYBACK,      U_TURN,       SWAGGER,      \  ;14
		 CUT,          FLY
	  ; end
