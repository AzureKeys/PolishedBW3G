	db  60, 105,  60, 105, 120,  60   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db DARK, DARK   ; type
	db 45   ; catch rate
	db 179   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_SLOW   ; gender ratio, step cycles to hatch

	abilities_for ZOROARK, STENCH, WEAK_ARMOR, AFTERMATH
	  ;abilities_for ZOROARK, ILLUSION, ILLUSION, ILLUSION
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 SAt

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   CALM_MIND,    ROAR,         \ ;1
	     TOXIC,        HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \  ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \  ;7
		 SLUDGE_BOMB,  SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 SWORDS_DANCE, \ ;15
		 CUT
	  ; end
