	db  65,  45,  55,  45,  45,  70  ; 325 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 190  ; catch rate
	db 100  ; base exp
	db NO_ITEM, RAWST_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SEEL, THICK_FAT, HYDRATION, ICE_BODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_GROUND  ; egg groups

	ev_yield 1 SDf

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL
	 ; end
