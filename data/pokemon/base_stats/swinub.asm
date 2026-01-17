	db  50,  50,  40,  50,  30,  30  ; 250 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, GROUND  ; type
	db 225  ; catch rate
	db 78  ; base exp
	db NO_ITEM, RAWST_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SWINUB, OBLIVIOUS, SNOW_CLOAK, THICK_FAT
	db GROWTH_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
	     SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 STRENGTH,     \ ;HM
		 ICE_FANG,     \ ;T2
		 ICY_WIND,     \ ;T3
		 EARTH_POWER,  ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE ;T7
	 ; end
