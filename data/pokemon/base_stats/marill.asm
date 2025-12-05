	db  70,  20,  50,  40,  20,  50  ; 250 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, FAIRY  ; type
	db 190  ; catch rate
	db 58  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for MARILL, THICK_FAT, HUGE_POWER, SAP_SIPPER
	db GROWTH_FAST  ; growth rate
	dn EGG_WATER_1, EGG_FAIRY  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL
	 ; end
