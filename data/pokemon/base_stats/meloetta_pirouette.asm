	db 100, 128,  90, 128,  77,  77  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FIGHTING  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for MELOETTA_PIROUETTE, SERENE_GRACE, SERENE_GRACE, SERENE_GRACE
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 Atk, 1 Def, 1 Spe

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     THUNDERBOLT,  THUNDER,      \ ;5
		 RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  ENERGY_BALL,  \ ;11
		 ACROBATICS,   SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, SWORDS_DANCE, \ ;15
		 STRENGTH
	 ; end
