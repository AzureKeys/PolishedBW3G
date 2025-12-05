	db  70,  50,  30, 105,  95, 135  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, ICE  ; type
	db 25  ; catch rate
	db 180  ; base exp
	db NEVERMELTICE, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for CRYOGONAL, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 ACROBATICS,   WATER_PULSE,  EXPLOSION,    \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER ;14
	 ; end
