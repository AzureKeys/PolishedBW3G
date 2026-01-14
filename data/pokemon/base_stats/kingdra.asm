	db  75,  95,  95,  85,  95,  95  ; 540 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, DRAGON  ; type
	db 45  ; catch rate
	db 207  ; base exp
	db NO_ITEM, DRAGON_SCALE  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for KINGDRA, SWIFT_SWIM, SNIPER, DAMP
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_DRAGON  ; egg groups

	ev_yield 1 Atk, 1 SAt, 1 SDf

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 SCALD,        \ ;11
		 DRAGON_PULSE, \ ;12
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         WATERFALL,    \ ;HM
		 ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 OUTRAGE,      \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
