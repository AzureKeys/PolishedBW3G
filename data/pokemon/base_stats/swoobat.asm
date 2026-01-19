	db  67,  57,  55, 114,  77,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FLYING  ; type
	db 45  ; catch rate
	db 149  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SWOOBAT, UNAWARE, UNAWARE, UNAWARE ;, KLUTZ, SIMPLE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_FLYING  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \  ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  REFLECT,      \  ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        STEEL_WING,   DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 ACROBATICS,   \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 THUNDER_WAVE, GYRO_BALL,    \ ;15
		 FLY,          \ ;HM
		 GIGA_DRAIN,   \ ;T1
		 SHOCK_WAVE,   \ ;T2
		 SIGNAL_BEAM,  \ ;T3
		 ROOST,        ZEN_HEADBUTT, \ ;T4
		 TRICK,        \ ;T5
		 KNOCK_OFF,    DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	  ; end
