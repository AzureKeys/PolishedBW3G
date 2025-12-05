	db  50,  60,  95,  70, 120,  70  ; 465 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, STEEL  ; type
	db 60  ; catch rate
	db 161  ; base exp
	db NO_ITEM, METAL_COAT  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for MAGNETON, MAGNET_PULL, STURDY, ANALYTIC
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SANDSTORM,    SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 WILD_CHARGE,  \ ;12
		 EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, GYRO_BALL ;15
	 ; end
