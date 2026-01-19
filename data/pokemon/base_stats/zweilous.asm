	db  72,  85,  70,  58,  65,  70   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db DRAGON, DARK   ; type
	db 45   ; catch rate
	db 147   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_SLOWEST   ; gender ratio, step cycles to hatch

	abilities_for ZWEILOUS, HUSTLE, HUSTLE, HUSTLE
	db GROWTH_SLOW   ; growth rate
	dn EGG_DRAGON, EGG_DRAGON   ; egg groups

	ev_yield 2 Atk

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 DARK_PULSE,   DRAGON_PULSE, \ ;12
	     SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_FANG,    \ ;T1
		 AQUA_TAIL,    THUNDER_FANG, SHOCK_WAVE,   ICE_FANG,     \ ;T2
		 ZEN_HEADBUTT, \ ;T4
		 EARTH_POWER,  OUTRAGE,      \ ;T5
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
