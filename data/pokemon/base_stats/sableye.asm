	db  50,  75,  75,  50,  65,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, GHOST  ; type
	db 45  ; catch rate
	db 133  ; base exp
	db NO_ITEM, WIDE_LENS  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	 ;abilities_for SABLEYE, KEEN_EYE, STALL, PRANKSTER
	abilities_for SABLEYE, KEEN_EYE, KEEN_EYE, PRANKSTER
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 1 Atk, 1 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
