	db  70, 110,  70,  90, 115,  70  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIGHTING, STEEL  ; type
	db 45  ; catch rate
	db 204  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for LUCARIO, STEADFAST, INNER_FOCUS, JUSTIFIED
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE  ; egg groups

	ev_yield 1 Atk, 1 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
