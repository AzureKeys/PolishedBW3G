	db  65,  85,  70,  40,  75,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC  ; type
	db 60  ; catch rate
	db 142  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for EELEKTRIK, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_SLOW  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 WILD_CHARGE,  \ ;12
		 ACROBATICS,   \ ;13
	     U_TURN,       SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE ;15
	 ; end
