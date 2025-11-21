	db  45,  55,  45,  75,  65,  45  ; 330 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, FLYING  ; type
	db 45  ; catch rate
	db 183  ; base exp
	db NO_ITEM, NEVERMELTICE  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for DELIBIRD, VITAL_SPIRIT, HUSTLE, INSOMNIA
	db GROWTH_FAST  ; growth rate
	dn EGG_WATER_1, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
