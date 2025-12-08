	db 110,  83,  70,  65, 112,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FLYING  ; type
	db 60  ; catch rate
	db 179  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F0, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for BRAVIARY_HISUIAN, KEEN_EYE, SHEER_FORCE, TINTED_LENS
	db GROWTH_SLOW  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   PSYSHOCK,     CALM_MIND,    \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   ROCK_SLIDE,   DAZZLINGLEAM, \ ;10
		 ACROBATICS,   SHADOW_CLAW,  \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 CUT,          FLY,          STRENGTH
	 ; end
