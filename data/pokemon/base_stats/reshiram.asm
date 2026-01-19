	db 100, 120, 100,  90, 150, 120  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, FIRE  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for RESHIRAM, PRESSURE, PRESSURE, PRESSURE
	 ;abilities_for RESHIRAM, TURBOBLAZE, TURBOBLAZE, TURBOBLAZE
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         \ ;9
		 STEEL_WING,   ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 DRAGON_PULSE, \ ;12
		 WILL_O_WISP,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 CUT,          FLY,          STRENGTH,     \ ;HM
		 FIRE_FANG,    OVERHEAT,     \ ;T1
		 ROOST,        ZEN_HEADBUTT, \ ;T4
		 EARTH_POWER,  ANCIENTPOWER, OUTRAGE,      \ ;T5
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
