	db  75,  95,  67,  83, 125,  95  ; 540 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE  ; type
	db 30  ; catch rate
	db 199  ; base exp
	db ASPEAR_BERRY, MAGMARIZER  ; held items
	dn GENDER_F25, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for MAGMORTAR, FLAME_BODY, FLAME_BODY, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    THUNDERBOLT,  \ ;5
	     EARTHQUAKE,   RETURN,       PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILL_O_WISP,  \ ;13
		 POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   OVERHEAT,     \ ;T1
		 THUNDERPUNCH, \ ;T2
		 SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, \ ;T4
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
