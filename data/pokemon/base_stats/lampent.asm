	db  60,  40,  60,  55,  95,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GHOST, FIRE  ; type
	db 90  ; catch rate
	db 130  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for LAMPENT, FLASH_FIRE, FLAME_BODY, INFILTRATOR
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      TRICK_ROOM,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     THIEF,        DREAM_EATER,  \ ;10
		 ENERGY_BALL,  \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  \ ;13
		 PAYBACK,      SWAGGER,      \ ;14
		 OVERHEAT,     \ ;T1
		 SHOCK_WAVE,   \ ;T2
		 TRICK,        \ ;T5
		 PAIN_SPLIT ;T7
	 ; end
