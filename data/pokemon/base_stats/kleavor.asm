	db  70, 130,  95, 85,  45,  75  ; 500 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, ROCK  ; type
	db 25  ; catch rate
	db 200  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for KLEAVOR, SWARM, SHEER_FORCE, SHARPNESS
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
	     RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SANDSTORM,    SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        STEEL_WING,   ROCK_SLIDE,   \ ;10
		 FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    \ ;12
		 ACROBATICS,   \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT
	 ; end
