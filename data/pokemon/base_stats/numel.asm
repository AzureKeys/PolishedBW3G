	db  60,  60,  40,  35,  65,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, GROUND  ; type
	db 255  ; catch rate
	db 88  ; base exp
	db RAWST_BERRY, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	 ;abilities_for NUMEL, OBLIVIOUS, SIMPLE, OWN_TEMPO
	abilities_for NUMEL, OBLIVIOUS, OBLIVIOUS, OWN_TEMPO
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER ;14
	 ; end
