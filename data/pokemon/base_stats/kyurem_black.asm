	db 125, 170, 100,  95, 120,  90  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, ICE  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for KYUREM_BLACK, PRESSURE, PRESSURE, PRESSURE
	 ;abilities_for KYUREM_BLACK, TERAVOLT, TERAVOLT, TERAVOLT
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 STEEL_WING,   ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DRAGON_PULSE, \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 CUT,          FLY,          STRENGTH
	 ; end
