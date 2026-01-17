	db  45,  20,  50,  50,  60, 120  ; 345 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, FLYING  ; type
	db 25  ; catch rate
	db 108  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for MANTYKE, SWIFT_SWIM, WATER_ABSORB, WATER_VEIL
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 SDf

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 SCALD,        \ ;11
		 ACROBATICS,   WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         WATERFALL,    \ ;HM
		 AQUA_TAIL,    \ ;T2
		 ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 ROOST,        \ ;T4
		 DOUBLE_EDGE ;T7
	 ; end
