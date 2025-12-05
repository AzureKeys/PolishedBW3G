	db  70,  40,  50,  25,  55,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, WATER  ; type
	db 255  ; catch rate
	db 75  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SPHEAL, THICK_FAT, ICE_BODY, OBLIVIOUS
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_GROUND  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL
	 ; end
