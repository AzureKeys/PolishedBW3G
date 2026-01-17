	db  64, 115,  65,  65,  83,  63  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, GHOST  ; type
	db 45  ; catch rate
	db 159  ; base exp
	db NO_ITEM, SPELL_TAG  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for BANETTE, INSOMNIA, FRISK, CURSED_BODY
	db GROWTH_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   TRICK_ROOM,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, SWORDS_DANCE, \ ;15
		 SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     GUNK_SHOT,    \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 TRICK,        \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
