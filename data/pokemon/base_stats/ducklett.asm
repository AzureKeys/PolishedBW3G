	db  62,  44,  50,  55,  44,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, FLYING  ; type
	db 190  ; catch rate
	db 61  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for DUCKLETT, KEEN_EYE, BIG_PECKS, HYDRATION
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_FLYING  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   \ ;10
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 FLY,          SURF
	 ; end
