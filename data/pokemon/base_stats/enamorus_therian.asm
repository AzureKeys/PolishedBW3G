	db  74, 115, 110,  46, 135, 100  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FAIRY, FLYING  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F100, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for ENAMORUS_THERIAN, OVERCOAT, OVERCOAT, OVERCOAT
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
		 FOCUS_BLAST,  \ ;11
		 ACROBATICS,   \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 FLY,          STRENGTH
	 ; end
