	db  70,  65,  65,  90,  55,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 60  ; catch rate
	db 140  ; base exp
	db PECHA_BERRY, PECHA_BERRY  ; held items
	dn GENDER_F75, HATCH_FAST  ; gender ratio, step cycles to hatch

	 ;abilities_for DELCATTY, CUTE_CHARM, NORMALIZE, WONDER_SKIN
	abilities_for DELCATTY, CUTE_CHARM, CUTE_CHARM, WONDER_SKIN
	db GROWTH_FAST  ; growth rate
	dn EGG_GROUND, EGG_FAIRY  ; egg groups

	ev_yield 1 HP, 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
