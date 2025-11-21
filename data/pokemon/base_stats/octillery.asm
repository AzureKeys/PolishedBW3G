	db  75, 105,  75,  45, 105,  75  ; 480 BST
	 ;   hp  atk  def  spe  sat  sdf

if DEF(FAITHFUL)
	db WATER, WATER  ; type
else
	db WATER, FIRE  ; type
endc
	db 75  ; catch rate
	db 164  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for OCTILLERY, SUCTION_CUPS, SNIPER, MOODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_WATER_2  ; egg groups

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
