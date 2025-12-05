	db  68,  65,  65,  80, 125, 115  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FAIRY  ; type
	db 45  ; catch rate
	db 208  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GARDEVOIR, SYNCHRONIZE, TRACE, TRACE
	db GROWTH_SLOW  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 3 SAt

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     THUNDERBOLT,  \ ;5
		 RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  ENERGY_BALL,  \ ;11
		 WILL_O_WISP,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE ;15
	 ; end
