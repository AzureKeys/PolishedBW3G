	db  30,  40,  70,  60,  70,  25  ; 295 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 225  ; catch rate
	db 83  ; base exp
	db NO_ITEM, DRAGON_SCALE  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for HORSEA, SWIFT_SWIM, SNIPER, DAMP
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_DRAGON  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 SCALD,        \ ;11
		 DRAGON_PULSE, \ ;12
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         WATERFALL,    \ ;HM
		 ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 OUTRAGE,      \ ;T5
		 DOUBLE_EDGE ;T7
	 ; end
