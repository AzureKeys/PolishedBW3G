	db  60,  62,  50,  40,  62,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, ICE  ; type
	db 120  ; catch rate
	db 67  ; base exp
	db NO_ITEM, NEVERMELTICE  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SNOVER, SNOW_WARNING, SNOW_WARNING, SOUNDPROOF
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_PLANT  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 ICE_PUNCH,    ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 DOUBLE_EDGE ;T7
	 ; end
