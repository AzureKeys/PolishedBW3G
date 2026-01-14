	db  40,  35,  35,  90,  50,  40  ; 290 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, DARK  ; type
	db 255  ; catch rate
	db 69  ; base exp
	db NO_ITEM, AMULET_COIN  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for MEOWTH_ALOLAN, PICKUP, TOUGH_CLAWS, RATTLED
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DREAM_EATER,  \ ;10
		 FALSE_SWIPE,  \ ;11
		 DARK_PULSE,   \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      U_TURN,       SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 CUT,          \ ;HM
		 SEED_BOMB,    \ ;T1
		 SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     GUNK_SHOT,    \ ;T3
		 KNOCK_OFF,    PLAY_ROUGH,   \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
