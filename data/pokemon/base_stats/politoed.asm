	db  90,  75,  75,  70,  90, 100  ; 500 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 45  ; catch rate
	db 185  ; base exp
	db NO_ITEM, KINGS_ROCK  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for POLITOED, WATER_ABSORB, DAMP, DRIZZLE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_WATER_1  ; egg groups

	ev_yield 3 SDf

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL,    \ ;HM
		 ICE_PUNCH,    ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, \ ;T4
		 EARTH_POWER,  \ ;T5
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
