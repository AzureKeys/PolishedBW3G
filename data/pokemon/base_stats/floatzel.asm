	db  85, 105,  55, 115,  85,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 75  ; catch rate
	db 173  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for FLOATZEL, SWIFT_SWIM, SWIFT_SWIM, WATER_VEIL
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_GROUND  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HAIL,         BULK_UP,      HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL
	 ; end
