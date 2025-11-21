	db  90,  30,  15,  15,  40,  20  ; 210 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FAIRY  ; type
	db 150  ; catch rate
	db 39  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F75, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for IGGLYBUFF, CUTE_CHARM, COMPETITIVE, FRISK
	db GROWTH_FAST  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
