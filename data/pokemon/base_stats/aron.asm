	db  50,  70, 100,  30,  40,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, ROCK  ; type
	db 180  ; catch rate
	db 96  ; base exp
	db HARD_STONE, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWER  ; gender ratio, step cycles to hatch

	 ;abilities_for ARON, STURDY, ROCK_HEAD, HEAVY_METAL
	abilities_for ARON, STURDY, ROCK_HEAD, ROCK_HEAD
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_MONSTER  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
