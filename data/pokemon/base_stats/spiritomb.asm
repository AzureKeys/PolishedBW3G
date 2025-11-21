	db  50,  92, 108,  35,  92, 108  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, DARK  ; type
	db 100  ; catch rate
	db 168  ; base exp
	db SMOKE_BALL, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOW  ; gender ratio, step cycles to hatch

	abilities_for SPIRITOMB, PRESSURE, PRESSURE, INFILTRATOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 Def, 1 SDf

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
