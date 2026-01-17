	db  86,  76,  86,  95, 116,  56   ; 515 BST
	  ;   hp  atk  def  spe  sat  sdf

	db BUG, FLYING   ; type
	db 30   ; catch rate
	db 198   ; base exp
	db NO_ITEM, WIDE_LENS   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for YANMEGA, SPEED_BOOST, TINTED_LENS, FRISK
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 2 Atk

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      \  ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        STEEL_WING,   DREAM_EATER,  \ ;10
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 SWORDS_DANCE, \ ;15
		 FLY,          \ ;HM
		 GIGA_DRAIN,   \ ;T1
		 SIGNAL_BEAM,  \ ;T3
		 ROOST,        \ ;T4
		 ANCIENTPOWER, \ ;T5
		 DOUBLE_EDGE ;T7
	  ; end
