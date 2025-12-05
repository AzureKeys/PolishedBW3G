	db  50,  65,  85,  55,  35,  35  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, ROCK  ; type
	db 190  ; catch rate
	db 65  ; base exp
	db HARD_STONE, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for DWEBBLE, STURDY, SHELL_ARMOR, WEAK_ARMOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_BUG, EGG_MINERAL  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     SOLAR_BEAM,   \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SANDSTORM,    AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 X_SCISSOR,    \ ;12
		 SHADOW_CLAW,  \ ;13
	     POISON_JAB,   SWAGGER,      \ ;14
		 STONE_EDGE,   SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	 ; end
