	db 165,  75,  80,  65,  40,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 75  ; catch rate
	db 165  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for ALOMOMOLA, HYDRATION, HYDRATION, REGENERATOR
	db GROWTH_FAST  ; growth rate
	dn EGG_WATER_1, EGG_WATER_2  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 SKILL_SWAP,   SCALD,        \ ;11
		 ACROBATICS,   WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         WATERFALL
	 ; end
