	db  85,  40,  70,  70,  80, 140  ; 485 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, FLYING  ; type
	db 25  ; catch rate
	db 168  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for MANTINE, SWIFT_SWIM, WATER_ABSORB, WATER_VEIL
	db GROWTH_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_WATER_1  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 SCALD,        \ ;11
		 ACROBATICS,   WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         WATERFALL
	 ; end
