	db  75,  95,  60, 115,  65,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 60  ; catch rate
	db 165  ; base exp
	db CHESTO_BERRY, NO_ITEM  ; held items
	dn GENDER_F75, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for CINCCINO, CUTE_CHARM, TECHNICIAN, SKILL_LINK
	db GROWTH_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
