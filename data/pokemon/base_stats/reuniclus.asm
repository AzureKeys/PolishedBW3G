	db 110,  65,  75,  30, 125,  85  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, PSYCHIC  ; type
	db 50  ; catch rate
	db 221  ; base exp
	db PERSIM_BERRY, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for REUNICLUS, OVERCOAT, MAGIC_GUARD, REGENERATOR
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     THUNDER,      \ ;5
		 RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  ENERGY_BALL,  \ ;11
		 EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, GYRO_BALL,    \ ;15
		 STRENGTH
	 ; end
