	db 120, 112,  65,  78,  80,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, GHOST  ; type
	db 45 ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F0, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for BASCULEGION, SWIFT_SWIM, ADAPTABILITY, MOLD_BREAKER
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_2, EGG_WATER_2  ; egg groups

	ev_yield 3 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 SCALD,        \ ;11
		 HEX,          \ ;12
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 CUT,          SURF,         WATERFALL,    \ ;HM
		 AQUA_TAIL,    ICE_FANG,     \ ;T2
		 ICY_WIND,     \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 OUTRAGE,      \ ;T5
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
