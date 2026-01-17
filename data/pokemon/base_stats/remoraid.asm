	db  35,  65,  35,  65,  65,  35  ; 300 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 190  ; catch rate
	db 78  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for REMORAID, HUSTLE, SNIPER, MOODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_WATER_2  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SURF,         WATERFALL,    \ ;HM
		 SEED_BOMB,    \ ;T1
		 ICY_WIND,     SIGNAL_BEAM,  GUNK_SHOT,    \ ;T3
		 DOUBLE_EDGE ;T7
	 ; end
