	db  40,  65,  40,  65,  80,  40   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db DARK, DARK   ; type
	db 75   ; catch rate
	db 66   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_SLOW   ; gender ratio, step cycles to hatch

	abilities_for ZORUA, STENCH, WEAK_ARMOR, AFTERMATH
	  ;abilities_for ZORUA, ILLUSION, ILLUSION, ILLUSION
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 1 SAt

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    ROAR,         \ ;1
	     HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       DIG,          SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        \ ;10
		 DARK_PULSE,   HEX,          \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      U_TURN,       SWAGGER,      \  ;14
		 SWORDS_DANCE, \ ;15
		 CUT
	  ; end
