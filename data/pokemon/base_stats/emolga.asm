	db  55,  75,  60, 103,  75,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, FLYING  ; type
	db 200  ; catch rate
	db 150  ; base exp
	db CHERI_BERRY, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for EMOLGA, STATIC, STATIC, MOTOR_DRIVE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  \ ;11
		 WILD_CHARGE,  \ ;12
		 ACROBATICS,   \ ;13
	     U_TURN,       SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 CUT,          \ ;HM
		 SHOCK_WAVE,   \ ;T2
		 SIGNAL_BEAM,  \ ;T3
		 ROOST,        \ ;T4
		 KNOCK_OFF ;T6
	 ; end
