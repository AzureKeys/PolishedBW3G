	db  70, 100,  70,  40, 105,  75  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, GROUND  ; type
	db 150  ; catch rate
	db 175  ; base exp
	db RAWST_BERRY, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for CAMERUPT, MAGMA_ARMOR, SOLID_ROCK, ANGER_POINT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk, 1 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
