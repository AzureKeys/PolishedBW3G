	db  85, 115,  80,  50, 105,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC  ; type
	db 30  ; catch rate
	db 232  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for EELEKTROSS, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_SLOW  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLASH_CANNON, FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 WILD_CHARGE,  DRAGON_PULSE, HEX,          \ ;12
		 ACROBATICS,   \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 CUT,          SURF,         STRENGTH,     WATERFALL
	 ; end
