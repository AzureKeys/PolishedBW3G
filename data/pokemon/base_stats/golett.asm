	db  59,  74,  50,  35,  35,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, GROUND  ; type
	db 190  ; catch rate
	db 61  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for GOLETT, IRON_FIST, IRON_FIST, NO_GUARD
	 ;abilities_for GOLETT, IRON_FIST, KLUTZ, NO_GUARD
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 HEX,          \ ;12
	     SWAGGER,      \ ;14
		 GYRO_BALL,    \ ;15
		 STRENGTH
	 ; end
