	db  75, 100,  63, 116,  80,  63   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC   ; type
	db 75   ; catch rate
	db 174   ; base exp
	db CHERI_BERRY, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for ZEBSTRIKA, LIGHTNING_ROD, MOTOR_DRIVE, SAP_SIPPER
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 Spe

	  ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     WILD_CHARGE,  \ ;12
		 GIGA_IMPACT,  SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE ;15
	 ; end
