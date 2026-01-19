	db  80,  70,  40, 145, 100,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, BUG  ; type
	db 75  ; catch rate
	db 173  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for ACCELGOR, HYDRATION, STICKY_HOLD, UNBURDEN
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 FOCUS_BLAST,  ENERGY_BALL,  \ ;11
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 GIGA_DRAIN,   \ ;T1
		 SIGNAL_BEAM,  \ ;T3
		 DRAIN_PUNCH,  \ ;T4
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
