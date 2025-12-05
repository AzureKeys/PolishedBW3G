	db  55,  63,  90,  42,  50,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, GRASS  ; type
	db 120  ; catch rate
	db 133  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for SWADLOON, LEAF_GUARD, CHLOROPHYLL, OVERCOAT
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DREAM_EATER,  \ ;10
		 ENERGY_BALL,  \ ;11
	     PAYBACK,      SWAGGER,      \ ;14
		 CUT
	 ; end
