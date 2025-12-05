	db  60,  55, 100,  30,  65, 100  ; 410 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, GHOST  ; type
	db 60  ; catch rate
	db 113  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F75, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for CORSOLA_GALARIAN, WEAK_ARMOR, WEAK_ARMOR, CURSED_BODY
	db GROWTH_FAST  ; growth rate
	dn EGG_WATER_1, EGG_WATER_3  ; egg groups

	ev_yield 1 Def, 1 SDf

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 SCALD,        \ ;11
		 HEX,          \ ;12
		 WILL_O_WISP,  \ ;13
	     SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 SURF
	 ; end
