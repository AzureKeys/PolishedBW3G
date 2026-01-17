	db  60,  50,  50,  50,  60,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, GRASS  ; type
	db 120  ; catch rate
	db 119  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for LOMBRE, SWIFT_SWIM, RAIN_DISH, OWN_TEMPO
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_PLANT  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 ENERGY_BALL,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 SURF,         STRENGTH,     WATERFALL,    \ ;HM
		 SEED_BOMB,    GIGA_DRAIN,   FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, \ ;T2
		 ICE_PUNCH,    ICY_WIND,     \ ;T3
		 DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
