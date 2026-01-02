	db  91,  90,  72, 108,  90, 129   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, GRASS   ; type
	db 3   ; catch rate
	db 255   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN   ; gender ratio, step cycles to hatch

	abilities_for VIRIZION, JUSTIFIED, JUSTIFIED, JUSTIFIED
	db GROWTH_SLOW   ; growth rate
	dn EGG_NONE, EGG_NONE   ; egg groups

	ev_yield 3 SDf

	  ; tm/hm learnset
	tmhm CALM_MIND,    ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \  ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \  ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \  ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \  ;9
		 FOCUS_BLAST,  ENERGY_BALL,  FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
	     GIGA_IMPACT,  SWAGGER,      \  ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	  ; end
