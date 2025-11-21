	db  60,  65,  60, 110, 130,  75  ; 500 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, POISON  ; type
	db 45  ; catch rate
	db 190  ; base exp
	db NO_ITEM, SPELL_TAG  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GENGAR, CURSED_BODY, CURSED_BODY, SHADOW_TAG
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
