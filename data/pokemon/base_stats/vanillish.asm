	bst 395,  51,  65,  65,  80,  75,  59
	;   bst   hp  atk  def  sat  sdf  spe

	db ICE, ICE   ; type
	db 120   ; catch rate
	db 138   ; base exp
	db NEVERMELTICE, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for VANILLISH, ICE_BODY, SNOW_CLOAK, WEAK_ARMOR
	db GROWTH_SLOW   ; growth rate
	dn EGG_MINERAL, EGG_MINERAL   ; egg groups

	ev_yield 2 SAt

	  ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \  ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  REFLECT,      \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 WATER_PULSE,  EXPLOSION,    \ ;13
	     SWAGGER,      \  ;14
		 ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 ROLLOUT,      ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	  ; end
