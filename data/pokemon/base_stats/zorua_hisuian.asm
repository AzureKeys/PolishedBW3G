	db   35,  60,  40,  70,  85,  40   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db NORMAL, GHOST   ; type
	db 75   ; catch rate
	db 66   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_SLOW   ; gender ratio, step cycles to hatch

	abilities_for ZORUA_HISUIAN, STENCH, WEAK_ARMOR, AFTERMATH
	;abilities_for ZORUA_HISUIAN, ILLUSION, ILLUSION, ILLUSION
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 1 SAt

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    ROAR,         \ ;1
	     HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       DIG,          SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        \ ;10
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  SHADOW_CLAW,  \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 CUT,          \ ;HM
		 ICY_WIND,     \ ;T3
		 TRICK,        ANCIENTPOWER, \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  PAIN_SPLIT ;T7
	  ; end
