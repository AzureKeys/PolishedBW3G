	db  55,  65,  35,  85,  60,  30  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 190  ; catch rate
	db 66  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for BUIZEL, SWIFT_SWIM, SWIFT_SWIM, WATER_VEIL
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HAIL,         BULK_UP,      HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL,    \ ;HM
		 AQUA_TAIL,    ICE_FANG,     \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     \ ;T4
		 DOUBLE_EDGE ;T7
	 ; end
