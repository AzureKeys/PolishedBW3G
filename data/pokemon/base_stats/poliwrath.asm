	db  90,  95,  95,  70,  70,  90  ; 510 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, FIGHTING  ; type
	db 45  ; catch rate
	db 185  ; base exp
	db NO_ITEM, KINGS_ROCK  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for POLIWRATH, WATER_ABSORB, DAMP, SWIFT_SWIM
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_WATER_1  ; egg groups

	ev_yield 3 Def

	 ; tm/hm learnset
	tmhm HAIL,         BULK_UP,      HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     PAYBACK,      POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL
	 ; end
