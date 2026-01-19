	db  40,  27,  60,  66,  37,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, FAIRY  ; type
	db 190  ; catch rate
	db 56  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for COTTONEE, PRANKSTER, INFILTRATOR, CHLOROPHYLL
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_PLANT, EGG_FAIRY  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 ENERGY_BALL,  \ ;11
	     SWAGGER,      \ ;14
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 KNOCK_OFF ;T6
	 ; end
