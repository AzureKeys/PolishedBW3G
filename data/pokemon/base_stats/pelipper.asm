	db  60,  50, 100,  65,  85,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, FLYING  ; type
	db 45  ; catch rate
	db 154  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PELIPPER, KEEN_EYE, DRIZZLE, RAIN_DISH
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_FLYING  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        STEEL_WING,   \ ;10
		 SCALD,        \ ;11
		 ACROBATICS,   WATER_PULSE,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 FLY,          SURF,         WATERFALL
	  ; end
