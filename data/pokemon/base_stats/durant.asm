	db  58, 109, 112, 109,  48,  48  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, STEEL  ; type
	db 90  ; catch rate
	db 169  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for DURANT, SWARM, HUSTLE, SWARM
	 ;abilities_for DURANT, SWARM, HUSTLE, TRUANT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SANDSTORM,    AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 ENERGY_BALL,  \ ;11
		 X_SCISSOR,    \ ;12
		 SHADOW_CLAW,  \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, \ ;15
		 CUT,          STRENGTH
	 ; end
