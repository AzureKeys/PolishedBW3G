	db  80,  70,  70,  70,  90, 100  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, GRASS  ; type
	db 45  ; catch rate
	db 216  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for LUDICOLO, SWIFT_SWIM, RAIN_DISH, OWN_TEMPO
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_PLANT  ; egg groups

	ev_yield 3 SDf

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  ENERGY_BALL,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 SURF,         STRENGTH,     WATERFALL
	 ; end
