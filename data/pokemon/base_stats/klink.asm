	db  40,  55,  70,  30,  45,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, STEEL  ; type
	db 130  ; catch rate
	db 60  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for KLINK, CLEAR_BODY, CLEAR_BODY, CLEAR_BODY
	 ;abilities_for KLINK, PLUS, MINUS, CLEAR_BODY
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 THUNDERBOLT,  \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 WILD_CHARGE,  \ ;12
	     SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, GYRO_BALL,    \ ;15
		 SHOCK_WAVE,   \ ;T2
		 SIGNAL_BEAM,  \ ;T3
		 ROLLOUT,      \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
