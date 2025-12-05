	db  25,  35,  70,  45,  95,  55  ; 325 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, STEEL  ; type
	db 190  ; catch rate
	db 89  ; base exp
	db NO_ITEM, METAL_COAT  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for MAGNEMITE, MAGNET_PULL, STURDY, ANALYTIC
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SANDSTORM,    SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 WILD_CHARGE,  \ ;12
		 EXPLOSION,    \ ;13
	     SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, GYRO_BALL ;15
	 ; end
