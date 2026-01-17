	db  40,  55,  80,  30,  35,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, PSYCHIC  ; type
	db 3  ; catch rate
	db 103  ; base exp
	db METAL_COAT, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for BELDUM, CLEAR_BODY, CLEAR_BODY, LIGHT_METAL
	db GROWTH_SLOW  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm ZEN_HEADBUTT, \ ;T4
	     IRON_HEAD ;T6
	 ; end
