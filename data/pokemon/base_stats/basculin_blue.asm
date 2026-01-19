	db  70,  92,  65,  98,  80,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 190 ; catch rate
	db 161  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for BASCULIN, ROCK_HEAD, ADAPTABILITY, MOLD_BREAKER
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_2, EGG_WATER_2  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 CUT,          SURF,         WATERFALL,    \ ;HM
		 AQUA_TAIL,    ICE_FANG,     \ ;T2
		 ICY_WIND,     \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 DOUBLE_EDGE ;T7
	 ; end
