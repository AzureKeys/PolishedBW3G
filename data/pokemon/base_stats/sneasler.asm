	db  80, 130,  60, 120,  40,  80  ; 510 BST
	 ;   hp  atk  def  spe  sat  sdf

	db POISON, FIGHTING  ; type
	db 45  ; catch rate
	db 199  ; base exp
	db GRIP_CLAW, QUICK_CLAW  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SNEASLER, PRESSURE, UNBURDEN, POISON_TOUCH
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk, 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
