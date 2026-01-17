	db  45,  55,  45,  75,  65,  45  ; 330 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, FLYING  ; type
	db 45  ; catch rate
	db 183  ; base exp
	db NO_ITEM, NEVERMELTICE  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for DELIBIRD, VITAL_SPIRIT, HUSTLE, INSOMNIA
	db GROWTH_FAST  ; growth rate
	dn EGG_WATER_1, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        STEEL_WING,   \ ;10
		 ACROBATICS,   WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 FLY,          SURF,         WATERFALL,    \ ;HM
		 SEED_BOMB,    \ ;T1
		 ICE_PUNCH,    ICY_WIND,     SIGNAL_BEAM,  GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 ROLLOUT,      \ ;T5
		 DOUBLE_EDGE ;T7
	 ; end
