	db  75,  87,  63,  98,  87,  63  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, FLYING  ; type
	db 45  ; catch rate
	db 166  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SWANNA, KEEN_EYE, BIG_PECKS, HYDRATION
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_FLYING  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   \ ;10
		 SCALD,        \ ;11
		 ACROBATICS,   WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 FLY,          SURF,         WATERFALL
	 ; end
