	db  71, 120,  95,  99, 120,  95  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, STEEL  ; type
	db 3  ; catch rate
	db 255  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN  ; gender ratio, step cycles to hatch

	abilities_for GENESECT, DOWNLOAD, DOWNLOAD, DOWNLOAD
	db GROWTH_SLOW  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 Atk, 1 SAt, 1 Spe

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      \ ;4
		 SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, FLAMETHROWER, \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         \ ;9
		 ENERGY_BALL,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   \ ;12
		 EXPLOSION,    SHADOW_CLAW,  \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 CUT,          FLY
	 ; end
