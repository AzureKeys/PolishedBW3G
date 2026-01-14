	db  30,  35,  30,  80, 100,  35  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, POISON  ; type
	db 190  ; catch rate
	db 95  ; base exp
	db NO_ITEM, SPELL_TAG  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GASTLY, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   TRICK_ROOM,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  EXPLOSION,    \ ;13
	     PAYBACK,      POISON_JAB,   SWAGGER,      \ ;14
		 GIGA_DRAIN,   FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    ICY_WIND,     GUNK_SHOT,    \ ;T3
		 TRICK,        \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 PAIN_SPLIT ; T7
	 ; end
