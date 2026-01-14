	db  20,  40,  15,  60,  35,  35  ; 205 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC  ; type
	db 190  ; catch rate
	db 42  ; base exp
	db ORAN_BERRY, LIGHT_BALL  ; held items
	dn GENDER_F50, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for PICHU, STATIC, STATIC, LIGHTNING_ROD
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 WILD_CHARGE,  \ ;12
	     SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 SURF,         \ ;HM
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 ROLLOUT,      \ ;T5
		 PLAY_ROUGH,   \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
