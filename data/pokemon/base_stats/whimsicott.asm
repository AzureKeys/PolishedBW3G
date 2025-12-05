	db  60,  67,  85, 116,  77,  75   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db GRASS, FAIRY   ; type
	db 75   ; catch rate
	db 168   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for WHIMSICOTT, PRANKSTER, INFILTRATOR, CHLOROPHYLL
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_PLANT, EGG_FAIRY   ; egg groups

	ev_yield 2 Spe

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      TRICK_ROOM,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 ENERGY_BALL,  \ ;11
	     GIGA_IMPACT,  U_TURN,       SWAGGER ;14
	 ; end
