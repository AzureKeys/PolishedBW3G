	db  92, 105,  90,  98, 125,  90  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, DARK  ; type
	db 45  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for HYDREIGON, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_SLOW  ; growth rate
	dn EGG_DRAGON, EGG_DRAGON  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, FLAMETHROWER, \ ;7
		 FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        STEEL_WING,   ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   DRAGON_PULSE, \ ;12
		 ACROBATICS,   \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, \ ;15
		 FLY,          SURF,         STRENGTH
	 ; end
