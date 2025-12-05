	db 125,  58,  58,  67,  76,  76  ; 460 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, ELECTRIC  ; type
	db 75  ; catch rate
	db 156  ; base exp
	db NO_ITEM, BRIGHTPOWDER  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for LANTURN, VOLT_ABSORB, ILLUMINATE, WATER_ABSORB
	db GROWTH_SLOW  ; growth rate
	dn EGG_WATER_2, EGG_WATER_2  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
		 SCALD,        \ ;11
		 WILD_CHARGE,  \ ;12
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 SURF,         WATERFALL
	 ; end
