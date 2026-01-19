	db   55, 100,  60, 110, 125,  60   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db NORMAL, GHOST   ; type
	db 45   ; catch rate
	db 179   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_SLOW   ; gender ratio, step cycles to hatch

	abilities_for ZOROARK_HISUIAN, STENCH, WEAK_ARMOR, AFTERMATH
	;abilities_for ZOROARK_HISUIAN, ILLUSION, ILLUSION, ILLUSION
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 SAt

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    ROAR,         \ ;1
	     TOXIC,        HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \  ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \  ;7
		 SLUDGE_BOMB,  SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  SHADOW_CLAW,  \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          \ ;HM
		 ICY_WIND,     \ ;T3
		 LOW_KICK,     \ ;T4
		 TRICK,        ANCIENTPOWER, \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  PAIN_SPLIT ;T7
	  ; end
