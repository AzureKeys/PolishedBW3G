	db  90, 108,  80,  85, 100,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, DARK  ; type
	db 45  ; catch rate
	db 238  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SAMUROTT_HISUIAN, TORRENT, TORRENT, SHARPNESS
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FALSE_SWIPE,  SCALD,        \ ;11
		 X_SCISSOR,    DARK_PULSE,   \ ;12
		 WATER_PULSE,  \ ;13
	     POISON_JAB,   GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          SURF,         STRENGTH,     WATERFALL,    \ ;HM
		 AQUA_TAIL,    ICE_FANG,     \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SEISMIC_TOSS, \ ;T3
		 ANCIENTPOWER, \ ;T5
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
