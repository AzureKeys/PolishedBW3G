	db  74, 108, 133,  32,  83,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, WATER  ; type
	db 45  ; catch rate
	db 173  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_SLOW  ; gender ratio, step cycles to hatch

	abilities_for CARRACOSTA, SOLID_ROCK, STURDY, SWIFT_SWIM
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_WATER_3  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 SURF,         STRENGTH,     WATERFALL
	 ; end
