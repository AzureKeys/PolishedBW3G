	db  70,  83,  50,  60,  37,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FLYING  ; type
	db 190  ; catch rate
	db 70  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F0, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for RUFFLET, KEEN_EYE, SHEER_FORCE, HUSTLE
	db GROWTH_SLOW  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   ROCK_SLIDE,   \ ;10
		 ACROBATICS,   SHADOW_CLAW,  \ ;13
	     U_TURN,       SWAGGER,      \ ;14
		 CUT,          FLY,          STRENGTH
	 ; end
