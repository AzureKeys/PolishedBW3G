	db 110,  80,  90,  65,  95,  90   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ICE, WATER   ; type
	db 45   ; catch rate
	db 192   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for WALREIN, THICK_FAT, ICE_BODY, OBLIVIOUS
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_WATER_1, EGG_GROUND   ; egg groups

	ev_yield 3 HP

	  ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 SURF,         STRENGTH,     WATERFALL
	 ; end
