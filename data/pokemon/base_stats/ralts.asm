	db  28,  25,  25,  40,  45,  35  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FAIRY  ; type
	db 235  ; catch rate
	db 75  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for RALTS, SYNCHRONIZE, TRACE, TRACE
	db GROWTH_SLOW  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     THUNDERBOLT,  \ ;5
		 RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
		 WILL_O_WISP,  \ ;13
	     SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 TRICK,        \ ;T5
		 KNOCK_OFF,    DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  PAIN_SPLIT ;T7
	 ; end
