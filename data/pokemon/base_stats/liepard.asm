	db  64,  88,  50, 106,  88,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, DARK  ; type
	db 90  ; catch rate
	db 156  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for LIEPARD, LIMBER, UNBURDEN, PRANKSTER
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DREAM_EATER,  \ ;10
		 DARK_PULSE,   \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 CUT,          \ ;HM
		 SEED_BOMB,    FIRE_FANG,    \ ;T1
		 THUNDER_FANG, ICE_FANG,     \ ;T2
		 GUNK_SHOT,    \ ;T3
		 TRICK,        \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, PLAY_ROUGH,   \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
