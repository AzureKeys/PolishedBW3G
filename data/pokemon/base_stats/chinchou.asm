	db  75,  38,  38,  67,  56,  56  ; 330 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, ELECTRIC  ; type
	db 190  ; catch rate
	db 90  ; base exp
	db NO_ITEM, BRIGHTPOWDER  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for CHINCHOU, VOLT_ABSORB, ILLUMINATE, WATER_ABSORB
	db GROWTH_SLOW  ; growth rate
	dn EGG_WATER_2, EGG_WATER_2  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
		 SCALD,        \ ;11
		 WILD_CHARGE,  \ ;12
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 SURF,         WATERFALL,    \ ;HM
		 SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  HEAL_BELL ;T7
	 ; end
