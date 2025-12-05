	db  79, 115,  70, 111, 125,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, FLYING  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F0, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for THUNDURUS, PRANKSTER, PRANKSTER, DEFIANT
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILD_CHARGE,  DARK_PULSE,   \ ;12
		 ACROBATICS,   \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 FLY,          STRENGTH
	 ; end
