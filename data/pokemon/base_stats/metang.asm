	db  60,  75, 100,  50,  55,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, PSYCHIC  ; type
	db 3  ; catch rate
	db 153  ; base exp
	db METAL_COAT, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for METANG, CLEAR_BODY, CLEAR_BODY, LIGHT_METAL
	db GROWTH_SLOW  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   PSYSHOCK,     \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SLUDGE_BOMB,  SANDSTORM,    SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 ROCK_SLIDE,   \ ;10
		 EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 GYRO_BALL,    \ ;15
		 CUT,          STRENGTH
	 ; end
