	db  38,  30,  85,  30,  55,  65   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db GHOST, GHOST   ; type
	db 190   ; catch rate
	db 61   ; base exp
	db SPELL_TAG, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW   ; gender ratio, step cycles to hatch

	abilities_for YAMASK, WONDER_SKIN, MAGIC_GUARD, TINTED_LENS
	  ;abilities_for YAMASK, MUMMY, MUMMY, MUMMY
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_MINERAL, EGG_INDETERMINATE   ; egg groups

	ev_yield 1 Def

	  ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \  ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 SHOCK_WAVE,   \ ;T2
		 ZEN_HEADBUTT, \ ;T4
		 TRICK,        \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 PAIN_SPLIT ;T7
	  ; end
