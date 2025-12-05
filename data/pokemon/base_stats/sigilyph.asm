	db  72,  58,  80,  97, 103,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FLYING  ; type
	db 45  ; catch rate
	db 172  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SIGILYPH, WONDER_SKIN, MAGIC_GUARD, TINTED_LENS
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FLYING, EGG_FLYING  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     SOLAR_BEAM,   \ ;5
		 RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        STEEL_WING,   DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 DARK_PULSE,   \ ;12
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 FLY
	 ; end
