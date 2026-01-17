	db  90,  50,  34,  70,  60,  44  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, FLYING  ; type
	db 125  ; catch rate
	db 127  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOW  ; gender ratio, step cycles to hatch

	 ;abilities_for DRIFLOON, AFTERMATH, UNBURDEN, FLARE_BOOST
	abilities_for DRIFLOON, AFTERMATH, UNBURDEN, UNBURDEN
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   TRICK_ROOM,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
		 HEX,          \ ;12
		 WILL_O_WISP,  ACROBATICS,   EXPLOSION,    \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 THUNDER_WAVE, GYRO_BALL,    \ ;15
		 CUT,          FLY,          \ ;HM
		 SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     \ ;T3
		 TRICK,        ROLLOUT,      \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 PAIN_SPLIT ;T7
	 ; end
