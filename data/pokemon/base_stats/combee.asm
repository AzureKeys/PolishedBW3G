	db  30,  30,  42,  70,  30,  42  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, FLYING  ; type
	db 120  ; catch rate
	db 49  ; base exp
	db SWEET_HONEY, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for COMBEE, HONEY_GATHER, HONEY_GATHER, HUSTLE
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm SWIFT
	 ; end
