	db  80,  85,  75,  70, 110, 100  ; 520 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, PSYCHIC  ; type
	db 45  ; catch rate
	db 207  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for MR__RIME, TANGLED_FEET, SCREEN_CLEANER, ICE_BODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
		 RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  ENERGY_BALL,  \ ;11
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 DRAIN_PUNCH,  DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 TRICK,        \ ;T5
		 SUCKER_PUNCH, DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE
	 ; end
