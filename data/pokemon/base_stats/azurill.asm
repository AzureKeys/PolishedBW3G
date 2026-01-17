	db  50,  20,  40,  20,  20,  40  ; 190 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FAIRY  ; type
	db 150  ; catch rate
	db 33  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F75, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for AZURILL, THICK_FAT, HUGE_POWER, SAP_SIPPER
	db GROWTH_FAST  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         WATERFALL,    \ ;HM
		 ICY_WIND,     \ ;T3
		 ROLLOUT,      \ ;T5
		 KNOCK_OFF,    DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
