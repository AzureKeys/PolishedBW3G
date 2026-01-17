	db  70,  80,  70, 110,  80,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, GHOST  ; type
	db 75  ; catch rate
	db 187  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F100, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for FROSLASS, SNOW_CLOAK, SNOW_CLOAK, CURSED_BODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FAIRY, EGG_MINERAL  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DREAM_EATER,  \ ;10
		 HEX,          \ ;12
		 WILL_O_WISP,  WATER_PULSE,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SHOCK_WAVE,   ICE_FANG,     \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 TRICK,        ROLLOUT,      \ ;T5
		 SUCKER_PUNCH, DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
