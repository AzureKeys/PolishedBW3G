	db  55,  50,  40,  75,  40,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 255  ; catch rate
	db 60  ; base exp
	db CHESTO_BERRY, NO_ITEM  ; held items
	dn GENDER_F75, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for MINCCINO, CUTE_CHARM, TECHNICIAN, SKILL_LINK
	db GROWTH_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

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
