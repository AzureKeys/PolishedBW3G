	db  75,  95,  60, 115,  65,  60  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 60  ; catch rate
	db 165  ; base exp
	db CHESTO_BERRY, NO_ITEM  ; held items
	dn GENDER_F75, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for CINCCINO, CUTE_CHARM, TECHNICIAN, SKILL_LINK
	db GROWTH_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, \ ;10
		 FOCUS_BLAST,  \ ;11
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 THUNDER_WAVE ;15
	 ; end
