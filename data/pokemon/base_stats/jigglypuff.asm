	db 115,  45,  20,  20,  45,  25  ; 270 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, FAIRY  ; type
	db 170  ; catch rate
	db 76  ; base exp
	db ORAN_BERRY, ORAN_BERRY  ; held items
	dn GENDER_F75, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for JIGGLYPUFF, CUTE_CHARM, COMPETITIVE, FRISK
	db GROWTH_FAST  ; growth rate
	dn EGG_FAIRY, EGG_FAIRY  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
