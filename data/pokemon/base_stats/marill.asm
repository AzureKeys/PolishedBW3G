	db  70,  20,  50,  40,  20,  50  ; 250 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, FAIRY  ; type
	db 190  ; catch rate
	db 58  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FASTER  ; gender ratio, step cycles to hatch

	abilities_for MARILL, THICK_FAT, HUGE_POWER, SAP_SIPPER
	db GROWTH_FAST  ; growth rate
	dn EGG_WATER_1, EGG_FAIRY  ; egg groups

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
