	db  40,  50,  40,  90,  40,  40  ; 300 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 255  ; catch rate
	db 77  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for POLIWAG, WATER_ABSORB, DAMP, SWIFT_SWIM
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_WATER_1  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     RETURN,       DIG,          PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         WATERFALL
	 ; end
