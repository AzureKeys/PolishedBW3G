	db  70,  70,  70,  70,  70,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, ICE  ; type
	db 45  ; catch rate
	db 147  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	 ;abilities_for CASTFORM_HAIL, FORECAST, FORECAST, FORECAST
	abilities_for CASTFORM_HAIL, PRESSURE, PRESSURE, PRESSURE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FAIRY, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 SANDSTORM,    FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 ENERGY_BALL,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 THUNDER_WAVE ;15
	 ; end
