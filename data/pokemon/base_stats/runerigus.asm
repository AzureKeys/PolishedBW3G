	db  58,  95, 145,  30,  50, 105  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, GROUND  ; type
	db 90  ; catch rate
	db 169  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for RUNERIGUS, WONDER_SKIN, MAGIC_GUARD, TINTED_LENS
	 ;abilities_for RUNERIGUS, WANDERING_SPIRIT, WANDERING_SPIRIT, WANDERING_SPIRIT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_INDETERMINATE  ; egg groups

	ev_yield 2 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
